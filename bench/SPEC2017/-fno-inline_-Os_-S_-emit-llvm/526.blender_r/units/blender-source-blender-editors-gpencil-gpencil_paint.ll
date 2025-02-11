; ModuleID = 'blender/source/blender/editors/gpencil/gpencil_paint.c'
source_filename = "blender/source/blender/editors/gpencil/gpencil_paint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.StructRNA = type opaque
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.tGPsdata = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.rctf, %struct.PointerRNA, ptr, ptr, ptr, i16, i16, [2 x i32], [2 x i32], float, float, i16, i16, double, double, double, [4 x [4 x float]], [4 x [4 x float]], [4 x float], ptr }
%struct.rctf = type { float, float, float, float }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
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
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.bGPdata = type { %struct.ID, %struct.ListBase, i32, i16, i16, ptr }
%struct.bGPDlayer = type { ptr, ptr, %struct.ListBase, ptr, i32, i16, i16, [4 x float], [128 x i8] }
%struct.bGPDframe = type { ptr, ptr, %struct.ListBase, i32, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.SpaceImage = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.ImageUser, ptr, %struct.Scopes, %struct.Histogram, ptr, [2 x float], float, float, float, float, float, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.MaskSpaceInfo }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.SpaceSeq = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, float, float, i16, i16, i16, i16, i32, float, i32, i32, ptr, %struct.SequencerScopes }
%struct.SequencerScopes = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SpaceClip = type { ptr, ptr, %struct.ListBase, i32, float, float, float, float, float, %struct.MovieClipUser, ptr, %struct.MovieClipScopes, i32, i16, i16, i32, [2 x float], float, float, i32, [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i32, i32, [2 x float], %struct.MaskSpaceInfo }
%struct.MovieClipUser = type { i32, i16, i16 }
%struct.MovieClipScopes = type { i16, i16, i32, i32, i32, %struct.MovieTrackingMarker, ptr, ptr, [2 x float], i16, i16, i32, ptr, ptr, [2 x float] }
%struct.MovieTrackingMarker = type { [2 x float], [4 x [2 x float]], [2 x float], [2 x float], i32, i32 }
%struct.MovieClip = type { %struct.ID, ptr, [1024 x i8], i32, i32, [2 x i32], float, float, ptr, ptr, ptr, %struct.MovieTracking, ptr, %struct.MovieClipProxy, i32, i32, i32, i32, %struct.ColorManagedColorspaceSettings }
%struct.MovieTracking = type { %struct.MovieTrackingSettings, %struct.MovieTrackingCamera, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, %struct.MovieTrackingStabilization, ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.MovieTrackingDopesheet }
%struct.MovieTrackingSettings = type { i32, i16, i16, float, i16, i16, i16, i16, i16, i16, float, i16, i16, i32, i32, i32, i16, i16, float, i32, i32, float, float, i32 }
%struct.MovieTrackingCamera = type { ptr, i16, i16, float, float, float, i16, i16, [2 x float], float, float, float, float, float }
%struct.MovieTrackingReconstruction = type { i32, float, i32, i32, ptr }
%struct.MovieTrackingStabilization = type { i32, i32, i32, float, ptr, float, float, float, i32, i32, float }
%struct.MovieTrackingDopesheet = type { i32, i16, i16, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.MovieClipProxy = type { [768 x i8], i16, i16, i16, i16 }
%struct.tGPspoint = type { i32, i32, float, float }
%struct.bGPDstroke = type { ptr, ptr, ptr, ptr, i32, i16, i16, double }
%struct.bGPDspoint = type { float, float, float, float, float }
%struct.wmTabletData = type { i32, float, float, float }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }

@.str = private unnamed_addr constant [19 x i8] c"Grease Pencil Draw\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"GPENCIL_OT_draw\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Make annotations on the active data\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@prop_gpencil_drawmodes = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.42, i32 0, ptr @.str.43, ptr @.str.44 }, %struct.EnumPropertyItem { i32 2, ptr @.str.45, i32 0, ptr @.str.46, ptr @.str.47 }, %struct.EnumPropertyItem { i32 3, ptr @.str.48, i32 0, ptr @.str.49, ptr @.str.50 }, %struct.EnumPropertyItem { i32 1, ptr @.str.51, i32 0, ptr @.str.52, ptr @.str.53 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.4 = private unnamed_addr constant [5 x i8] c"Mode\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Way to interpret mouse movements\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"stroke\00", align 1
@RNA_OperatorStrokeElement = external global %struct.StructRNA, align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Stroke\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c"mouse\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"pressure\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"is_start\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [21 x i8] c"GPencil Drawing Data\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.19 = private unnamed_addr constant [8 x i8] c"GPencil\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"gp_session_strokebuffer\00", align 1
@MEM_reallocN_id = external local_unnamed_addr global ptr, align 8
@__func__.gp_stroke_addpoint = private unnamed_addr constant [19 x i8] c"gp_stroke_addpoint\00", align 1
@.str.21 = private unnamed_addr constant [61 x i8] c"Error: No valid points in stroke buffer to convert (tot=%d)\0A\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"gp_stroke\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"gp_stroke_points\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.24 = private unnamed_addr constant [13 x i8] c"depth_points\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"GP_Layer\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"Cannot paint stroke\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.34 = private unnamed_addr constant [63 x i8] c"Grease Pencil: Drawing/erasing stroke... Release to end stroke\00", align 1
@.str.35 = private unnamed_addr constant [82 x i8] c"Grease Pencil Erase Session: Hold and drag LMB or RMB to erase | ESC/Enter to end\00", align 1
@.str.36 = private unnamed_addr constant [73 x i8] c"Grease Pencil Line Session: Hold and drag LMB to draw | ESC/Enter to end\00", align 1
@.str.37 = private unnamed_addr constant [77 x i8] c"Grease Pencil Freehand Session: Hold and drag LMB to draw | ESC/Enter to end\00", align 1
@.str.38 = private unnamed_addr constant [40 x i8] c"Grease Pencil Session: ESC/Enter to end\00", align 1
@.str.39 = private unnamed_addr constant [41 x i8] c"Grease Pencil operator is already active\00", align 1
@.str.40 = private unnamed_addr constant [47 x i8] c"Failed to find Grease Pencil data to draw into\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"Active region not set\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"DRAW\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"Draw Freehand\00", align 1
@.str.44 = private unnamed_addr constant [24 x i8] c"Draw freehand stroke(s)\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"DRAW_STRAIGHT\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"Draw Straight Lines\00", align 1
@.str.47 = private unnamed_addr constant [30 x i8] c"Draw straight line segment(s)\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"DRAW_POLY\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"Draw Poly Line\00", align 1
@.str.50 = private unnamed_addr constant [63 x i8] c"Click to place endpoints of straight line segments (connected)\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"ERASER\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"Eraser\00", align 1
@.str.53 = private unnamed_addr constant [28 x i8] c"Erase Grease Pencil strokes\00", align 1
@str = private unnamed_addr constant [27 x i8] c"GPencil - Starting Drawing\00", align 1
@str.54 = private unnamed_addr constant [20 x i8] c"\09GP - no valid data\00", align 1
@str.55 = private unnamed_addr constant [25 x i8] c"\09\09\09\09GP - add error done!\00", align 1
@str.56 = private unnamed_addr constant [45 x i8] c"Error: No frame created (gpencil_paint_init)\00", align 1
@str.57 = private unnamed_addr constant [36 x i8] c"Error: Cannot paint on locked layer\00", align 1
@str.58 = private unnamed_addr constant [47 x i8] c"Error: Grease-Pencil Paint - Add Point Invalid\00", align 1
@str.59 = private unnamed_addr constant [77 x i8] c"Error: In active view (sequencer), active mode doesn't support Grease Pencil\00", align 1
@str.60 = private unnamed_addr constant [64 x i8] c"Error: Current context doesn't allow for any Grease Pencil data\00", align 1
@str.61 = private unnamed_addr constant [81 x i8] c"Error: 3D-View active region doesn't have any region data, so cannot be drawable\00", align 1
@str.62 = private unnamed_addr constant [61 x i8] c"Error: Active view not appropriate for Grease Pencil drawing\00", align 1
@str.63 = private unnamed_addr constant [35 x i8] c"Error: No active view for painting\00", align 1
@str.64 = private unnamed_addr constant [36 x i8] c"\09\09\09GP - wrong area execution abort!\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPENCIL_OT_draw(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @gpencil_draw_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @gpencil_draw_invoke, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @gpencil_draw_modal, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @gpencil_draw_cancel, ptr %7, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @gpencil_draw_poll, ptr %8, align 8, !tbaa !19
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 6, ptr %9, align 8, !tbaa !20
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !21
  %12 = tail call ptr @RNA_def_enum(ptr noundef %11, ptr noundef nonnull @.str.3, ptr noundef nonnull @prop_gpencil_drawmodes, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #14
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %12, ptr %13, align 8, !tbaa !22
  %14 = load ptr, ptr %10, align 8, !tbaa !21
  %15 = tail call ptr @RNA_def_collection_runtime(ptr noundef %14, ptr noundef nonnull @.str.6, ptr noundef nonnull @RNA_OperatorStrokeElement, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @gpencil_draw_exec(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca %struct.CollectionPropertyIterator, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca [2 x float], align 8
  %6 = tail call fastcc i32 @gpencil_draw_init(ptr noundef %0, ptr noundef %1) #15, !range !23
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !24
  br i1 %7, label %10, label %14

10:                                               ; preds = %2
  %11 = icmp eq ptr %9, null
  br i1 %11, label %61, label %12

12:                                               ; preds = %10
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !26
  tail call void %13(ptr noundef nonnull %9) #14
  br label %61

14:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %3) #16
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !27
  call void @RNA_collection_begin(ptr noundef %16, ptr noundef nonnull @.str.6, ptr noundef nonnull %3) #14
  %17 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %3, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !28
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %60, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %3, i64 0, i32 6
  %22 = getelementptr inbounds %struct.tGPsdata, ptr %9, i64 0, i32 13
  %23 = getelementptr inbounds %struct.tGPsdata, ptr %9, i64 0, i32 15
  %24 = getelementptr inbounds %struct.tGPsdata, ptr %9, i64 0, i32 19
  %25 = getelementptr inbounds %struct.tGPsdata, ptr %9, i64 0, i32 20
  %26 = getelementptr inbounds %struct.tGPsdata, ptr %9, i64 0, i32 18
  %27 = getelementptr inbounds %struct.tGPsdata, ptr %9, i64 0, i32 12
  %28 = getelementptr inbounds %struct.tGPsdata, ptr %9, i64 0, i32 14
  %29 = getelementptr inbounds %struct.tGPsdata, ptr %9, i64 0, i32 16
  %30 = getelementptr inbounds %struct.tGPsdata, ptr %9, i64 0, i32 21
  br label %31

31:                                               ; preds = %20, %57
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %21, i64 24, i1 false), !tbaa.struct !33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @RNA_float_get_array(ptr noundef nonnull %4, ptr noundef nonnull @.str.9, ptr noundef nonnull %5) #14
  %32 = load <2 x float>, ptr %5, align 8, !tbaa !34
  %33 = fptosi <2 x float> %32 to <2 x i32>
  store <2 x i32> %33, ptr %22, align 4, !tbaa !36
  %34 = call float @RNA_float_get(ptr noundef nonnull %4, ptr noundef nonnull @.str.10) #14
  store float %34, ptr %23, align 4, !tbaa !37
  %35 = call float @RNA_float_get(ptr noundef nonnull %4, ptr noundef nonnull @.str.11) #14
  %36 = fpext float %35 to double
  %37 = load double, ptr %24, align 8, !tbaa !41
  %38 = fadd double %37, %36
  store double %38, ptr %25, align 8, !tbaa !42
  %39 = call i32 @RNA_boolean_get(ptr noundef nonnull %4, ptr noundef nonnull @.str.12) #14
  %40 = icmp ne i32 %39, 0
  %41 = load i16, ptr %26, align 2, !tbaa !43
  %42 = and i16 %41, 1
  %43 = icmp eq i16 %42, 0
  %44 = select i1 %40, i1 %43, i1 false
  br i1 %44, label %45, label %48

45:                                               ; preds = %31
  call fastcc void @gp_paint_strokeend(ptr noundef nonnull %9) #15
  %46 = load i16, ptr %27, align 2, !tbaa !44
  call fastcc void @gp_paint_initstroke(ptr noundef nonnull %9, i16 noundef signext %46) #15
  %47 = load i16, ptr %26, align 2, !tbaa !43
  br label %48

48:                                               ; preds = %45, %31
  %49 = phi i16 [ %47, %45 ], [ %41, %31 ]
  %50 = and i16 %49, 1
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %48
  %53 = and i16 %49, -2
  store i16 %53, ptr %26, align 2, !tbaa !43
  %54 = load <2 x i32>, ptr %22, align 4, !tbaa !36
  store <2 x i32> %54, ptr %28, align 4, !tbaa !36
  %55 = load float, ptr %23, align 4, !tbaa !37
  store float %55, ptr %29, align 8, !tbaa !45
  %56 = load double, ptr %25, align 8, !tbaa !42
  store double %56, ptr %30, align 8, !tbaa !46
  br label %57

57:                                               ; preds = %52, %48
  call fastcc void @gpencil_draw_apply(ptr noundef %1, ptr noundef nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  call void @RNA_property_collection_next(ptr noundef nonnull %3) #14
  %58 = load i32, ptr %17, align 8, !tbaa !28
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %31, !llvm.loop !47

60:                                               ; preds = %57, %14
  call void @RNA_property_collection_end(ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %3) #16
  call fastcc void @gpencil_draw_exit(ptr noundef %0, ptr noundef %1) #15
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 369098753, ptr noundef null) #14
  br label %61

61:                                               ; preds = %10, %12, %60
  %62 = phi i32 [ 4, %60 ], [ 2, %12 ], [ 2, %10 ]
  ret i32 %62
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @gpencil_draw_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_wm_window(ptr noundef %0) #14
  %5 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !49
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %10

10:                                               ; preds = %8, %3
  %11 = tail call fastcc i32 @gpencil_draw_init(ptr noundef %0, ptr noundef %1) #15, !range !23
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !24
  br i1 %12, label %15, label %25

15:                                               ; preds = %10
  %16 = icmp eq ptr %14, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !26
  tail call void %18(ptr noundef nonnull %14) #14
  br label %19

19:                                               ; preds = %17, %15
  %20 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !49
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %42, label %23

23:                                               ; preds = %19
  %24 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.54)
  br label %42

25:                                               ; preds = %10
  %26 = getelementptr inbounds %struct.tGPsdata, ptr %14, i64 0, i32 12
  %27 = load i16, ptr %26, align 2, !tbaa !44
  %28 = icmp eq i16 %27, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  tail call fastcc void @gpencil_draw_toggle_eraser_cursor(ptr noundef %0, ptr noundef nonnull %14, i16 noundef signext 1) #15
  %30 = load i16, ptr %26, align 2, !tbaa !44
  %31 = icmp eq i16 %30, 1
  br i1 %31, label %33, label %32

32:                                               ; preds = %25, %29
  br label %33

33:                                               ; preds = %29, %32
  %34 = phi i32 [ 12, %32 ], [ 6, %29 ]
  tail call void @WM_cursor_modal_set(ptr noundef %4, i32 noundef %34) #14
  %35 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %36 = load i16, ptr %35, align 2, !tbaa !51
  %37 = icmp eq i16 %36, 1
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.tGPsdata, ptr %14, i64 0, i32 11
  store i16 1, ptr %39, align 8, !tbaa !53
  tail call fastcc void @gpencil_draw_apply_event(ptr noundef nonnull %1, ptr noundef nonnull %2) #15
  br label %40

40:                                               ; preds = %33, %38
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 369098753, ptr noundef null) #14
  %41 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef nonnull %1) #14
  br label %42

42:                                               ; preds = %19, %23, %40
  %43 = phi i32 [ 1, %40 ], [ 2, %23 ], [ 2, %19 ]
  ret i32 %43
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @gpencil_draw_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !24
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !54
  %8 = add i16 %7, -32
  %9 = icmp ult i16 %8, 224
  %10 = add i16 %7, -300
  %11 = icmp ult i16 %10, 20
  %12 = or i1 %9, %11
  %13 = add nsw i16 %7, -137
  %14 = icmp ult i16 %13, 4
  %15 = select i1 %14, i32 8, i32 1
  %16 = select i1 %12, i32 %15, i32 8
  switch i16 %7, label %19 [
    i16 220, label %17
    i16 163, label %17
    i16 218, label %17
    i16 221, label %17
  ]

17:                                               ; preds = %3, %3, %3, %3
  %18 = getelementptr inbounds %struct.tGPsdata, ptr %5, i64 0, i32 11
  store i16 3, ptr %18, align 8, !tbaa !53
  br label %19

19:                                               ; preds = %3, %17
  %20 = phi i32 [ 4, %17 ], [ %16, %3 ]
  switch i16 %7, label %51 [
    i16 1, label %21
    i16 3, label %21
  ]

21:                                               ; preds = %19, %19
  %22 = getelementptr inbounds %struct.tGPsdata, ptr %5, i64 0, i32 11
  %23 = load i16, ptr %22, align 8, !tbaa !53
  %24 = icmp eq i16 %23, 1
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = load ptr, ptr %5, align 8, !tbaa !55
  %27 = getelementptr inbounds %struct.Scene, ptr %26, i64 0, i32 20
  %28 = load ptr, ptr %27, align 8, !tbaa !56
  %29 = getelementptr inbounds %struct.ToolSettings, ptr %28, i64 0, i32 15
  %30 = load i8, ptr %29, align 2, !tbaa !76
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.tGPsdata, ptr %5, i64 0, i32 12
  %33 = load i16, ptr %32, align 2, !tbaa !44
  %34 = icmp eq i16 %33, 3
  %35 = zext i1 %34 to i8
  %36 = or i8 %31, %35
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %25
  tail call fastcc void @gpencil_stroke_end(ptr noundef nonnull %1) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 369098753, ptr noundef null) #14
  br label %51

39:                                               ; preds = %25
  store i16 3, ptr %22, align 8, !tbaa !53
  br label %51

40:                                               ; preds = %21
  %41 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %42 = load i16, ptr %41, align 2, !tbaa !51
  %43 = icmp eq i16 %42, 1
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = tail call fastcc ptr @gpencil_stroke_begin(ptr noundef %0, ptr noundef nonnull %1) #15
  %46 = getelementptr inbounds %struct.tGPsdata, ptr %45, i64 0, i32 11
  %47 = load i16, ptr %46, align 8, !tbaa !53
  %48 = icmp eq i16 %47, 2
  %49 = select i1 %48, i32 2, i32 %20
  br label %51

50:                                               ; preds = %40
  store i16 0, ptr %22, align 8, !tbaa !53
  br label %51

51:                                               ; preds = %44, %38, %39, %19, %50
  %52 = phi i32 [ %20, %50 ], [ %20, %19 ], [ 1, %38 ], [ 4, %39 ], [ %49, %44 ]
  %53 = phi ptr [ %5, %50 ], [ %5, %19 ], [ %5, %38 ], [ %5, %39 ], [ %45, %44 ]
  %54 = getelementptr inbounds %struct.tGPsdata, ptr %53, i64 0, i32 11
  %55 = load i16, ptr %54, align 8, !tbaa !53
  %56 = icmp eq i16 %55, 1
  br i1 %56, label %57, label %86

57:                                               ; preds = %51
  %58 = load i16, ptr %6, align 8, !tbaa !54
  switch i16 %58, label %59 [
    i16 4, label %64
    i16 17, label %64
  ]

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.tGPsdata, ptr %53, i64 0, i32 18
  %61 = load i16, ptr %60, align 2, !tbaa !43
  %62 = and i16 %61, 1
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %57, %57, %59
  tail call fastcc void @gpencil_draw_apply_event(ptr noundef nonnull %1, ptr noundef nonnull %2) #15
  %65 = load i16, ptr %54, align 8, !tbaa !53
  %66 = icmp eq i16 %65, 2
  br i1 %66, label %67, label %86

67:                                               ; preds = %64
  %68 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.55)
  br label %86

69:                                               ; preds = %59
  %70 = getelementptr inbounds %struct.tGPsdata, ptr %53, i64 0, i32 12
  %71 = load i16, ptr %70, align 2, !tbaa !44
  %72 = icmp eq i16 %71, 1
  br i1 %72, label %73, label %86

73:                                               ; preds = %69
  switch i16 %58, label %86 [
    i16 11, label %74
    i16 164, label %74
    i16 10, label %78
    i16 162, label %78
  ]

74:                                               ; preds = %73, %73
  %75 = getelementptr inbounds %struct.tGPsdata, ptr %53, i64 0, i32 17
  %76 = load i16, ptr %75, align 4, !tbaa !83
  %77 = add i16 %76, 5
  store i16 %77, ptr %75, align 4, !tbaa !83
  br label %83

78:                                               ; preds = %73, %73
  %79 = getelementptr inbounds %struct.tGPsdata, ptr %53, i64 0, i32 17
  %80 = load i16, ptr %79, align 4, !tbaa !83
  %81 = add i16 %80, -5
  %82 = tail call i16 @llvm.smax.i16(i16 %81, i16 0)
  store i16 %82, ptr %79, align 4
  br label %83

83:                                               ; preds = %78, %74
  %84 = getelementptr inbounds %struct.tGPsdata, ptr %53, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !84
  tail call void @ED_region_tag_redraw(ptr noundef %85) #14
  br label %86

86:                                               ; preds = %73, %69, %64, %67, %83, %51
  %87 = phi i32 [ 2, %67 ], [ 1, %83 ], [ %52, %51 ], [ 1, %64 ], [ 1, %73 ], [ 1, %69 ]
  %88 = getelementptr inbounds %struct.tGPsdata, ptr %53, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !85
  %90 = tail call fastcc zeroext i8 @gpencil_area_exists(ptr noundef %0, ptr noundef %89) #15, !range !86
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %86
  tail call fastcc void @gpencil_draw_status_indicators(ptr noundef nonnull %53) #15
  switch i32 %87, label %95 [
    i32 4, label %93
    i32 2, label %94
  ]

93:                                               ; preds = %92
  tail call fastcc void @gpencil_draw_exit(ptr noundef %0, ptr noundef nonnull %1) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 369098753, ptr noundef null) #14
  br label %95

94:                                               ; preds = %86, %92
  tail call fastcc void @gpencil_draw_exit(ptr noundef %0, ptr noundef nonnull %1) #15
  br label %95

95:                                               ; preds = %92, %94, %93
  %96 = phi i32 [ %87, %92 ], [ 2, %94 ], [ 4, %93 ]
  ret i32 %96
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gpencil_draw_cancel(ptr noundef %0, ptr nocapture noundef %1) #0 {
  tail call fastcc void @gpencil_draw_exit(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @gpencil_draw_poll(ptr noundef %0) #0 {
  %2 = tail call i32 @ED_operator_regionactive(ptr noundef %0) #14
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @ED_gpencil_data_get_pointers(ptr noundef %0, ptr noundef null) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @ED_gpencil_session_active() #14
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1, %4, %7
  %11 = phi ptr [ @.str.39, %7 ], [ @.str.40, %4 ], [ @.str.41, %1 ]
  tail call void @CTX_wm_operator_poll_msg_set(ptr noundef %0, ptr noundef nonnull %11) #14
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi i32 [ 1, %7 ], [ 0, %10 ]
  ret i32 %13
}

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RNA_def_collection_runtime(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @gpencil_draw_init(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !27
  %5 = tail call i32 @RNA_enum_get(ptr noundef %4, ptr noundef nonnull @.str.3) #14
  %6 = tail call fastcc ptr @gp_session_initpaint(ptr noundef %0) #15
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %6, ptr %7, align 8, !tbaa !24
  %8 = icmp eq ptr %6, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.tGPsdata, ptr %6, i64 0, i32 11
  %11 = load i16, ptr %10, align 8, !tbaa !53
  %12 = icmp eq i16 %11, 2
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %2
  tail call fastcc void @gpencil_draw_exit(ptr noundef %0, ptr noundef nonnull %1) #15
  br label %22

14:                                               ; preds = %9
  %15 = trunc i32 %5 to i16
  tail call fastcc void @gp_paint_initstroke(ptr noundef nonnull %6, i16 noundef signext %15) #15
  %16 = load i16, ptr %10, align 8, !tbaa !53
  %17 = icmp eq i16 %16, 2
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  tail call fastcc void @gpencil_draw_exit(ptr noundef %0, ptr noundef nonnull %1) #15
  br label %22

19:                                               ; preds = %14
  %20 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 50), align 8, !tbaa !87
  %21 = getelementptr inbounds %struct.tGPsdata, ptr %6, i64 0, i32 17
  store i16 %20, ptr %21, align 4, !tbaa !83
  br label %22

22:                                               ; preds = %19, %18, %13
  %23 = phi i32 [ 0, %13 ], [ 0, %18 ], [ 1, %19 ]
  ret i32 %23
}

; Function Attrs: optsize
declare void @RNA_collection_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: optsize
declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gp_paint_strokeend(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @gpencil_project_check(ptr noundef %0) #15, !range !86
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %21, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !85
  %7 = getelementptr inbounds %struct.ScrArea, ptr %6, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !91
  %9 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !93
  %11 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !84
  tail call void @view3d_region_operator_needs_opengl(ptr noundef %10, ptr noundef %12) #14
  %13 = load ptr, ptr %0, align 8, !tbaa !55
  %14 = load ptr, ptr %11, align 8, !tbaa !84
  %15 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !94
  %17 = getelementptr inbounds %struct.bGPdata, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !95
  %19 = lshr i32 %18, 6
  %20 = and i32 %19, 1
  tail call void @ED_view3d_autodist_init(ptr noundef %13, ptr noundef %14, ptr noundef %8, i32 noundef %20) #14
  br label %21

21:                                               ; preds = %4, %1
  %22 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !94
  %24 = getelementptr inbounds %struct.bGPdata, ptr %23, i64 0, i32 4
  %25 = load i16, ptr %24, align 2, !tbaa !97
  %26 = icmp sgt i16 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  tail call fastcc void @gp_stroke_smooth(ptr noundef nonnull %0) #15
  tail call fastcc void @gp_stroke_simplify(ptr noundef nonnull %0) #15
  tail call fastcc void @gp_stroke_newfrombuffer(ptr noundef nonnull %0) #15
  br label %28

28:                                               ; preds = %27, %21
  tail call fastcc void @gp_session_validatebuffer(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gp_paint_initstroke(ptr noundef %0, i16 noundef signext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !94
  %5 = tail call ptr @gpencil_layer_getactive(ptr noundef %4) #14
  %6 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 9
  store ptr %5, ptr %6, align 8, !tbaa !98
  %7 = icmp eq ptr %5, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !94
  %10 = tail call ptr @gpencil_layer_addnew(ptr noundef %9, ptr noundef nonnull @.str.25, i32 noundef 1) #14
  store ptr %10, ptr %6, align 8, !tbaa !98
  %11 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 24, i64 3
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fcmp une float %12, 0.000000e+00
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 24
  %16 = getelementptr inbounds %struct.bGPDlayer, ptr %10, i64 0, i32 7
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %16, ptr noundef nonnull %15) #15
  %17 = load ptr, ptr %6, align 8, !tbaa !98
  br label %18

18:                                               ; preds = %8, %14, %2
  %19 = phi ptr [ %10, %8 ], [ %17, %14 ], [ %5, %2 ]
  %20 = getelementptr inbounds %struct.bGPDlayer, ptr %19, i64 0, i32 4
  %21 = load i32, ptr %20, align 8, !tbaa !99
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 11
  store i16 2, ptr %25, align 8, !tbaa !53
  %26 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !49
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %145, label %29

29:                                               ; preds = %24
  %30 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.57)
  br label %145

31:                                               ; preds = %18
  %32 = load ptr, ptr %0, align 8, !tbaa !55
  %33 = getelementptr inbounds %struct.Scene, ptr %32, i64 0, i32 22, i32 5
  %34 = load i32, ptr %33, align 8, !tbaa !101
  %35 = tail call ptr @gpencil_layer_getframe(ptr noundef nonnull %19, i32 noundef %34, i16 noundef signext 1) #14
  %36 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 10
  store ptr %35, ptr %36, align 8, !tbaa !102
  %37 = icmp eq ptr %35, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 11
  store i16 2, ptr %39, align 8, !tbaa !53
  %40 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !49
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %145, label %43

43:                                               ; preds = %38
  %44 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.56)
  br label %145

45:                                               ; preds = %31
  %46 = getelementptr inbounds %struct.bGPDframe, ptr %35, i64 0, i32 4
  %47 = load i32, ptr %46, align 4, !tbaa !103
  %48 = or i32 %47, 1
  store i32 %48, ptr %46, align 4, !tbaa !103
  %49 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 12
  store i16 %1, ptr %49, align 2, !tbaa !44
  %50 = icmp eq i16 %1, 1
  %51 = load ptr, ptr %3, align 8, !tbaa !94
  br i1 %50, label %52, label %71

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.bGPdata, ptr %51, i64 0, i32 4
  %54 = load i16, ptr %53, align 2, !tbaa !97
  %55 = or i16 %54, -32768
  store i16 %55, ptr %53, align 2, !tbaa !97
  %56 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !85
  %58 = getelementptr inbounds %struct.ScrArea, ptr %57, i64 0, i32 8
  %59 = load i8, ptr %58, align 8, !tbaa !105
  %60 = icmp eq i8 %59, 1
  br i1 %60, label %61, label %71

61:                                               ; preds = %52
  %62 = load ptr, ptr %6, align 8, !tbaa !98
  %63 = getelementptr inbounds %struct.bGPDlayer, ptr %62, i64 0, i32 4
  %64 = load i32, ptr %63, align 8, !tbaa !99
  %65 = and i32 %64, 128
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 18
  %69 = load i16, ptr %68, align 2, !tbaa !43
  %70 = or i16 %69, 4
  store i16 %70, ptr %68, align 2, !tbaa !43
  br label %71

71:                                               ; preds = %52, %67, %61, %45
  %72 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 18
  %73 = load i16, ptr %72, align 2, !tbaa !43
  %74 = or i16 %73, 1
  store i16 %74, ptr %72, align 2, !tbaa !43
  %75 = getelementptr inbounds %struct.bGPdata, ptr %51, i64 0, i32 2
  %76 = load i32, ptr %75, align 8, !tbaa !95
  %77 = and i32 %76, 16
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %104

79:                                               ; preds = %71
  %80 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !85
  %82 = getelementptr inbounds %struct.ScrArea, ptr %81, i64 0, i32 8
  %83 = load i8, ptr %82, align 8, !tbaa !105
  %84 = icmp eq i8 %83, 1
  br i1 %84, label %85, label %145

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !84
  %88 = getelementptr inbounds %struct.ARegion, ptr %87, i64 0, i32 30
  %89 = load ptr, ptr %88, align 8, !tbaa !106
  %90 = getelementptr inbounds %struct.RegionView3D, ptr %89, i64 0, i32 25
  %91 = load i8, ptr %90, align 1, !tbaa !109
  %92 = icmp eq i8 %91, 2
  br i1 %92, label %93, label %145

93:                                               ; preds = %85
  %94 = getelementptr inbounds %struct.ScrArea, ptr %81, i64 0, i32 19
  %95 = load ptr, ptr %94, align 8, !tbaa !91
  %96 = load ptr, ptr %0, align 8, !tbaa !55
  %97 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 6
  tail call void @ED_view3d_calc_camera_border(ptr noundef %96, ptr noundef nonnull %87, ptr noundef %95, ptr noundef nonnull %89, ptr noundef nonnull %97, i8 noundef zeroext 1) #14
  %98 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 5
  store ptr %97, ptr %98, align 8, !tbaa !111
  %99 = load ptr, ptr %3, align 8, !tbaa !94
  %100 = getelementptr inbounds %struct.bGPdata, ptr %99, i64 0, i32 2
  %101 = load i32, ptr %100, align 8, !tbaa !95
  %102 = and i32 %101, 16
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %145, label %104

104:                                              ; preds = %71, %93
  %105 = phi ptr [ %99, %93 ], [ %51, %71 ]
  %106 = phi i32 [ %101, %93 ], [ %76, %71 ]
  %107 = getelementptr inbounds %struct.bGPdata, ptr %105, i64 0, i32 2
  %108 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !85
  %110 = getelementptr inbounds %struct.ScrArea, ptr %109, i64 0, i32 8
  %111 = load i8, ptr %110, align 8, !tbaa !105
  switch i8 %111, label %145 [
    i8 1, label %112
    i8 16, label %116
    i8 8, label %120
    i8 6, label %124
    i8 20, label %141
  ]

112:                                              ; preds = %104
  %113 = getelementptr inbounds %struct.bGPdata, ptr %105, i64 0, i32 4
  %114 = load i16, ptr %113, align 2, !tbaa !97
  %115 = or i16 %114, 1
  store i16 %115, ptr %113, align 2, !tbaa !97
  br label %145

116:                                              ; preds = %104
  %117 = getelementptr inbounds %struct.bGPdata, ptr %105, i64 0, i32 4
  %118 = load i16, ptr %117, align 2, !tbaa !97
  %119 = or i16 %118, 2
  store i16 %119, ptr %117, align 2, !tbaa !97
  br label %145

120:                                              ; preds = %104
  %121 = getelementptr inbounds %struct.bGPdata, ptr %105, i64 0, i32 4
  %122 = load i16, ptr %121, align 2, !tbaa !97
  %123 = or i16 %122, 2
  store i16 %123, ptr %121, align 2, !tbaa !97
  br label %145

124:                                              ; preds = %104
  %125 = getelementptr inbounds %struct.ScrArea, ptr %109, i64 0, i32 19
  %126 = load ptr, ptr %125, align 8, !tbaa !91
  %127 = icmp eq ptr %126, null
  br i1 %127, label %132, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.SpaceImage, ptr %126, i64 0, i32 5
  %130 = load ptr, ptr %129, align 8, !tbaa !112
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %137

132:                                              ; preds = %128, %124
  %133 = getelementptr inbounds %struct.bGPdata, ptr %105, i64 0, i32 4
  %134 = load i16, ptr %133, align 2, !tbaa !97
  %135 = and i16 %134, -3
  store i16 %135, ptr %133, align 2, !tbaa !97
  %136 = and i32 %106, -17
  store i32 %136, ptr %107, align 8, !tbaa !95
  br label %145

137:                                              ; preds = %128
  %138 = getelementptr inbounds %struct.bGPdata, ptr %105, i64 0, i32 4
  %139 = load i16, ptr %138, align 2, !tbaa !97
  %140 = or i16 %139, 2
  store i16 %140, ptr %138, align 2, !tbaa !97
  br label %145

141:                                              ; preds = %104
  %142 = getelementptr inbounds %struct.bGPdata, ptr %105, i64 0, i32 4
  %143 = load i16, ptr %142, align 2, !tbaa !97
  %144 = or i16 %143, 2
  store i16 %144, ptr %142, align 2, !tbaa !97
  br label %145

145:                                              ; preds = %79, %85, %132, %137, %112, %116, %120, %141, %104, %38, %43, %24, %29, %93
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gpencil_draw_apply(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 12
  %4 = load i16, ptr %3, align 2, !tbaa !44
  %5 = icmp eq i16 %4, 1
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  tail call fastcc void @gp_stroke_doeraser(ptr noundef nonnull %1) #15
  %7 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 13
  %8 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 14
  %9 = load <2 x i32>, ptr %7, align 4, !tbaa !36
  store <2 x i32> %9, ptr %8, align 4, !tbaa !36
  %10 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 15
  %11 = load float, ptr %10, align 4, !tbaa !37
  %12 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 16
  store float %11, ptr %12, align 8, !tbaa !45
  br label %57

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 13
  %15 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 14
  %16 = tail call fastcc zeroext i8 @gp_stroke_filtermval(ptr noundef nonnull %1, ptr noundef nonnull %14, ptr noundef nonnull %15) #15, !range !86
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %57, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 15
  %20 = load float, ptr %19, align 4, !tbaa !37
  %21 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 20
  %22 = load double, ptr %21, align 8, !tbaa !42
  %23 = tail call fastcc signext i16 @gp_stroke_addpoint(ptr noundef nonnull %1, ptr noundef nonnull %14, float noundef %20, double noundef %22) #15, !range !118
  switch i16 %23, label %51 [
    i16 -1, label %24
    i16 1, label %24
    i16 -2, label %42
  ]

24:                                               ; preds = %18, %18
  %25 = icmp eq i16 %23, -1
  tail call fastcc void @gp_paint_strokeend(ptr noundef nonnull %1) #15
  %26 = load i16, ptr %3, align 2, !tbaa !44
  tail call fastcc void @gp_paint_initstroke(ptr noundef nonnull %1, i16 noundef signext %26) #15
  br i1 %25, label %27, label %35

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 21
  %29 = load double, ptr %28, align 8, !tbaa !46
  %30 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 19
  store double %29, ptr %30, align 8, !tbaa !41
  %31 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 16
  %32 = load float, ptr %31, align 8, !tbaa !45
  %33 = tail call fastcc signext i16 @gp_stroke_addpoint(ptr noundef nonnull %1, ptr noundef nonnull %15, float noundef %32, double noundef %29) #15, !range !118
  %34 = load double, ptr %21, align 8, !tbaa !42
  br label %38

35:                                               ; preds = %24
  %36 = load double, ptr %21, align 8, !tbaa !42
  %37 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 19
  store double %36, ptr %37, align 8, !tbaa !41
  br label %38

38:                                               ; preds = %35, %27
  %39 = phi double [ %36, %35 ], [ %34, %27 ]
  %40 = load float, ptr %19, align 4, !tbaa !37
  %41 = tail call fastcc signext i16 @gp_stroke_addpoint(ptr noundef nonnull %1, ptr noundef nonnull %14, float noundef %40, double noundef %39) #15, !range !118
  br label %51

42:                                               ; preds = %18
  %43 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 8
  %44 = load ptr, ptr %43, align 8, !tbaa !119
  tail call void @BKE_report(ptr noundef %44, i32 noundef 32, ptr noundef nonnull @.str.28) #14
  %45 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 11
  store i16 2, ptr %45, align 8, !tbaa !53
  %46 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !49
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %42
  %50 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.58)
  br label %57

51:                                               ; preds = %18, %38
  %52 = load <2 x i32>, ptr %14, align 4, !tbaa !36
  store <2 x i32> %52, ptr %15, align 4, !tbaa !36
  %53 = load float, ptr %19, align 4, !tbaa !37
  %54 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 16
  store float %53, ptr %54, align 8, !tbaa !45
  %55 = load double, ptr %21, align 8, !tbaa !42
  %56 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 21
  store double %55, ptr %56, align 8, !tbaa !46
  br label %57

57:                                               ; preds = %51, %49, %42, %13, %6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @RNA_property_collection_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_property_collection_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gpencil_draw_exit(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !24
  tail call void @gpencil_undo_finish() #14
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #14
  tail call void @WM_cursor_modal_restore(ptr noundef %5) #14
  %6 = icmp eq ptr %4, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tGPsdata, ptr %4, i64 0, i32 12
  %9 = load i16, ptr %8, align 2, !tbaa !44
  %10 = icmp eq i16 %9, 1
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  tail call fastcc void @gpencil_draw_toggle_eraser_cursor(ptr noundef %0, ptr noundef nonnull %4, i16 noundef signext 0) #15
  %12 = getelementptr inbounds %struct.tGPsdata, ptr %4, i64 0, i32 11
  %13 = load i16, ptr %12, align 8, !tbaa !53
  %14 = icmp eq i16 %13, 3
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tGPsdata, ptr %4, i64 0, i32 17
  %17 = load i16, ptr %16, align 4, !tbaa !83
  store i16 %17, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 50), align 8, !tbaa !87
  br label %18

18:                                               ; preds = %11, %15, %7
  tail call fastcc void @gp_paint_cleanup(ptr noundef nonnull %4) #15
  tail call fastcc void @gp_session_cleanup(ptr noundef nonnull %4) #15
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !26
  tail call void %19(ptr noundef nonnull %4) #14
  br label %20

20:                                               ; preds = %18, %2
  store ptr null, ptr %3, align 8, !tbaa !24
  ret void
}

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @gp_session_initpaint(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !26
  %3 = tail call ptr %2(i64 noundef 320, ptr noundef nonnull @.str.13) #14
  %4 = tail call fastcc i32 @gp_session_initdata(ptr noundef %0, ptr noundef %3) #15, !range !23
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @gp_session_initdata(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  %5 = icmp eq ptr %3, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 11
  store i16 2, ptr %7, align 8, !tbaa !53
  %8 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !49
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %122, label %11

11:                                               ; preds = %6
  %12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.63)
  br label %122

13:                                               ; preds = %2
  %14 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  store ptr %14, ptr %1, align 8, !tbaa !55
  %15 = tail call ptr @CTX_wm_window(ptr noundef %0) #14
  %16 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 1
  store ptr %15, ptr %16, align 8, !tbaa !93
  %17 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 22
  tail call void @unit_m4(ptr noundef nonnull %17) #14
  %18 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 8
  %19 = load i8, ptr %18, align 8, !tbaa !105
  switch i8 %19, label %91 [
    i8 1, label %20
    i8 16, label %33
    i8 8, label %38
    i8 6, label %55
    i8 20, label %60
  ]

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 2
  store ptr %3, ptr %21, align 8, !tbaa !85
  %22 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 3
  store ptr %4, ptr %22, align 8, !tbaa !84
  %23 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 30
  %24 = load ptr, ptr %23, align 8, !tbaa !106
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %98

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 11
  store i16 2, ptr %27, align 8, !tbaa !53
  %28 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !49
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %122, label %31

31:                                               ; preds = %26
  %32 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.61)
  br label %122

33:                                               ; preds = %13
  %34 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 2
  store ptr %3, ptr %34, align 8, !tbaa !85
  %35 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 3
  store ptr %4, ptr %35, align 8, !tbaa !84
  %36 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2
  %37 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 4
  store ptr %36, ptr %37, align 8, !tbaa !120
  br label %98

38:                                               ; preds = %13
  %39 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 19
  %40 = load ptr, ptr %39, align 8, !tbaa !91
  %41 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 2
  store ptr %3, ptr %41, align 8, !tbaa !85
  %42 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 3
  store ptr %4, ptr %42, align 8, !tbaa !84
  %43 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2
  %44 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 4
  store ptr %43, ptr %44, align 8, !tbaa !120
  %45 = getelementptr inbounds %struct.SpaceSeq, ptr %40, i64 0, i32 9
  %46 = load i16, ptr %45, align 8, !tbaa !121
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %98

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 11
  store i16 2, ptr %49, align 8, !tbaa !53
  %50 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !49
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %122, label %53

53:                                               ; preds = %48
  %54 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.59)
  br label %122

55:                                               ; preds = %13
  %56 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 2
  store ptr %3, ptr %56, align 8, !tbaa !85
  %57 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 3
  store ptr %4, ptr %57, align 8, !tbaa !84
  %58 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2
  %59 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 4
  store ptr %58, ptr %59, align 8, !tbaa !120
  br label %98

60:                                               ; preds = %13
  %61 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 19
  %62 = load ptr, ptr %61, align 8, !tbaa !91
  %63 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 2
  store ptr %3, ptr %63, align 8, !tbaa !85
  %64 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 3
  store ptr %4, ptr %64, align 8, !tbaa !84
  %65 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2
  %66 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 4
  store ptr %65, ptr %66, align 8, !tbaa !120
  %67 = getelementptr inbounds %struct.SpaceClip, ptr %62, i64 0, i32 21
  %68 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %17, ptr noundef nonnull %67) #14
  %69 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 24
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 5.000000e-01, float 0x3FECCCCCC0000000>, ptr %69, align 8, !tbaa !34
  %70 = getelementptr inbounds %struct.SpaceClip, ptr %62, i64 0, i32 23
  %71 = load i16, ptr %70, align 4, !tbaa !124
  %72 = icmp eq i16 %71, 1
  br i1 %72, label %73, label %88

73:                                               ; preds = %60
  %74 = tail call ptr @ED_space_clip_get_clip(ptr noundef nonnull %62) #14
  %75 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef nonnull %62) #14
  %76 = getelementptr inbounds %struct.MovieClip, ptr %74, i64 0, i32 11
  %77 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %76) #14
  %78 = tail call ptr @BKE_tracking_marker_get(ptr noundef %77, i32 noundef %75) #14
  %79 = load float, ptr %78, align 4, !tbaa !34
  %80 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 22, i64 3
  %81 = load float, ptr %80, align 8, !tbaa !34
  %82 = fsub float %81, %79
  store float %82, ptr %80, align 8, !tbaa !34
  %83 = getelementptr inbounds [2 x float], ptr %78, i64 0, i64 1
  %84 = load float, ptr %83, align 4, !tbaa !34
  %85 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 22, i64 3, i64 1
  %86 = load float, ptr %85, align 4, !tbaa !34
  %87 = fsub float %86, %84
  store float %87, ptr %85, align 4, !tbaa !34
  br label %88

88:                                               ; preds = %73, %60
  %89 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 23
  %90 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %89, ptr noundef nonnull %17) #14
  br label %98

91:                                               ; preds = %13
  %92 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 11
  store i16 2, ptr %92, align 8, !tbaa !53
  %93 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !49
  %94 = and i32 %93, 1
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %122, label %96

96:                                               ; preds = %91
  %97 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.62)
  br label %122

98:                                               ; preds = %38, %20, %88, %55, %33
  %99 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 7
  %100 = tail call ptr @ED_gpencil_data_get_pointers(ptr noundef %0, ptr noundef nonnull %99) #14
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %109

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 11
  store i16 2, ptr %103, align 8, !tbaa !53
  %104 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !49
  %105 = and i32 %104, 1
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %122, label %107

107:                                              ; preds = %102
  %108 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.60)
  br label %122

109:                                              ; preds = %98
  %110 = load ptr, ptr %100, align 8, !tbaa !26
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = tail call ptr @gpencil_data_addnew(ptr noundef nonnull @.str.19) #14
  store ptr %113, ptr %100, align 8, !tbaa !26
  br label %114

114:                                              ; preds = %112, %109
  %115 = phi ptr [ %113, %112 ], [ %110, %109 ]
  %116 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 8
  store ptr %115, ptr %116, align 8, !tbaa !94
  %117 = tail call i32 @ED_gpencil_session_active() #14
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = load ptr, ptr %116, align 8, !tbaa !94
  tail call void @gpencil_undo_init(ptr noundef %120) #14
  br label %121

121:                                              ; preds = %119, %114
  tail call fastcc void @gp_session_validatebuffer(ptr noundef nonnull %1) #15
  br label %122

122:                                              ; preds = %53, %48, %102, %107, %91, %96, %26, %31, %6, %11, %121
  %123 = phi i32 [ 1, %121 ], [ 0, %11 ], [ 0, %6 ], [ 0, %31 ], [ 0, %26 ], [ 0, %96 ], [ 0, %91 ], [ 0, %107 ], [ 0, %102 ], [ 0, %48 ], [ 0, %53 ]
  ret i32 %123
}

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ED_space_clip_get_clip(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ED_space_clip_get_clip_frame_number(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_tracking_track_get_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_tracking_marker_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ED_gpencil_data_get_pointers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gpencil_data_addnew(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ED_gpencil_session_active() local_unnamed_addr #1

; Function Attrs: optsize
declare void @gpencil_undo_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gp_session_validatebuffer(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !94
  %4 = getelementptr inbounds %struct.bGPdata, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !129
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(80000) %5, i8 0, i64 80000, i1 false)
  br label %11

8:                                                ; preds = %1
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !26
  %10 = tail call ptr %9(i64 noundef 80000, ptr noundef nonnull @.str.20) #14
  store ptr %10, ptr %4, align 8, !tbaa !129
  br label %11

11:                                               ; preds = %8, %7
  %12 = getelementptr inbounds %struct.bGPdata, ptr %3, i64 0, i32 3
  store i16 0, ptr %12, align 4, !tbaa !130
  %13 = getelementptr inbounds %struct.bGPdata, ptr %3, i64 0, i32 4
  store i16 0, ptr %13, align 2, !tbaa !97
  %14 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 19
  store double 0.000000e+00, ptr %14, align 8, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @gpencil_project_check(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !94
  %4 = getelementptr inbounds %struct.bGPdata, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 2, !tbaa !97
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.bGPdata, ptr %3, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !95
  %11 = and i32 %10, 96
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i8
  br label %14

14:                                               ; preds = %8, %1
  %15 = phi i8 [ 0, %1 ], [ %13, %8 ]
  ret i8 %15
}

; Function Attrs: optsize
declare void @view3d_region_operator_needs_opengl(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_view3d_autodist_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gp_stroke_smooth(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = alloca [3 x %struct.tGPspoint], align 16
  %3 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #16
  %5 = getelementptr inbounds %struct.bGPdata, ptr %4, i64 0, i32 3
  %6 = load i16, ptr %5, align 4, !tbaa !130
  %7 = sext i16 %6 to i32
  %8 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 51), align 2, !tbaa !131
  %9 = and i16 %8, 1
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %66, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 12
  %13 = load i16, ptr %12, align 2, !tbaa !44
  %14 = and i16 %13, -2
  %15 = icmp eq i16 %14, 2
  %16 = icmp slt i16 %6, 3
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %66, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.bGPdata, ptr %4, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !129
  %21 = icmp eq ptr %20, null
  br i1 %21, label %66, label %22

22:                                               ; preds = %18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %20, i64 16, i1 false), !tbaa.struct !132
  %23 = add nsw i32 %7, -2
  %24 = getelementptr inbounds %struct.tGPspoint, ptr %20, i64 1
  %25 = add nsw i32 %7, -2
  br label %26

26:                                               ; preds = %22, %39
  %27 = phi ptr [ %41, %39 ], [ %24, %22 ]
  %28 = phi i32 [ %64, %39 ], [ 1, %22 ]
  %29 = add nsw i32 %28, -1
  %30 = urem i32 %29, 3
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds [3 x %struct.tGPspoint], ptr %2, i64 0, i64 %31
  %33 = icmp ugt i32 %28, 1
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = add nsw i32 %28, -2
  %36 = srem i32 %35, 3
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [3 x %struct.tGPspoint], ptr %2, i64 0, i64 %37
  br label %39

39:                                               ; preds = %26, %34
  %40 = phi ptr [ %38, %34 ], [ %32, %26 ]
  %41 = getelementptr inbounds %struct.tGPspoint, ptr %27, i64 1
  %42 = icmp slt i32 %28, %23
  %43 = getelementptr inbounds %struct.tGPspoint, ptr %27, i64 2
  %44 = select i1 %42, ptr %43, ptr %41
  %45 = urem i32 %28, 3
  %46 = zext nneg i32 %45 to i64
  %47 = getelementptr inbounds [3 x %struct.tGPspoint], ptr %2, i64 0, i64 %46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %47, ptr noundef nonnull align 4 dereferenceable(16) %27, i64 16, i1 false), !tbaa.struct !132
  %48 = load <2 x i32>, ptr %40, align 4, !tbaa !36
  %49 = sitofp <2 x i32> %48 to <2 x double>
  %50 = load <2 x i32>, ptr %32, align 16, !tbaa !36
  %51 = sitofp <2 x i32> %50 to <2 x double>
  %52 = fmul <2 x double> %51, <double 2.000000e-01, double 2.000000e-01>
  %53 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %49, <2 x double> <double 1.000000e-01, double 1.000000e-01>, <2 x double> %52)
  %54 = load <2 x i32>, ptr %27, align 4, !tbaa !36
  %55 = sitofp <2 x i32> %54 to <2 x double>
  %56 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %55, <2 x double> <double 4.000000e-01, double 4.000000e-01>, <2 x double> %53)
  %57 = load <2 x i32>, ptr %41, align 4, !tbaa !36
  %58 = sitofp <2 x i32> %57 to <2 x double>
  %59 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %58, <2 x double> <double 2.000000e-01, double 2.000000e-01>, <2 x double> %56)
  %60 = load <2 x i32>, ptr %44, align 4, !tbaa !36
  %61 = sitofp <2 x i32> %60 to <2 x double>
  %62 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %61, <2 x double> <double 1.000000e-01, double 1.000000e-01>, <2 x double> %59)
  %63 = fptosi <2 x double> %62 to <2 x i32>
  store <2 x i32> %63, ptr %27, align 4, !tbaa !36
  %64 = add nuw nsw i32 %28, 1
  %65 = icmp eq i32 %28, %25
  br i1 %65, label %66, label %26, !llvm.loop !133

66:                                               ; preds = %39, %11, %18, %1
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gp_stroke_simplify(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [2 x i32], align 8
  %3 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !94
  %5 = getelementptr inbounds %struct.bGPdata, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !129
  %7 = getelementptr inbounds %struct.bGPdata, ptr %4, i64 0, i32 3
  %8 = load i16, ptr %7, align 4, !tbaa !130
  %9 = getelementptr inbounds %struct.bGPdata, ptr %4, i64 0, i32 4
  %10 = load i16, ptr %9, align 2, !tbaa !97
  %11 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 51), align 2, !tbaa !131
  %12 = and i16 %11, 2
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %107, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 12
  %16 = load i16, ptr %15, align 2, !tbaa !44
  %17 = icmp eq i16 %16, 2
  br i1 %17, label %107, label %18

18:                                               ; preds = %14
  %19 = sext i16 %8 to i64
  %20 = icmp slt i16 %8, 5
  %21 = icmp eq ptr %6, null
  %22 = select i1 %20, i1 true, i1 %21
  br i1 %22, label %107, label %23

23:                                               ; preds = %18
  store ptr null, ptr %5, align 8, !tbaa !129
  tail call fastcc void @gp_session_validatebuffer(ptr noundef nonnull %0) #15
  store i16 %10, ptr %9, align 2, !tbaa !97
  %24 = getelementptr inbounds %struct.tGPspoint, ptr %6, i64 0, i32 2
  %25 = load float, ptr %24, align 4, !tbaa !134
  %26 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 19
  %27 = load double, ptr %26, align 8, !tbaa !41
  %28 = getelementptr inbounds %struct.tGPspoint, ptr %6, i64 0, i32 3
  %29 = load float, ptr %28, align 4, !tbaa !136
  %30 = fpext float %29 to double
  %31 = fadd double %27, %30
  %32 = tail call fastcc signext i16 @gp_stroke_addpoint(ptr noundef nonnull %0, ptr noundef nonnull %6, float noundef %25, double noundef %31) #15, !range !118
  %33 = zext nneg i16 %8 to i32
  br label %34

34:                                               ; preds = %23, %90
  %35 = phi i32 [ 0, %23 ], [ %92, %90 ]
  %36 = phi i16 [ 0, %23 ], [ %91, %90 ]
  %37 = sext i16 %36 to i32
  %38 = sub nsw i32 %35, %37
  %39 = icmp eq i32 %38, 3
  br i1 %39, label %40, label %90

40:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  %41 = sext i16 %36 to i64
  %42 = getelementptr inbounds %struct.tGPspoint, ptr %6, i64 %41
  %43 = getelementptr inbounds %struct.tGPspoint, ptr %6, i64 %41, i32 2
  %44 = load float, ptr %43, align 4, !tbaa !134
  %45 = tail call float @llvm.fmuladd.f32(float %44, float -2.500000e-01, float 0.000000e+00)
  %46 = getelementptr inbounds %struct.tGPspoint, ptr %6, i64 %41, i32 3
  %47 = load float, ptr %46, align 4, !tbaa !136
  %48 = tail call float @llvm.fmuladd.f32(float %47, float -2.500000e-01, float 0.000000e+00)
  %49 = getelementptr %struct.tGPspoint, ptr %42, i64 1
  %50 = getelementptr %struct.tGPspoint, ptr %42, i64 1, i32 2
  %51 = load float, ptr %50, align 4, !tbaa !134
  %52 = tail call float @llvm.fmuladd.f32(float %51, float 7.500000e-01, float %45)
  %53 = getelementptr %struct.tGPspoint, ptr %42, i64 1, i32 3
  %54 = load float, ptr %53, align 4, !tbaa !136
  %55 = tail call float @llvm.fmuladd.f32(float %54, float 7.500000e-01, float %48)
  %56 = add nsw i32 %37, 2
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.tGPspoint, ptr %6, i64 %57
  %59 = getelementptr inbounds %struct.tGPspoint, ptr %6, i64 %57, i32 2
  %60 = load float, ptr %59, align 4, !tbaa !134
  %61 = tail call float @llvm.fmuladd.f32(float %60, float 7.500000e-01, float %52)
  %62 = getelementptr inbounds %struct.tGPspoint, ptr %6, i64 %57, i32 3
  %63 = load float, ptr %62, align 4, !tbaa !136
  %64 = tail call float @llvm.fmuladd.f32(float %63, float 7.500000e-01, float %55)
  %65 = getelementptr %struct.tGPspoint, ptr %42, i64 3
  %66 = getelementptr %struct.tGPspoint, ptr %42, i64 3, i32 2
  %67 = load float, ptr %66, align 4, !tbaa !134
  %68 = tail call float @llvm.fmuladd.f32(float %67, float -2.500000e-01, float %61)
  %69 = getelementptr %struct.tGPspoint, ptr %42, i64 3, i32 3
  %70 = load float, ptr %69, align 4, !tbaa !136
  %71 = tail call float @llvm.fmuladd.f32(float %70, float -2.500000e-01, float %64)
  %72 = load <2 x i32>, ptr %42, align 4, !tbaa !36
  %73 = sitofp <2 x i32> %72 to <2 x float>
  %74 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %73, <2 x float> <float -2.500000e-01, float -2.500000e-01>, <2 x float> zeroinitializer)
  %75 = load <2 x i32>, ptr %49, align 4, !tbaa !36
  %76 = sitofp <2 x i32> %75 to <2 x float>
  %77 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %76, <2 x float> <float 7.500000e-01, float 7.500000e-01>, <2 x float> %74)
  %78 = load <2 x i32>, ptr %58, align 4, !tbaa !36
  %79 = sitofp <2 x i32> %78 to <2 x float>
  %80 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %79, <2 x float> <float 7.500000e-01, float 7.500000e-01>, <2 x float> %77)
  %81 = load <2 x i32>, ptr %65, align 4, !tbaa !36
  %82 = sitofp <2 x i32> %81 to <2 x float>
  %83 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %82, <2 x float> <float -2.500000e-01, float -2.500000e-01>, <2 x float> %80)
  %84 = fptosi <2 x float> %83 to <2 x i32>
  store <2 x i32> %84, ptr %2, align 8, !tbaa !36
  %85 = load double, ptr %26, align 8, !tbaa !41
  %86 = fpext float %71 to double
  %87 = fadd double %85, %86
  %88 = call fastcc signext i16 @gp_stroke_addpoint(ptr noundef %0, ptr noundef nonnull %2, float noundef %68, double noundef %87) #15, !range !118
  %89 = trunc i32 %56 to i16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  br label %90

90:                                               ; preds = %34, %40
  %91 = phi i16 [ %89, %40 ], [ %36, %34 ]
  %92 = add nuw nsw i32 %35, 1
  %93 = icmp eq i32 %92, %33
  br i1 %93, label %94, label %34, !llvm.loop !137

94:                                               ; preds = %90
  %95 = add nsw i64 %19, 4294967295
  %96 = and i64 %95, 4294967295
  %97 = getelementptr inbounds %struct.tGPspoint, ptr %6, i64 %96
  %98 = getelementptr inbounds %struct.tGPspoint, ptr %6, i64 %96, i32 2
  %99 = load float, ptr %98, align 4, !tbaa !134
  %100 = load double, ptr %26, align 8, !tbaa !41
  %101 = getelementptr inbounds %struct.tGPspoint, ptr %6, i64 %96, i32 3
  %102 = load float, ptr %101, align 4, !tbaa !136
  %103 = fpext float %102 to double
  %104 = fadd double %100, %103
  %105 = tail call fastcc signext i16 @gp_stroke_addpoint(ptr noundef %0, ptr noundef %97, float noundef %99, double noundef %104) #15, !range !118
  %106 = load ptr, ptr @MEM_freeN, align 8, !tbaa !26
  tail call void %106(ptr noundef %6) #14
  br label %107

107:                                              ; preds = %18, %1, %14, %94
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gp_stroke_newfrombuffer(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [2 x i32], align 4
  %3 = alloca [2 x i32], align 8
  %4 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !94
  %6 = getelementptr inbounds %struct.bGPdata, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !95
  %8 = lshr i32 %7, 4
  %9 = and i32 %8, 4
  %10 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 12
  %11 = load i16, ptr %10, align 2, !tbaa !44
  %12 = icmp eq i16 %11, 2
  %13 = getelementptr inbounds %struct.bGPdata, ptr %5, i64 0, i32 3
  %14 = load i16, ptr %13, align 4, !tbaa !130
  br i1 %12, label %15, label %17

15:                                               ; preds = %1
  %16 = icmp sgt i16 %14, 1
  br i1 %16, label %34, label %20

17:                                               ; preds = %1
  %18 = sext i16 %14 to i32
  %19 = icmp eq i16 %14, 0
  br i1 %19, label %23, label %29

20:                                               ; preds = %15
  %21 = sext i16 %14 to i32
  %22 = icmp eq i16 %14, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %20, %17
  %24 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !49
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %226, label %27

27:                                               ; preds = %23
  %28 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef 0) #15
  br label %226

29:                                               ; preds = %17
  %30 = icmp eq i16 %11, 3
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = tail call fastcc zeroext i8 @gp_stroke_added_check(ptr noundef nonnull %0) #15, !range !86
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %226

34:                                               ; preds = %20, %15, %31, %29
  %35 = phi i32 [ %18, %31 ], [ %18, %29 ], [ 2, %15 ], [ %21, %20 ]
  %36 = load ptr, ptr @MEM_callocN, align 8, !tbaa !26
  %37 = tail call ptr %36(i64 noundef 48, ptr noundef nonnull @.str.22) #14
  %38 = getelementptr inbounds %struct.bGPDstroke, ptr %37, i64 0, i32 4
  store i32 %35, ptr %38, align 8, !tbaa !138
  %39 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 9
  %40 = load ptr, ptr %39, align 8, !tbaa !98
  %41 = getelementptr inbounds %struct.bGPDlayer, ptr %40, i64 0, i32 5
  %42 = load i16, ptr %41, align 4, !tbaa !140
  %43 = getelementptr inbounds %struct.bGPDstroke, ptr %37, i64 0, i32 5
  store i16 %42, ptr %43, align 4, !tbaa !141
  %44 = getelementptr inbounds %struct.bGPdata, ptr %5, i64 0, i32 4
  %45 = load i16, ptr %44, align 2, !tbaa !97
  %46 = getelementptr inbounds %struct.bGPDstroke, ptr %37, i64 0, i32 6
  store i16 %45, ptr %46, align 2, !tbaa !142
  %47 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 19
  %48 = load double, ptr %47, align 8, !tbaa !41
  %49 = getelementptr inbounds %struct.bGPDstroke, ptr %37, i64 0, i32 7
  store double %48, ptr %49, align 8, !tbaa !143
  %50 = load ptr, ptr @MEM_callocN, align 8, !tbaa !26
  %51 = mul nsw i32 %35, 20
  %52 = sext i32 %51 to i64
  %53 = tail call ptr %50(i64 noundef %52, ptr noundef nonnull @.str.23) #14
  %54 = getelementptr inbounds %struct.bGPDstroke, ptr %37, i64 0, i32 2
  store ptr %53, ptr %54, align 8, !tbaa !144
  %55 = load i32, ptr %38, align 8, !tbaa !138
  %56 = sub nsw i32 %55, %35
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.bGPDspoint, ptr %53, i64 %57
  %59 = load i16, ptr %10, align 2, !tbaa !44
  switch i16 %59, label %84 [
    i16 2, label %60
    i16 3, label %78
  ]

60:                                               ; preds = %34
  %61 = getelementptr inbounds %struct.bGPdata, ptr %5, i64 0, i32 5
  %62 = load ptr, ptr %61, align 8, !tbaa !129
  tail call fastcc void @gp_stroke_convertcoords(ptr noundef nonnull %0, ptr noundef %62, ptr noundef %58, ptr noundef null) #15
  %63 = getelementptr inbounds %struct.tGPspoint, ptr %62, i64 0, i32 2
  %64 = getelementptr inbounds %struct.bGPDspoint, ptr %53, i64 %57, i32 3
  %65 = load <2 x float>, ptr %63, align 4, !tbaa !34
  store <2 x float> %65, ptr %64, align 4, !tbaa !34
  %66 = icmp eq i32 %35, 2
  br i1 %66, label %67, label %222

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.bGPDspoint, ptr %58, i64 1
  %69 = load ptr, ptr %61, align 8, !tbaa !129
  %70 = getelementptr inbounds %struct.bGPdata, ptr %5, i64 0, i32 3
  %71 = load i16, ptr %70, align 4, !tbaa !130
  %72 = sext i16 %71 to i64
  %73 = getelementptr %struct.tGPspoint, ptr %69, i64 %72
  %74 = getelementptr %struct.tGPspoint, ptr %73, i64 -1
  tail call fastcc void @gp_stroke_convertcoords(ptr noundef nonnull %0, ptr noundef %74, ptr noundef nonnull %68, ptr noundef null) #15
  %75 = getelementptr %struct.tGPspoint, ptr %73, i64 -1, i32 2
  %76 = getelementptr inbounds %struct.bGPDspoint, ptr %58, i64 1, i32 3
  %77 = load <2 x float>, ptr %75, align 4, !tbaa !34
  store <2 x float> %77, ptr %76, align 4, !tbaa !34
  br label %222

78:                                               ; preds = %34
  %79 = getelementptr inbounds %struct.bGPdata, ptr %5, i64 0, i32 5
  %80 = load ptr, ptr %79, align 8, !tbaa !129
  tail call fastcc void @gp_stroke_convertcoords(ptr noundef nonnull %0, ptr noundef %80, ptr noundef %58, ptr noundef null) #15
  %81 = getelementptr inbounds %struct.tGPspoint, ptr %80, i64 0, i32 2
  %82 = getelementptr inbounds %struct.bGPDspoint, ptr %53, i64 %57, i32 3
  %83 = load <2 x float>, ptr %81, align 4, !tbaa !34
  store <2 x float> %83, ptr %82, align 4, !tbaa !34
  br label %222

84:                                               ; preds = %34
  %85 = tail call fastcc zeroext i8 @gpencil_project_check(ptr noundef nonnull %0) #15, !range !86
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %191, label %87

87:                                               ; preds = %84
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  store i64 0, ptr %3, align 8
  %88 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !26
  %89 = getelementptr inbounds %struct.bGPdata, ptr %5, i64 0, i32 3
  %90 = load i16, ptr %89, align 4, !tbaa !130
  %91 = sext i16 %90 to i64
  %92 = shl nsw i64 %91, 2
  %93 = tail call ptr %88(i64 noundef %92, ptr noundef nonnull @.str.24) #14
  %94 = load i16, ptr %89, align 4, !tbaa !130
  %95 = icmp sgt i16 %94, 0
  br i1 %95, label %96, label %190

96:                                               ; preds = %87
  %97 = getelementptr inbounds %struct.bGPdata, ptr %5, i64 0, i32 5
  %98 = load ptr, ptr %97, align 8, !tbaa !129
  %99 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 3
  %100 = or disjoint i32 %9, 1
  br label %101

101:                                              ; preds = %96, %117
  %102 = phi i64 [ 0, %96 ], [ %120, %117 ]
  %103 = phi i32 [ 0, %96 ], [ %119, %117 ]
  %104 = phi i32 [ 0, %96 ], [ %118, %117 ]
  %105 = phi ptr [ %98, %96 ], [ %121, %117 ]
  call fastcc void @copy_v2_v2_int(ptr noundef nonnull %2, ptr noundef %105) #15
  %106 = load ptr, ptr %99, align 8, !tbaa !84
  %107 = getelementptr inbounds float, ptr %93, i64 %102
  %108 = call zeroext i8 @ED_view3d_autodist_depth(ptr noundef %106, ptr noundef nonnull %2, i32 noundef %9, ptr noundef %107) #14
  %109 = icmp eq i8 %108, 0
  %110 = icmp ne i64 %102, 0
  %111 = and i1 %110, %109
  br i1 %111, label %112, label %116

112:                                              ; preds = %101
  %113 = load ptr, ptr %99, align 8, !tbaa !84
  %114 = call zeroext i8 @ED_view3d_autodist_depth_seg(ptr noundef %113, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef %100, ptr noundef nonnull %107) #14
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %112, %101
  br label %117

117:                                              ; preds = %112, %116
  %118 = phi i32 [ %104, %116 ], [ 1, %112 ]
  %119 = phi i32 [ 1, %116 ], [ %103, %112 ]
  call fastcc void @copy_v2_v2_int(ptr noundef nonnull %3, ptr noundef nonnull %2) #15
  %120 = add nuw nsw i64 %102, 1
  %121 = getelementptr inbounds %struct.tGPspoint, ptr %105, i64 1
  %122 = load i16, ptr %89, align 4, !tbaa !130
  %123 = sext i16 %122 to i64
  %124 = icmp slt i64 %120, %123
  br i1 %124, label %101, label %125, !llvm.loop !145

125:                                              ; preds = %117
  %126 = icmp eq i32 %119, 0
  %127 = icmp eq i32 %118, 0
  %128 = sext i16 %122 to i32
  br i1 %126, label %129, label %138

129:                                              ; preds = %125
  %130 = icmp sgt i16 %122, 0
  br i1 %130, label %131, label %190

131:                                              ; preds = %129
  %132 = zext nneg i32 %128 to i64
  br label %133

133:                                              ; preds = %131, %133
  %134 = phi i64 [ %132, %131 ], [ %135, %133 ]
  %135 = add nsw i64 %134, -1
  %136 = getelementptr inbounds float, ptr %93, i64 %135
  store float 0x3FEFFF2E40000000, ptr %136, align 4, !tbaa !34
  %137 = icmp ugt i64 %134, 1
  br i1 %137, label %133, label %190, !llvm.loop !146

138:                                              ; preds = %125
  %139 = load ptr, ptr %4, align 8, !tbaa !94
  %140 = getelementptr inbounds %struct.bGPdata, ptr %139, i64 0, i32 2
  %141 = load i32, ptr %140, align 8, !tbaa !95
  %142 = and i32 %141, 128
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %187, label %144

144:                                              ; preds = %138
  %145 = icmp sgt i16 %122, 0
  %146 = zext i32 %128 to i64
  br i1 %145, label %147, label %160

147:                                              ; preds = %144, %152
  %148 = phi i64 [ %153, %152 ], [ 0, %144 ]
  %149 = getelementptr inbounds float, ptr %93, i64 %148
  %150 = load float, ptr %149, align 4, !tbaa !34
  %151 = fcmp une float %150, 0x47EFFFFFE0000000
  br i1 %151, label %155, label %152

152:                                              ; preds = %147
  %153 = add nuw nsw i64 %148, 1
  %154 = icmp eq i64 %153, %146
  br i1 %154, label %157, label %147, !llvm.loop !147

155:                                              ; preds = %147
  %156 = trunc i64 %148 to i32
  br label %157

157:                                              ; preds = %152, %155
  %158 = phi i32 [ %156, %155 ], [ %128, %152 ]
  %159 = add nuw nsw i32 %158, 1
  br label %160

160:                                              ; preds = %144, %157
  %161 = phi i32 [ %159, %157 ], [ 1, %144 ]
  %162 = call i32 @llvm.smin.i32(i32 %128, i32 0)
  %163 = add nsw i32 %162, -1
  br label %164

164:                                              ; preds = %168, %160
  %165 = phi i64 [ %169, %168 ], [ %146, %160 ]
  %166 = trunc i64 %165 to i32
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %164
  %169 = add nsw i64 %165, -1
  %170 = and i64 %169, 4294967295
  %171 = getelementptr inbounds float, ptr %93, i64 %170
  %172 = load float, ptr %171, align 4, !tbaa !34
  %173 = fcmp une float %172, 0x47EFFFFFE0000000
  br i1 %173, label %174, label %164, !llvm.loop !148

174:                                              ; preds = %168
  %175 = trunc i64 %169 to i32
  br label %176

176:                                              ; preds = %164, %174
  %177 = phi i32 [ %175, %174 ], [ %163, %164 ]
  %178 = icmp slt i32 %161, %177
  br i1 %178, label %179, label %188

179:                                              ; preds = %176
  %180 = zext i32 %161 to i64
  br label %181

181:                                              ; preds = %179, %181
  %182 = phi i64 [ %180, %179 ], [ %184, %181 ]
  %183 = getelementptr inbounds float, ptr %93, i64 %182
  store float 0x47EFFFFFE0000000, ptr %183, align 4, !tbaa !34
  %184 = add nuw nsw i64 %182, 1
  %185 = trunc i64 %184 to i32
  %186 = icmp sgt i32 %177, %185
  br i1 %186, label %181, label %188, !llvm.loop !149

187:                                              ; preds = %138
  br i1 %127, label %190, label %188

188:                                              ; preds = %181, %176, %187
  %189 = call i32 @interp_sparse_array(ptr noundef %93, i32 noundef %128, float noundef 0x47EFFFFFE0000000) #14
  br label %190

190:                                              ; preds = %133, %87, %129, %187, %188
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  br label %191

191:                                              ; preds = %190, %84
  %192 = phi ptr [ %93, %190 ], [ null, %84 ]
  %193 = getelementptr inbounds %struct.bGPdata, ptr %5, i64 0, i32 5
  %194 = load ptr, ptr %193, align 8, !tbaa !129
  %195 = getelementptr inbounds %struct.bGPdata, ptr %5, i64 0, i32 3
  %196 = load i16, ptr %195, align 4, !tbaa !130
  %197 = icmp sgt i16 %196, 0
  %198 = icmp ne ptr %194, null
  %199 = select i1 %197, i1 %198, i1 false
  br i1 %199, label %200, label %218

200:                                              ; preds = %191
  %201 = load ptr, ptr %54, align 8, !tbaa !144
  %202 = icmp eq ptr %192, null
  br label %203

203:                                              ; preds = %200, %203
  %204 = phi i64 [ 0, %200 ], [ %212, %203 ]
  %205 = phi ptr [ %201, %200 ], [ %214, %203 ]
  %206 = phi ptr [ %194, %200 ], [ %213, %203 ]
  %207 = getelementptr inbounds float, ptr %192, i64 %204
  %208 = select i1 %202, ptr null, ptr %207
  call fastcc void @gp_stroke_convertcoords(ptr noundef %0, ptr noundef nonnull %206, ptr noundef %205, ptr noundef %208) #15
  %209 = getelementptr inbounds %struct.tGPspoint, ptr %206, i64 0, i32 2
  %210 = getelementptr inbounds %struct.bGPDspoint, ptr %205, i64 0, i32 3
  %211 = load <2 x float>, ptr %209, align 4, !tbaa !34
  store <2 x float> %211, ptr %210, align 4, !tbaa !34
  %212 = add nuw nsw i64 %204, 1
  %213 = getelementptr inbounds %struct.tGPspoint, ptr %206, i64 1
  %214 = getelementptr inbounds %struct.bGPDspoint, ptr %205, i64 1
  %215 = load i16, ptr %195, align 4, !tbaa !130
  %216 = sext i16 %215 to i64
  %217 = icmp slt i64 %212, %216
  br i1 %217, label %203, label %218, !llvm.loop !150

218:                                              ; preds = %203, %191
  %219 = icmp eq ptr %192, null
  br i1 %219, label %222, label %220

220:                                              ; preds = %218
  %221 = load ptr, ptr @MEM_freeN, align 8, !tbaa !26
  call void %221(ptr noundef nonnull %192) #14
  br label %222

222:                                              ; preds = %218, %220, %78, %60, %67
  %223 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 10
  %224 = load ptr, ptr %223, align 8, !tbaa !102
  %225 = getelementptr inbounds %struct.bGPDframe, ptr %224, i64 0, i32 2
  call void @BLI_addtail(ptr noundef nonnull %225, ptr noundef %37) #14
  call fastcc void @gp_stroke_added_enable(ptr noundef %0) #15
  br label %226

226:                                              ; preds = %31, %23, %27, %222
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc signext i16 @gp_stroke_addpoint(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2, double noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !94
  %7 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 12
  %8 = load i16, ptr %7, align 2, !tbaa !44
  switch i16 %8, label %122 [
    i16 2, label %9
    i16 0, label %35
    i16 3, label %54
  ]

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.bGPdata, ptr %6, i64 0, i32 3
  %11 = load i16, ptr %10, align 4, !tbaa !130
  %12 = icmp eq i16 %11, 0
  %13 = getelementptr inbounds %struct.bGPdata, ptr %6, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !129
  br i1 %12, label %15, label %24

15:                                               ; preds = %9
  tail call fastcc void @copy_v2_v2_int(ptr noundef %14, ptr noundef %1) #15
  %16 = getelementptr inbounds %struct.tGPspoint, ptr %14, i64 0, i32 2
  store float %2, ptr %16, align 4, !tbaa !134
  %17 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 19
  %18 = load double, ptr %17, align 8, !tbaa !41
  %19 = fsub double %3, %18
  %20 = fptrunc double %19 to float
  %21 = getelementptr inbounds %struct.tGPspoint, ptr %14, i64 0, i32 3
  store float %20, ptr %21, align 4, !tbaa !136
  %22 = load i16, ptr %10, align 4, !tbaa !130
  %23 = add i16 %22, 1
  store i16 %23, ptr %10, align 4, !tbaa !130
  br label %122

24:                                               ; preds = %9
  %25 = getelementptr inbounds %struct.tGPspoint, ptr %14, i64 1
  tail call fastcc void @copy_v2_v2_int(ptr noundef nonnull %25, ptr noundef %1) #15
  %26 = getelementptr inbounds %struct.tGPspoint, ptr %14, i64 1, i32 2
  store float %2, ptr %26, align 4, !tbaa !134
  %27 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 19
  %28 = load double, ptr %27, align 8, !tbaa !41
  %29 = fsub double %3, %28
  %30 = fptrunc double %29 to float
  %31 = getelementptr inbounds %struct.tGPspoint, ptr %14, i64 1, i32 3
  store float %30, ptr %31, align 4, !tbaa !136
  %32 = load i16, ptr %10, align 4, !tbaa !130
  %33 = icmp eq i16 %32, 2
  br i1 %33, label %122, label %34

34:                                               ; preds = %24
  store i16 2, ptr %10, align 4, !tbaa !130
  br label %122

35:                                               ; preds = %4
  %36 = getelementptr inbounds %struct.bGPdata, ptr %6, i64 0, i32 3
  %37 = load i16, ptr %36, align 4, !tbaa !130
  %38 = icmp sgt i16 %37, 4999
  br i1 %38, label %122, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.bGPdata, ptr %6, i64 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !129
  %42 = sext i16 %37 to i64
  %43 = getelementptr inbounds %struct.tGPspoint, ptr %41, i64 %42
  tail call fastcc void @copy_v2_v2_int(ptr noundef %43, ptr noundef %1) #15
  %44 = getelementptr inbounds %struct.tGPspoint, ptr %41, i64 %42, i32 2
  store float %2, ptr %44, align 4, !tbaa !134
  %45 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 19
  %46 = load double, ptr %45, align 8, !tbaa !41
  %47 = fsub double %3, %46
  %48 = fptrunc double %47 to float
  %49 = getelementptr inbounds %struct.tGPspoint, ptr %41, i64 %42, i32 3
  store float %48, ptr %49, align 4, !tbaa !136
  %50 = load i16, ptr %36, align 4, !tbaa !130
  %51 = add i16 %50, 1
  store i16 %51, ptr %36, align 4, !tbaa !130
  %52 = icmp eq i16 %51, 5000
  %53 = zext i1 %52 to i16
  br label %122

54:                                               ; preds = %4
  %55 = getelementptr inbounds %struct.bGPdata, ptr %6, i64 0, i32 5
  %56 = load ptr, ptr %55, align 8, !tbaa !129
  tail call fastcc void @copy_v2_v2_int(ptr noundef %56, ptr noundef %1) #15
  %57 = getelementptr inbounds %struct.tGPspoint, ptr %56, i64 0, i32 2
  store float %2, ptr %57, align 4, !tbaa !134
  %58 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 19
  %59 = load double, ptr %58, align 8, !tbaa !41
  %60 = fsub double %3, %59
  %61 = fptrunc double %60 to float
  %62 = getelementptr inbounds %struct.tGPspoint, ptr %56, i64 0, i32 3
  store float %61, ptr %62, align 4, !tbaa !136
  %63 = tail call fastcc zeroext i8 @gp_stroke_added_check(ptr noundef nonnull %0) #15, !range !86
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %117, label %65

65:                                               ; preds = %54
  %66 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 10
  %67 = load ptr, ptr %66, align 8, !tbaa !102
  %68 = getelementptr inbounds %struct.bGPDframe, ptr %67, i64 0, i32 2, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !151
  %70 = getelementptr inbounds %struct.bGPdata, ptr %6, i64 0, i32 3
  %71 = load i16, ptr %70, align 4, !tbaa !130
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.bGPDstroke, ptr %69, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !144
  %76 = getelementptr inbounds %struct.bGPDstroke, ptr %69, i64 0, i32 4
  %77 = load i32, ptr %76, align 8, !tbaa !138
  br label %90

78:                                               ; preds = %65
  %79 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !26
  %80 = getelementptr inbounds %struct.bGPDstroke, ptr %69, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !144
  %82 = getelementptr inbounds %struct.bGPDstroke, ptr %69, i64 0, i32 4
  %83 = load i32, ptr %82, align 8, !tbaa !138
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = mul nsw i64 %85, 20
  %87 = tail call ptr %79(ptr noundef %81, i64 noundef %86, ptr noundef nonnull @__func__.gp_stroke_addpoint) #14
  store ptr %87, ptr %80, align 8, !tbaa !144
  %88 = load i32, ptr %82, align 8, !tbaa !138
  %89 = add nsw i32 %88, 1
  store i32 %89, ptr %82, align 8, !tbaa !138
  br label %90

90:                                               ; preds = %73, %78
  %91 = phi i32 [ %77, %73 ], [ %89, %78 ]
  %92 = phi ptr [ %75, %73 ], [ %87, %78 ]
  %93 = sext i32 %91 to i64
  %94 = getelementptr %struct.bGPDspoint, ptr %92, i64 %93
  %95 = getelementptr %struct.bGPDspoint, ptr %94, i64 -1
  %96 = tail call fastcc zeroext i8 @gpencil_project_check(ptr noundef nonnull %0) #15, !range !86
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %114, label %98

98:                                               ; preds = %90
  %99 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !85
  %101 = getelementptr inbounds %struct.ScrArea, ptr %100, i64 0, i32 19
  %102 = load ptr, ptr %101, align 8, !tbaa !91
  %103 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !93
  %105 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !84
  tail call void @view3d_region_operator_needs_opengl(ptr noundef %104, ptr noundef %106) #14
  %107 = load ptr, ptr %0, align 8, !tbaa !55
  %108 = load ptr, ptr %105, align 8, !tbaa !84
  %109 = load ptr, ptr %5, align 8, !tbaa !94
  %110 = getelementptr inbounds %struct.bGPdata, ptr %109, i64 0, i32 2
  %111 = load i32, ptr %110, align 8, !tbaa !95
  %112 = lshr i32 %111, 6
  %113 = and i32 %112, 1
  tail call void @ED_view3d_autodist_init(ptr noundef %107, ptr noundef %108, ptr noundef %102, i32 noundef %113) #14
  br label %114

114:                                              ; preds = %98, %90
  tail call fastcc void @gp_stroke_convertcoords(ptr noundef nonnull %0, ptr noundef nonnull %56, ptr noundef %95, ptr noundef null) #15
  %115 = getelementptr %struct.bGPDspoint, ptr %94, i64 -1, i32 3
  %116 = load <2 x float>, ptr %57, align 4, !tbaa !34
  store <2 x float> %116, ptr %115, align 4, !tbaa !34
  br label %117

117:                                              ; preds = %114, %54
  %118 = getelementptr inbounds %struct.bGPdata, ptr %6, i64 0, i32 3
  %119 = load i16, ptr %118, align 4, !tbaa !130
  %120 = icmp eq i16 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  store i16 1, ptr %118, align 4, !tbaa !130
  br label %122

122:                                              ; preds = %4, %117, %121, %39, %35, %15, %34, %24
  %123 = phi i16 [ 0, %24 ], [ 0, %34 ], [ 0, %15 ], [ -1, %35 ], [ %53, %39 ], [ 0, %121 ], [ 0, %117 ], [ -2, %4 ]
  ret i16 %123
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2_int(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 {
  %3 = load i32, ptr %1, align 4, !tbaa !36
  store i32 %3, ptr %0, align 4, !tbaa !36
  %4 = getelementptr inbounds i32, ptr %1, i64 1
  %5 = load i32, ptr %4, align 4, !tbaa !36
  %6 = getelementptr inbounds i32, ptr %0, i64 1
  store i32 %5, ptr %6, align 4, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @gp_stroke_added_check(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !102
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bGPDframe, ptr %3, i64 0, i32 2, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !151
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 18
  %11 = load i16, ptr %10, align 2, !tbaa !43
  %12 = trunc i16 %11 to i8
  %13 = lshr i8 %12, 1
  %14 = and i8 %13, 1
  br label %15

15:                                               ; preds = %9, %5, %1
  %16 = phi i8 [ 0, %5 ], [ 0, %1 ], [ %14, %9 ]
  ret i8 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gp_stroke_convertcoords(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [2 x float], align 8
  %9 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !94
  %11 = getelementptr inbounds %struct.bGPdata, ptr %10, i64 0, i32 4
  %12 = load i16, ptr %11, align 2, !tbaa !97
  %13 = zext i16 %12 to i32
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %39, label %16

16:                                               ; preds = %4
  %17 = tail call fastcc zeroext i8 @gpencil_project_check(ptr noundef nonnull %0) #15, !range !86
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !84
  %22 = tail call zeroext i8 @ED_view3d_autodist_simple(ptr noundef %21, ptr noundef %1, ptr noundef %2, i32 noundef 0, ptr noundef %3) #14
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %89

24:                                               ; preds = %19, %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  %25 = load <2 x i32>, ptr %1, align 4, !tbaa !36
  %26 = sitofp <2 x i32> %25 to <2 x float>
  store <2 x float> %26, ptr %8, align 8, !tbaa !34
  call fastcc void @gp_get_3d_reference(ptr noundef nonnull %0, ptr noundef nonnull %6) #15
  %27 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !84
  %29 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 30
  %30 = load ptr, ptr %29, align 8, !tbaa !106
  %31 = call float @ED_view3d_calc_zfac(ptr noundef %30, ptr noundef nonnull %6, ptr noundef null) #14
  %32 = load ptr, ptr %27, align 8, !tbaa !84
  %33 = call i32 @ED_view3d_project_float_global(ptr noundef %32, ptr noundef nonnull %6, ptr noundef nonnull %5, i32 noundef 0) #14
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef nonnull %8) #15
  %36 = load ptr, ptr %27, align 8, !tbaa !84
  call void @ED_view3d_win_to_delta(ptr noundef %36, ptr noundef nonnull %8, ptr noundef nonnull %7, float noundef %31) #14
  call fastcc void @sub_v3_v3v3(ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %7) #15
  br label %38

37:                                               ; preds = %24
  call fastcc void @zero_v3(ptr noundef %2) #15
  br label %38

38:                                               ; preds = %37, %35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br label %89

39:                                               ; preds = %4
  %40 = and i32 %13, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !120
  %45 = icmp eq ptr %44, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %42
  %47 = load i32, ptr %1, align 4, !tbaa !36
  %48 = sitofp i32 %47 to float
  %49 = getelementptr inbounds i32, ptr %1, i64 1
  %50 = load i32, ptr %49, align 4, !tbaa !36
  %51 = sitofp i32 %50 to float
  %52 = getelementptr inbounds float, ptr %2, i64 1
  tail call void @UI_view2d_region_to_view(ptr noundef nonnull %44, float noundef %48, float noundef %51, ptr noundef %2, ptr noundef nonnull %52) #14
  %53 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 22
  tail call void @mul_v3_m4v3(ptr noundef %2, ptr noundef nonnull %53, ptr noundef %2) #14
  br label %89

54:                                               ; preds = %42, %39
  %55 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 5
  %56 = load ptr, ptr %55, align 8, !tbaa !111
  %57 = icmp eq ptr %56, null
  %58 = load i32, ptr %1, align 4, !tbaa !36
  %59 = sitofp i32 %58 to float
  br i1 %57, label %60, label %73

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !84
  %63 = getelementptr inbounds %struct.ARegion, ptr %62, i64 0, i32 5
  %64 = getelementptr inbounds i32, ptr %1, i64 1
  %65 = load i32, ptr %64, align 4, !tbaa !36
  %66 = sitofp i32 %65 to float
  %67 = load <2 x i16>, ptr %63, align 8, !tbaa !152
  %68 = sitofp <2 x i16> %67 to <2 x float>
  %69 = insertelement <2 x float> poison, float %59, i64 0
  %70 = insertelement <2 x float> %69, float %66, i64 1
  %71 = fdiv <2 x float> %70, %68
  %72 = fmul <2 x float> %71, <float 1.000000e+02, float 1.000000e+02>
  store <2 x float> %72, ptr %2, align 4, !tbaa !34
  br label %89

73:                                               ; preds = %54
  %74 = load float, ptr %56, align 4, !tbaa !153
  %75 = fsub float %59, %74
  %76 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %56) #15
  %77 = fdiv float %75, %76
  %78 = fmul float %77, 1.000000e+02
  store float %78, ptr %2, align 4, !tbaa !34
  %79 = getelementptr inbounds i32, ptr %1, i64 1
  %80 = load i32, ptr %79, align 4, !tbaa !36
  %81 = sitofp i32 %80 to float
  %82 = getelementptr inbounds %struct.rctf, ptr %56, i64 0, i32 2
  %83 = load float, ptr %82, align 4, !tbaa !154
  %84 = fsub float %81, %83
  %85 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %56) #15
  %86 = fdiv float %84, %85
  %87 = fmul float %86, 1.000000e+02
  %88 = getelementptr inbounds float, ptr %2, i64 1
  store float %87, ptr %88, align 4, !tbaa !34
  br label %89

89:                                               ; preds = %46, %73, %60, %38, %19
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @ED_view3d_autodist_simple(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gp_get_3d_reference(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !85
  %5 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  %7 = load ptr, ptr %0, align 8, !tbaa !55
  %8 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %7, ptr noundef %6) #14
  tail call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef %8) #15
  ret void
}

; Function Attrs: optsize
declare float @ED_view3d_calc_zfac(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ED_view3d_project_float_global(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #9 {
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

; Function Attrs: optsize
declare void @ED_view3d_win_to_delta(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #9 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #10 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !34
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !155
  %4 = load float, ptr %0, align 4, !tbaa !153
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_y(ptr nocapture noundef readonly %0) unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %3 = load float, ptr %2, align 4, !tbaa !156
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !154
  %6 = fsub float %3, %5
  ret float %6
}

; Function Attrs: optsize
declare ptr @ED_view3d_cursor3d_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  store float %3, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @ED_view3d_autodist_depth(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @ED_view3d_autodist_depth_seg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @interp_sparse_array(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gp_stroke_added_enable(ptr nocapture noundef %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 18
  %3 = load i16, ptr %2, align 2, !tbaa !43
  %4 = or i16 %3, 2
  store i16 %4, ptr %2, align 2, !tbaa !43
  ret void
}

; Function Attrs: optsize
declare ptr @gpencil_layer_getactive(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gpencil_layer_addnew(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gpencil_layer_getframe(ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_view3d_calc_camera_border(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gp_stroke_doeraser(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.rcti, align 16
  %3 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #16
  %5 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 13
  %6 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 17
  %7 = load i16, ptr %6, align 4, !tbaa !83
  %8 = sext i16 %7 to i32
  %9 = load <2 x i32>, ptr %5, align 4, !tbaa !36
  %10 = shufflevector <2 x i32> %9, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %11 = insertelement <4 x i32> poison, i32 %8, i64 0
  %12 = shufflevector <4 x i32> %11, <4 x i32> poison, <4 x i32> zeroinitializer
  %13 = sub nsw <4 x i32> %10, %12
  %14 = add nsw <4 x i32> %10, %12
  %15 = shufflevector <4 x i32> %13, <4 x i32> %14, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i32> %15, ptr %2, align 16, !tbaa !36
  %16 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !85
  %18 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 8
  %19 = load i8, ptr %18, align 8, !tbaa !105
  %20 = icmp eq i8 %19, 1
  br i1 %20, label %21, label %35

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 18
  %23 = load i16, ptr %22, align 2, !tbaa !43
  %24 = and i16 %23, 4
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 19
  %28 = load ptr, ptr %27, align 8, !tbaa !91
  %29 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !93
  %31 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !84
  tail call void @view3d_region_operator_needs_opengl(ptr noundef %30, ptr noundef %32) #14
  %33 = load ptr, ptr %0, align 8, !tbaa !55
  %34 = load ptr, ptr %31, align 8, !tbaa !84
  tail call void @ED_view3d_autodist_init(ptr noundef %33, ptr noundef %34, ptr noundef %28, i32 noundef 0) #14
  br label %35

35:                                               ; preds = %21, %26, %1
  %36 = getelementptr inbounds %struct.bGPDframe, ptr %4, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !157
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %35, %39
  %40 = phi ptr [ %41, %39 ], [ %37, %35 ]
  %41 = load ptr, ptr %40, align 8, !tbaa !158
  %42 = load i16, ptr %6, align 4, !tbaa !83
  call fastcc void @gp_stroke_eraser_dostroke(ptr noundef nonnull %0, ptr noundef nonnull %5, i16 noundef signext %42, ptr noundef nonnull %2, ptr noundef %4, ptr noundef nonnull %40) #15
  %43 = icmp eq ptr %41, null
  br i1 %43, label %44, label %39, !llvm.loop !159

44:                                               ; preds = %39, %35
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @gp_stroke_filtermval(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 {
  %4 = load i32, ptr %1, align 4, !tbaa !36
  %5 = load i32, ptr %2, align 4, !tbaa !36
  %6 = sub nsw i32 %4, %5
  %7 = getelementptr inbounds i32, ptr %1, i64 1
  %8 = load i32, ptr %7, align 4, !tbaa !36
  %9 = getelementptr inbounds i32, ptr %2, i64 1
  %10 = load i32, ptr %9, align 4, !tbaa !36
  %11 = sub nsw i32 %8, %10
  %12 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !94
  %14 = getelementptr inbounds %struct.bGPdata, ptr %13, i64 0, i32 3
  %15 = load i16, ptr %14, align 4, !tbaa !130
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %34, label %17

17:                                               ; preds = %3
  %18 = tail call i32 @llvm.abs.i32(i32 %11, i1 true)
  %19 = tail call i32 @llvm.abs.i32(i32 %6, i1 true)
  %20 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 48), align 4, !tbaa !160
  %21 = sext i16 %20 to i32
  %22 = icmp sgt i32 %19, %21
  %23 = icmp sgt i32 %18, %21
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %34, label %25

25:                                               ; preds = %17
  %26 = mul i32 %6, %6
  %27 = mul i32 %11, %11
  %28 = add nsw i32 %27, %26
  %29 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 49), align 2, !tbaa !161
  %30 = sext i16 %29 to i32
  %31 = mul nsw i32 %30, %30
  %32 = icmp sgt i32 %28, %31
  %33 = zext i1 %32 to i8
  br label %34

34:                                               ; preds = %25, %17, %3
  %35 = phi i8 [ 1, %3 ], [ 1, %17 ], [ %33, %25 ]
  ret i8 %35
}

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gp_stroke_eraser_dostroke(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef signext %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store i32 0, ptr %7, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  store i32 0, ptr %8, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  store i32 0, ptr %9, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #16
  store i32 0, ptr %10, align 4, !tbaa !36
  %11 = getelementptr inbounds %struct.bGPDstroke, ptr %5, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !138
  switch i32 %12, label %13 [
    i32 0, label %18
    i32 1, label %26
  ]

13:                                               ; preds = %6
  %14 = icmp sgt i32 %12, 1
  br i1 %14, label %15, label %105

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.bGPDstroke, ptr %5, i64 0, i32 2
  %17 = sext i16 %2 to i32
  br label %55

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.bGPDstroke, ptr %5, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !144
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !26
  tail call void %23(ptr noundef nonnull %20) #14
  br label %24

24:                                               ; preds = %22, %18
  %25 = getelementptr inbounds %struct.bGPDframe, ptr %4, i64 0, i32 2
  tail call void @BLI_freelinkN(ptr noundef nonnull %25, ptr noundef nonnull %5) #14
  br label %105

26:                                               ; preds = %6
  %27 = getelementptr inbounds %struct.bGPDstroke, ptr %5, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !144
  call fastcc void @gp_point_to_xy(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %28, ptr noundef nonnull %7, ptr noundef nonnull %8) #15
  %29 = load i32, ptr %7, align 4, !tbaa !36
  %30 = icmp eq i32 %29, 12000
  %31 = load i32, ptr %8, align 4
  %32 = icmp eq i32 %31, 12000
  %33 = select i1 %30, i1 true, i1 %32
  br i1 %33, label %105, label %34

34:                                               ; preds = %26
  %35 = call zeroext i8 @BLI_rcti_isect_pt(ptr noundef %3, i32 noundef %29, i32 noundef %31) #14
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %105, label %37

37:                                               ; preds = %34
  %38 = load i32, ptr %7, align 4, !tbaa !36
  %39 = load i32, ptr %1, align 4, !tbaa !36
  %40 = sub nsw i32 %38, %39
  %41 = mul nsw i32 %40, %40
  %42 = load i32, ptr %8, align 4, !tbaa !36
  %43 = getelementptr inbounds i32, ptr %1, i64 1
  %44 = load i32, ptr %43, align 4, !tbaa !36
  %45 = sub nsw i32 %42, %44
  %46 = mul nsw i32 %45, %45
  %47 = add nuw nsw i32 %46, %41
  %48 = sext i16 %2 to i32
  %49 = mul nsw i32 %48, %48
  %50 = icmp ugt i32 %47, %49
  br i1 %50, label %105, label %51

51:                                               ; preds = %37
  %52 = load ptr, ptr @MEM_freeN, align 8, !tbaa !26
  %53 = load ptr, ptr %27, align 8, !tbaa !144
  call void %52(ptr noundef %53) #14
  %54 = getelementptr inbounds %struct.bGPDframe, ptr %4, i64 0, i32 2
  call void @BLI_freelinkN(ptr noundef nonnull %54, ptr noundef nonnull %5) #14
  br label %105

55:                                               ; preds = %15, %99
  %56 = phi i64 [ 0, %15 ], [ %104, %99 ]
  %57 = phi i64 [ 1, %15 ], [ %100, %99 ]
  %58 = load ptr, ptr %16, align 8, !tbaa !144
  %59 = getelementptr inbounds %struct.bGPDspoint, ptr %58, i64 %56
  %60 = getelementptr inbounds %struct.bGPDspoint, ptr %59, i64 1
  call fastcc void @gp_point_to_xy(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %59, ptr noundef nonnull %7, ptr noundef nonnull %8) #15
  call fastcc void @gp_point_to_xy(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %60, ptr noundef nonnull %9, ptr noundef nonnull %10) #15
  %61 = load i32, ptr %7, align 4, !tbaa !36
  %62 = icmp eq i32 %61, 12000
  %63 = load i32, ptr %8, align 4
  %64 = icmp eq i32 %63, 12000
  %65 = select i1 %62, i1 true, i1 %64
  br i1 %65, label %69, label %66

66:                                               ; preds = %55
  %67 = call zeroext i8 @BLI_rcti_isect_pt(ptr noundef %3, i32 noundef %61, i32 noundef %63) #14
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %66, %55
  %70 = load i32, ptr %9, align 4, !tbaa !36
  %71 = icmp eq i32 %70, 12000
  %72 = load i32, ptr %10, align 4
  %73 = icmp eq i32 %72, 12000
  %74 = select i1 %71, i1 true, i1 %73
  br i1 %74, label %99, label %75

75:                                               ; preds = %69
  %76 = call zeroext i8 @BLI_rcti_isect_pt(ptr noundef %3, i32 noundef %70, i32 noundef %72) #14
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %99, label %78

78:                                               ; preds = %75, %66
  %79 = load i32, ptr %7, align 4, !tbaa !36
  %80 = load i32, ptr %8, align 4, !tbaa !36
  %81 = load i32, ptr %9, align 4, !tbaa !36
  %82 = load i32, ptr %10, align 4, !tbaa !36
  %83 = call fastcc signext i16 @gp_stroke_eraser_strokeinside(ptr noundef %1, i32 noundef %17, i32 noundef %79, i32 noundef %80, i32 noundef %81, i32 noundef %82) #15
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %99, label %85

85:                                               ; preds = %78
  %86 = load i32, ptr %7, align 4, !tbaa !36
  %87 = load i32, ptr %8, align 4, !tbaa !36
  %88 = call fastcc zeroext i8 @gp_stroke_eraser_is_occluded(ptr noundef %0, ptr noundef %59, i32 noundef %86, i32 noundef %87) #15, !range !86
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %85
  %91 = load i32, ptr %9, align 4, !tbaa !36
  %92 = load i32, ptr %10, align 4, !tbaa !36
  %93 = call fastcc zeroext i8 @gp_stroke_eraser_is_occluded(ptr noundef %0, ptr noundef nonnull %60, i32 noundef %91, i32 noundef %92) #15, !range !86
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %90, %85
  %96 = trunc i64 %56 to i32
  %97 = call fastcc signext i16 @gp_stroke_eraser_splitdel(ptr noundef %4, ptr noundef nonnull %5, i32 noundef %96) #15, !range !162
  %98 = icmp eq i16 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %69, %75, %90, %95, %78
  %100 = add nuw nsw i64 %57, 1
  %101 = load i32, ptr %11, align 8, !tbaa !138
  %102 = sext i32 %101 to i64
  %103 = icmp slt i64 %100, %102
  %104 = add nuw nsw i64 %56, 1
  br i1 %103, label %55, label %105, !llvm.loop !163

105:                                              ; preds = %99, %95, %13, %37, %51, %34, %26, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gp_point_to_xy(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca [2 x i32], align 4
  %7 = alloca [3 x float], align 8
  %8 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !84
  %10 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !120
  %12 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %14 = getelementptr inbounds %struct.bGPDstroke, ptr %1, i64 0, i32 6
  %15 = load i16, ptr %14, align 2, !tbaa !142
  %16 = zext i16 %15 to i32
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %5
  %20 = call i32 @ED_view3d_project_int_global(ptr noundef %9, ptr noundef %2, ptr noundef nonnull %6, i32 noundef 0) #14
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, ptr %6, align 4, !tbaa !36
  store i32 %23, ptr %3, align 4, !tbaa !36
  %24 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 1
  %25 = load i32, ptr %24, align 4, !tbaa !36
  store i32 %25, ptr %4, align 4, !tbaa !36
  br label %75

26:                                               ; preds = %19
  store i32 12000, ptr %3, align 4, !tbaa !36
  store i32 12000, ptr %4, align 4, !tbaa !36
  br label %75

27:                                               ; preds = %5
  %28 = and i32 %16, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #16
  %31 = getelementptr inbounds float, ptr %7, i64 1
  %32 = load <2 x float>, ptr %2, align 4, !tbaa !34
  store <2 x float> %32, ptr %7, align 8, !tbaa !34
  %33 = getelementptr inbounds float, ptr %7, i64 2
  store float 0.000000e+00, ptr %33, align 8, !tbaa !34
  %34 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 23
  call void @mul_m4_v3(ptr noundef nonnull %34, ptr noundef nonnull %7) #14
  %35 = load float, ptr %7, align 8, !tbaa !34
  %36 = load float, ptr %31, align 4, !tbaa !34
  %37 = call zeroext i8 @UI_view2d_view_to_region_clip(ptr noundef %11, float noundef %35, float noundef %36, ptr noundef %3, ptr noundef %4) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #16
  br label %75

38:                                               ; preds = %27
  %39 = icmp eq ptr %13, null
  %40 = load float, ptr %2, align 4, !tbaa !164
  %41 = fdiv float %40, 1.000000e+02
  br i1 %39, label %42, label %56

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 5
  %44 = load i16, ptr %43, align 8, !tbaa !166
  %45 = sitofp i16 %44 to float
  %46 = fmul float %41, %45
  %47 = fptosi float %46 to i32
  store i32 %47, ptr %3, align 4, !tbaa !36
  %48 = getelementptr inbounds %struct.bGPDspoint, ptr %2, i64 0, i32 1
  %49 = load float, ptr %48, align 4, !tbaa !167
  %50 = fdiv float %49, 1.000000e+02
  %51 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 6
  %52 = load i16, ptr %51, align 2, !tbaa !168
  %53 = sitofp i16 %52 to float
  %54 = fmul float %50, %53
  %55 = fptosi float %54 to i32
  store i32 %55, ptr %4, align 4, !tbaa !36
  br label %75

56:                                               ; preds = %38
  %57 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %13) #15
  %58 = fmul float %41, %57
  %59 = fptosi float %58 to i32
  %60 = sitofp i32 %59 to float
  %61 = load float, ptr %13, align 4, !tbaa !153
  %62 = fadd float %61, %60
  %63 = fptosi float %62 to i32
  store i32 %63, ptr %3, align 4, !tbaa !36
  %64 = getelementptr inbounds %struct.bGPDspoint, ptr %2, i64 0, i32 1
  %65 = load float, ptr %64, align 4, !tbaa !167
  %66 = fdiv float %65, 1.000000e+02
  %67 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %13) #15
  %68 = fmul float %66, %67
  %69 = fptosi float %68 to i32
  %70 = sitofp i32 %69 to float
  %71 = getelementptr inbounds %struct.rctf, ptr %13, i64 0, i32 2
  %72 = load float, ptr %71, align 4, !tbaa !154
  %73 = fadd float %72, %70
  %74 = fptosi float %73 to i32
  store i32 %74, ptr %4, align 4, !tbaa !36
  br label %75

75:                                               ; preds = %30, %56, %42, %22, %26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BLI_rcti_isect_pt(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc signext i16 @gp_stroke_eraser_strokeinside(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca [2 x float], align 8
  %8 = alloca [2 x float], align 8
  %9 = alloca [2 x float], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %10 = load <2 x i32>, ptr %0, align 4, !tbaa !36
  %11 = sitofp <2 x i32> %10 to <2 x float>
  store <2 x float> %11, ptr %7, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  %12 = insertelement <2 x i32> poison, i32 %2, i64 0
  %13 = insertelement <2 x i32> %12, i32 %3, i64 1
  %14 = sitofp <2 x i32> %13 to <2 x float>
  store <2 x float> %14, ptr %8, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  %15 = insertelement <2 x i32> poison, i32 %4, i64 0
  %16 = insertelement <2 x i32> %15, i32 %5, i64 1
  %17 = sitofp <2 x i32> %16 to <2 x float>
  store <2 x float> %17, ptr %9, align 8, !tbaa !34
  %18 = sitofp i32 %1 to float
  %19 = call zeroext i8 @edge_inside_circle(ptr noundef nonnull %7, float noundef %18, ptr noundef nonnull %8, ptr noundef nonnull %9) #14
  %20 = icmp ne i8 %19, 0
  %21 = zext i1 %20 to i16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  ret i16 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @gp_stroke_eraser_is_occluded(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [2 x i32], align 4
  %6 = alloca [3 x float], align 4
  %7 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !85
  %9 = getelementptr inbounds %struct.ScrArea, ptr %8, i64 0, i32 8
  %10 = load i8, ptr %9, align 8, !tbaa !105
  %11 = icmp eq i8 %10, 1
  br i1 %11, label %12, label %31

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 18
  %14 = load i16, ptr %13, align 2, !tbaa !43
  %15 = and i16 %14, 4
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !84
  %20 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 30
  %21 = load ptr, ptr %20, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  store i32 %2, ptr %5, align 4, !tbaa !36
  %22 = getelementptr inbounds i32, ptr %5, i64 1
  store i32 %3, ptr %22, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  %23 = call zeroext i8 @ED_view3d_autodist_simple(ptr noundef %19, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0, ptr noundef null) #14
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %17
  %26 = call fastcc float @view3d_point_depth(ptr noundef %21, ptr noundef nonnull %6) #15
  %27 = call fastcc float @view3d_point_depth(ptr noundef %21, ptr noundef %1) #15
  %28 = fcmp ule float %27, %26
  br i1 %28, label %29, label %30

29:                                               ; preds = %17, %25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br label %31

30:                                               ; preds = %25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br label %31

31:                                               ; preds = %4, %12, %29, %30
  %32 = phi i8 [ 1, %30 ], [ 0, %29 ], [ 0, %12 ], [ 0, %4 ]
  ret i8 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef signext i16 @gp_stroke_eraser_splitdel(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.bGPDstroke, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !144
  %6 = getelementptr inbounds %struct.bGPDstroke, ptr %1, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !138
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !26
  tail call void %10(ptr noundef %5) #14
  %11 = getelementptr inbounds %struct.bGPDframe, ptr %0, i64 0, i32 2
  tail call void @BLI_freelinkN(ptr noundef nonnull %11, ptr noundef nonnull %1) #14
  br label %99

12:                                               ; preds = %3
  %13 = add nsw i32 %7, -2
  %14 = icmp eq i32 %13, %2
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = add nsw i32 %7, -1
  store i32 %16, ptr %6, align 8, !tbaa !138
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !26
  %18 = sext i32 %16 to i64
  %19 = mul nsw i64 %18, 20
  %20 = tail call ptr %17(i64 noundef %19, ptr noundef nonnull @.str.23) #14
  store ptr %20, ptr %4, align 8, !tbaa !144
  %21 = load i32, ptr %6, align 8, !tbaa !138
  %22 = sext i32 %21 to i64
  %23 = mul nsw i64 %22, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %20, ptr align 4 %5, i64 %23, i1 false)
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !26
  tail call void %24(ptr noundef %5) #14
  br label %99

25:                                               ; preds = %12
  %26 = icmp eq i32 %2, 0
  br i1 %26, label %27, label %58

27:                                               ; preds = %25
  %28 = add nsw i32 %7, -1
  store i32 %28, ptr %6, align 8, !tbaa !138
  %29 = load ptr, ptr @MEM_callocN, align 8, !tbaa !26
  %30 = sext i32 %28 to i64
  %31 = mul nsw i64 %30, 20
  %32 = tail call ptr %29(i64 noundef %31, ptr noundef nonnull @.str.23) #14
  store ptr %32, ptr %4, align 8, !tbaa !144
  %33 = getelementptr inbounds %struct.bGPDspoint, ptr %5, i64 1
  %34 = load i32, ptr %6, align 8, !tbaa !138
  %35 = sext i32 %34 to i64
  %36 = mul nsw i64 %35, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %32, ptr nonnull align 4 %33, i64 %36, i1 false)
  %37 = getelementptr inbounds %struct.bGPDspoint, ptr %5, i64 1, i32 4
  %38 = load float, ptr %37, align 4, !tbaa !169
  %39 = fpext float %38 to double
  %40 = getelementptr inbounds %struct.bGPDstroke, ptr %1, i64 0, i32 7
  %41 = load double, ptr %40, align 8, !tbaa !143
  %42 = fadd double %41, %39
  store double %42, ptr %40, align 8, !tbaa !143
  %43 = load i32, ptr %6, align 8, !tbaa !138
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %27
  %46 = load ptr, ptr %4, align 8, !tbaa !144
  br label %47

47:                                               ; preds = %45, %47
  %48 = phi i32 [ %53, %47 ], [ 0, %45 ]
  %49 = phi ptr [ %54, %47 ], [ %46, %45 ]
  %50 = getelementptr inbounds %struct.bGPDspoint, ptr %49, i64 0, i32 4
  %51 = load float, ptr %50, align 4, !tbaa !169
  %52 = fsub float %51, %38
  store float %52, ptr %50, align 4, !tbaa !169
  %53 = add nuw nsw i32 %48, 1
  %54 = getelementptr inbounds %struct.bGPDspoint, ptr %49, i64 1
  %55 = icmp eq i32 %53, %43
  br i1 %55, label %56, label %47, !llvm.loop !170

56:                                               ; preds = %47, %27
  %57 = load ptr, ptr @MEM_freeN, align 8, !tbaa !26
  tail call void %57(ptr noundef %5) #14
  br label %99

58:                                               ; preds = %25
  %59 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !26
  %60 = tail call ptr %59(ptr noundef nonnull %1) #14
  %61 = getelementptr inbounds %struct.bGPDframe, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %60, i8 0, i64 16, i1 false)
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %61, ptr noundef nonnull %1, ptr noundef nonnull %60) #14
  %62 = load i32, ptr %6, align 8, !tbaa !138
  %63 = sub nsw i32 %62, %2
  %64 = getelementptr inbounds %struct.bGPDstroke, ptr %60, i64 0, i32 4
  store i32 %63, ptr %64, align 8, !tbaa !138
  %65 = load ptr, ptr @MEM_callocN, align 8, !tbaa !26
  %66 = sext i32 %63 to i64
  %67 = mul nsw i64 %66, 20
  %68 = tail call ptr %65(i64 noundef %67, ptr noundef nonnull @.str.23) #14
  %69 = getelementptr inbounds %struct.bGPDstroke, ptr %60, i64 0, i32 2
  store ptr %68, ptr %69, align 8, !tbaa !144
  %70 = sext i32 %2 to i64
  %71 = getelementptr inbounds %struct.bGPDspoint, ptr %5, i64 %70
  %72 = load i32, ptr %64, align 8, !tbaa !138
  %73 = sext i32 %72 to i64
  %74 = mul nsw i64 %73, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %68, ptr nonnull align 4 %71, i64 %74, i1 false)
  %75 = getelementptr inbounds %struct.bGPDspoint, ptr %5, i64 %70, i32 4
  %76 = load float, ptr %75, align 4, !tbaa !169
  %77 = fpext float %76 to double
  %78 = getelementptr inbounds %struct.bGPDstroke, ptr %60, i64 0, i32 7
  %79 = load double, ptr %78, align 8, !tbaa !143
  %80 = fadd double %79, %77
  store double %80, ptr %78, align 8, !tbaa !143
  %81 = load i32, ptr %64, align 8, !tbaa !138
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %58
  %84 = load ptr, ptr %69, align 8, !tbaa !144
  br label %85

85:                                               ; preds = %83, %85
  %86 = phi i32 [ %91, %85 ], [ 0, %83 ]
  %87 = phi ptr [ %92, %85 ], [ %84, %83 ]
  %88 = getelementptr inbounds %struct.bGPDspoint, ptr %87, i64 0, i32 4
  %89 = load float, ptr %88, align 4, !tbaa !169
  %90 = fsub float %89, %76
  store float %90, ptr %88, align 4, !tbaa !169
  %91 = add nuw nsw i32 %86, 1
  %92 = getelementptr inbounds %struct.bGPDspoint, ptr %87, i64 1
  %93 = icmp eq i32 %91, %81
  br i1 %93, label %94, label %85, !llvm.loop !171

94:                                               ; preds = %85, %58
  store i32 %2, ptr %6, align 8, !tbaa !138
  %95 = load ptr, ptr @MEM_callocN, align 8, !tbaa !26
  %96 = mul nsw i64 %70, 20
  %97 = tail call ptr %95(i64 noundef %96, ptr noundef nonnull @.str.23) #14
  store ptr %97, ptr %4, align 8, !tbaa !144
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %97, ptr align 4 %5, i64 %96, i1 false)
  %98 = load ptr, ptr @MEM_freeN, align 8, !tbaa !26
  tail call void %98(ptr noundef %5) #14
  br label %99

99:                                               ; preds = %94, %56, %15, %9
  %100 = phi i16 [ 1, %9 ], [ 1, %15 ], [ 0, %56 ], [ 1, %94 ]
  ret i16 %100
}

; Function Attrs: optsize
declare i32 @ED_view3d_project_int_global(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @UI_view2d_view_to_region_clip(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @edge_inside_circle(ptr noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @view3d_point_depth(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 24
  %4 = load i8, ptr %3, align 8, !tbaa !172
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call float @ED_view3d_calc_zfac(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null) #14
  br label %12

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 2, i64 2
  %10 = tail call fastcc float @dot_v3v3(ptr noundef nonnull %9, ptr noundef %1) #15
  %11 = fneg float %10
  br label %12

12:                                               ; preds = %8, %6
  %13 = phi float [ %7, %6 ], [ %11, %8 ]
  ret float %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: optsize
declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: optsize
declare void @gpencil_undo_finish() local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_cursor_modal_restore(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gpencil_draw_toggle_eraser_cursor(ptr noundef %0, ptr noundef %1, i16 noundef signext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 25
  %5 = load ptr, ptr %4, align 8, !tbaa !173
  %6 = icmp eq ptr %5, null
  %7 = icmp ne i16 %2, 0
  %8 = or i1 %7, %6
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @CTX_wm_manager(ptr noundef %0) #14
  %11 = load ptr, ptr %4, align 8, !tbaa !173
  tail call void @WM_paint_cursor_end(ptr noundef %10, ptr noundef %11) #14
  br label %16

12:                                               ; preds = %3
  br i1 %7, label %13, label %18

13:                                               ; preds = %12
  %14 = tail call ptr @CTX_wm_manager(ptr noundef %0) #14
  %15 = tail call ptr @WM_paint_cursor_activate(ptr noundef %14, ptr noundef null, ptr noundef nonnull @gpencil_draw_eraser, ptr noundef nonnull %1) #14
  br label %16

16:                                               ; preds = %9, %13
  %17 = phi ptr [ %15, %13 ], [ null, %9 ]
  store ptr %17, ptr %4, align 8, !tbaa !173
  br label %18

18:                                               ; preds = %16, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gp_paint_cleanup(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !94
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call fastcc void @gp_paint_strokeend(ptr noundef nonnull %0) #15
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !102
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bGPDframe, ptr %8, i64 0, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !103
  %13 = and i32 %12, -2
  store i32 %13, ptr %11, align 4, !tbaa !103
  br label %14

14:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gp_session_cleanup(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !94
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bGPdata, ptr %5, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !129
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !26
  tail call void %12(ptr noundef nonnull %9) #14
  store ptr null, ptr %8, align 8, !tbaa !129
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %struct.bGPdata, ptr %5, i64 0, i32 3
  store i16 0, ptr %14, align 4, !tbaa !130
  %15 = getelementptr inbounds %struct.bGPdata, ptr %5, i64 0, i32 4
  store i16 0, ptr %15, align 2, !tbaa !97
  %16 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 19
  store double 0.000000e+00, ptr %16, align 8, !tbaa !41
  br label %17

17:                                               ; preds = %1, %3, %13
  ret void
}

; Function Attrs: optsize
declare void @WM_paint_cursor_end(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_paint_cursor_activate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gpencil_draw_eraser(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.tGPsdata, ptr %3, i64 0, i32 12
  %6 = load i16, ptr %5, align 2, !tbaa !44
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  tail call void @glPushMatrix() #14
  %9 = sitofp i32 %1 to float
  %10 = sitofp i32 %2 to float
  tail call void @glTranslatef(float noundef %9, float noundef %10, float noundef 0.000000e+00) #14
  tail call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -128) #14
  tail call void @glEnable(i32 noundef 2848) #14
  tail call void @glEnable(i32 noundef 3042) #14
  %11 = getelementptr inbounds %struct.tGPsdata, ptr %3, i64 0, i32 17
  %12 = load i16, ptr %11, align 4, !tbaa !83
  %13 = sitofp i16 %12 to float
  tail call void @glutil_draw_lined_arc(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef %13, i32 noundef 40) #14
  tail call void @glDisable(i32 noundef 3042) #14
  tail call void @glDisable(i32 noundef 2848) #14
  tail call void @glPopMatrix() #14
  br label %14

14:                                               ; preds = %8, %4
  ret void
}

; Function Attrs: optsize
declare void @glPushMatrix() local_unnamed_addr #1

; Function Attrs: optsize
declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glutil_draw_lined_arc(float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glPopMatrix() local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_cursor_modal_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gpencil_draw_apply_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca [2 x float], align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %7 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !36
  %9 = add nsw i32 %8, 1
  %10 = getelementptr inbounds %struct.tGPsdata, ptr %6, i64 0, i32 13
  store i32 %9, ptr %10, align 4, !tbaa !36
  %11 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 6, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !36
  %13 = add nsw i32 %12, 1
  %14 = getelementptr inbounds %struct.tGPsdata, ptr %6, i64 0, i32 13, i64 1
  store i32 %13, ptr %14, align 4, !tbaa !36
  %15 = tail call double @PIL_check_seconds_timer() #14
  %16 = getelementptr inbounds %struct.tGPsdata, ptr %6, i64 0, i32 20
  store double %15, ptr %16, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 24
  %18 = load ptr, ptr %17, align 8, !tbaa !174
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load i32, ptr %18, align 4, !tbaa !175
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.wmTabletData, ptr %18, i64 0, i32 1
  %24 = load float, ptr %23, align 4, !tbaa !177
  br label %25

25:                                               ; preds = %2, %20
  %26 = phi float [ %24, %20 ], [ 1.000000e+00, %2 ]
  %27 = phi i1 [ %22, %20 ], [ true, %2 ]
  %28 = getelementptr inbounds %struct.tGPsdata, ptr %6, i64 0, i32 15
  store float %26, ptr %28, align 4
  %29 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !27
  call void @RNA_collection_add(ptr noundef %30, ptr noundef nonnull @.str.6, ptr noundef nonnull %3) #14
  %31 = load <2 x i32>, ptr %10, align 4, !tbaa !36
  %32 = sitofp <2 x i32> %31 to <2 x float>
  store <2 x float> %32, ptr %4, align 8, !tbaa !34
  call void @RNA_float_set_array(ptr noundef nonnull %3, ptr noundef nonnull @.str.9, ptr noundef nonnull %4) #14
  %33 = load float, ptr %28, align 4, !tbaa !37
  call void @RNA_float_set(ptr noundef nonnull %3, ptr noundef nonnull @.str.10, float noundef %33) #14
  %34 = getelementptr inbounds %struct.tGPsdata, ptr %6, i64 0, i32 18
  %35 = load i16, ptr %34, align 2, !tbaa !43
  %36 = and i16 %35, 1
  %37 = zext nneg i16 %36 to i32
  call void @RNA_boolean_set(ptr noundef nonnull %3, ptr noundef nonnull @.str.12, i32 noundef %37) #14
  %38 = load i16, ptr %34, align 2, !tbaa !43
  %39 = and i16 %38, 1
  %40 = icmp eq i16 %39, 0
  %41 = load double, ptr %16, align 8, !tbaa !42
  br i1 %40, label %42, label %45

42:                                               ; preds = %25
  %43 = getelementptr inbounds %struct.tGPsdata, ptr %6, i64 0, i32 19
  %44 = load double, ptr %43, align 8, !tbaa !41
  br label %55

45:                                               ; preds = %25
  %46 = and i16 %38, -2
  store i16 %46, ptr %34, align 2, !tbaa !43
  %47 = getelementptr inbounds %struct.tGPsdata, ptr %6, i64 0, i32 14
  %48 = load <2 x i32>, ptr %10, align 4, !tbaa !36
  store <2 x i32> %48, ptr %47, align 4, !tbaa !36
  %49 = load float, ptr %28, align 4, !tbaa !37
  %50 = getelementptr inbounds %struct.tGPsdata, ptr %6, i64 0, i32 16
  store float %49, ptr %50, align 8, !tbaa !45
  %51 = getelementptr inbounds %struct.tGPsdata, ptr %6, i64 0, i32 21
  store double %41, ptr %51, align 8, !tbaa !46
  %52 = getelementptr inbounds %struct.tGPsdata, ptr %6, i64 0, i32 19
  store double %41, ptr %52, align 8, !tbaa !41
  %53 = fcmp ult float %49, 0x3FEFAE1480000000
  %54 = select i1 %27, i1 true, i1 %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %42, %45
  %56 = phi double [ %44, %42 ], [ %41, %45 ]
  %57 = fsub double %41, %56
  %58 = fptrunc double %57 to float
  call void @RNA_float_set(ptr noundef nonnull %3, ptr noundef nonnull @.str.11, float noundef %58) #14
  call fastcc void @gpencil_draw_apply(ptr noundef nonnull %0, ptr noundef nonnull %6) #15
  %59 = getelementptr inbounds %struct.tGPsdata, ptr %6, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !84
  call void @ED_region_tag_redraw(ptr noundef %60) #14
  br label %61

61:                                               ; preds = %45, %55
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  ret void
}

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare double @PIL_check_seconds_timer() local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_collection_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gpencil_stroke_end(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !24
  tail call fastcc void @gp_paint_cleanup(ptr noundef %3) #15
  %4 = getelementptr inbounds %struct.tGPsdata, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !94
  tail call void @gpencil_undo_push(ptr noundef %5) #14
  tail call fastcc void @gp_session_cleanup(ptr noundef %3) #15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %4, i8 0, i64 26, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gpencil_stroke_begin(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !24
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  %6 = getelementptr inbounds %struct.tGPsdata, ptr %4, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !85
  %8 = icmp eq ptr %5, %7
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.64)
  %11 = getelementptr inbounds %struct.tGPsdata, ptr %4, i64 0, i32 11
  store i16 2, ptr %11, align 8, !tbaa !53
  br label %12

12:                                               ; preds = %9, %2
  %13 = tail call fastcc i32 @gp_session_initdata(ptr noundef %0, ptr noundef nonnull %4) #15, !range !23
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.tGPsdata, ptr %4, i64 0, i32 12
  %17 = load i16, ptr %16, align 2, !tbaa !44
  tail call fastcc void @gp_paint_initstroke(ptr noundef nonnull %4, i16 noundef signext %17) #15
  br label %18

18:                                               ; preds = %15, %12
  %19 = getelementptr inbounds %struct.tGPsdata, ptr %4, i64 0, i32 11
  %20 = load i16, ptr %19, align 8, !tbaa !53
  %21 = icmp eq i16 %20, 2
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store i16 1, ptr %19, align 8, !tbaa !53
  br label %23

23:                                               ; preds = %22, %18
  %24 = load ptr, ptr %3, align 8, !tbaa !24
  ret ptr %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gpencil_area_exists(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_screen(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.bScreen, ptr %3, i64 0, i32 3
  %5 = tail call i32 @BLI_findindex(ptr noundef nonnull %4, ptr noundef %1) #14
  %6 = icmp ne i32 %5, -1
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gpencil_draw_status_indicators(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 11
  %3 = load i16, ptr %2, align 8, !tbaa !53
  switch i16 %3, label %27 [
    i16 1, label %4
    i16 0, label %15
    i16 2, label %24
    i16 3, label %24
  ]

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  %8 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 15
  %9 = load i8, ptr %8, align 2, !tbaa !76
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !85
  tail call void @ED_area_headerprint(ptr noundef %14, ptr noundef nonnull @.str.34) #14
  br label %27

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 12
  %17 = load i16, ptr %16, align 2, !tbaa !44
  %18 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !85
  switch i16 %17, label %23 [
    i16 1, label %20
    i16 2, label %21
    i16 0, label %22
  ]

20:                                               ; preds = %15
  tail call void @ED_area_headerprint(ptr noundef %19, ptr noundef nonnull @.str.35) #14
  br label %27

21:                                               ; preds = %15
  tail call void @ED_area_headerprint(ptr noundef %19, ptr noundef nonnull @.str.36) #14
  br label %27

22:                                               ; preds = %15
  tail call void @ED_area_headerprint(ptr noundef %19, ptr noundef nonnull @.str.37) #14
  br label %27

23:                                               ; preds = %15
  tail call void @ED_area_headerprint(ptr noundef %19, ptr noundef nonnull @.str.38) #14
  br label %27

24:                                               ; preds = %1, %1
  %25 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !85
  tail call void @ED_area_headerprint(ptr noundef %26, ptr noundef null) #14
  br label %27

27:                                               ; preds = %20, %21, %22, %23, %4, %12, %1, %24
  ret void
}

; Function Attrs: optsize
declare void @gpencil_undo_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_area_headerprint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ED_operator_regionactive(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CTX_wm_operator_poll_msg_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #13

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind optsize }
attributes #15 = { optsize }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"wmOperatorType", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !10, i64 112, !7, i64 128, !7, i64 136, !7, i64 144, !11, i64 152, !12, i64 184}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ListBase", !7, i64 0, !7, i64 8}
!11 = !{!"ExtensionRNA", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!12 = !{!"short", !8, i64 0}
!13 = !{!6, !7, i64 8}
!14 = !{!6, !7, i64 24}
!15 = !{!6, !7, i64 32}
!16 = !{!6, !7, i64 48}
!17 = !{!6, !7, i64 64}
!18 = !{!6, !7, i64 56}
!19 = !{!6, !7, i64 72}
!20 = !{!6, !12, i64 184}
!21 = !{!6, !7, i64 88}
!22 = !{!6, !7, i64 104}
!23 = !{i32 0, i32 2}
!24 = !{!25, !7, i64 96}
!25 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!26 = !{!7, !7, i64 0}
!27 = !{!25, !7, i64 112}
!28 = !{!29, !32, i64 128}
!29 = !{!"CollectionPropertyIterator", !30, i64 0, !30, i64 24, !7, i64 48, !8, i64 56, !32, i64 96, !32, i64 100, !30, i64 104, !32, i64 128}
!30 = !{!"PointerRNA", !31, i64 0, !7, i64 8, !7, i64 16}
!31 = !{!"", !7, i64 0}
!32 = !{!"int", !8, i64 0}
!33 = !{i64 0, i64 8, !26, i64 8, i64 8, !26, i64 16, i64 8, !26}
!34 = !{!35, !35, i64 0}
!35 = !{!"float", !8, i64 0}
!36 = !{!32, !32, i64 0}
!37 = !{!38, !35, i64 132}
!38 = !{!"tGPsdata", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !39, i64 48, !30, i64 64, !7, i64 88, !7, i64 96, !7, i64 104, !12, i64 112, !12, i64 114, !8, i64 116, !8, i64 124, !35, i64 132, !35, i64 136, !12, i64 140, !12, i64 142, !40, i64 144, !40, i64 152, !40, i64 160, !8, i64 168, !8, i64 232, !8, i64 296, !7, i64 312}
!39 = !{!"rctf", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12}
!40 = !{!"double", !8, i64 0}
!41 = !{!38, !40, i64 144}
!42 = !{!38, !40, i64 152}
!43 = !{!38, !12, i64 142}
!44 = !{!38, !12, i64 114}
!45 = !{!38, !35, i64 136}
!46 = !{!38, !40, i64 160}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!50, !32, i64 2100}
!50 = !{!"Global", !7, i64 0, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 2057, !8, i64 2058, !10, i64 2064, !8, i64 2080, !8, i64 2081, !8, i64 2082, !12, i64 2084, !12, i64 2086, !12, i64 2088, !8, i64 2090, !12, i64 2092, !32, i64 2096, !32, i64 2100, !8, i64 2104, !32, i64 2108, !32, i64 2112, !8, i64 2116}
!51 = !{!52, !12, i64 18}
!52 = !{!"wmEvent", !7, i64 0, !7, i64 8, !12, i64 16, !12, i64 18, !32, i64 20, !32, i64 24, !8, i64 28, !8, i64 36, !8, i64 42, !8, i64 43, !12, i64 44, !12, i64 46, !32, i64 48, !32, i64 52, !40, i64 56, !32, i64 64, !32, i64 68, !12, i64 72, !12, i64 74, !12, i64 76, !12, i64 78, !12, i64 80, !12, i64 82, !7, i64 88, !7, i64 96, !12, i64 104, !12, i64 106, !32, i64 108, !7, i64 112}
!53 = !{!38, !12, i64 112}
!54 = !{!52, !12, i64 16}
!55 = !{!38, !7, i64 0}
!56 = !{!57, !7, i64 264}
!57 = !{!"Scene", !58, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !10, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !32, i64 232, !32, i64 236, !32, i64 240, !12, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !59, i64 280, !67, i64 4264, !10, i64 4296, !10, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !12, i64 4376, !12, i64 4378, !32, i64 4380, !10, i64 4384, !68, i64 4400, !69, i64 4416, !72, i64 4600, !7, i64 4608, !73, i64 4616, !7, i64 4640, !74, i64 4648, !74, i64 4656, !61, i64 4664, !62, i64 4824, !75, i64 4888, !7, i64 4952}
!58 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !32, i64 100, !32, i64 104, !32, i64 108, !7, i64 112}
!59 = !{!"RenderData", !60, i64 0, !7, i64 248, !7, i64 256, !63, i64 264, !64, i64 328, !32, i64 400, !32, i64 404, !32, i64 408, !35, i64 412, !32, i64 416, !32, i64 420, !32, i64 424, !32, i64 428, !12, i64 432, !12, i64 434, !35, i64 436, !35, i64 440, !35, i64 444, !35, i64 448, !35, i64 452, !12, i64 456, !12, i64 458, !12, i64 460, !12, i64 462, !12, i64 464, !12, i64 466, !32, i64 468, !12, i64 472, !12, i64 474, !12, i64 476, !12, i64 478, !12, i64 480, !12, i64 482, !32, i64 484, !32, i64 488, !12, i64 492, !12, i64 494, !32, i64 496, !32, i64 500, !12, i64 504, !12, i64 506, !12, i64 508, !12, i64 510, !12, i64 512, !8, i64 514, !8, i64 515, !32, i64 516, !32, i64 520, !32, i64 524, !12, i64 528, !12, i64 530, !12, i64 532, !12, i64 534, !12, i64 536, !12, i64 538, !12, i64 540, !12, i64 542, !39, i64 544, !39, i64 560, !65, i64 576, !10, i64 592, !12, i64 608, !12, i64 610, !35, i64 612, !35, i64 616, !35, i64 620, !35, i64 624, !32, i64 628, !35, i64 632, !35, i64 636, !35, i64 640, !35, i64 644, !12, i64 648, !12, i64 650, !12, i64 652, !12, i64 654, !12, i64 656, !12, i64 658, !35, i64 660, !35, i64 664, !12, i64 668, !12, i64 670, !35, i64 672, !35, i64 676, !8, i64 680, !32, i64 1704, !12, i64 1708, !12, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !32, i64 2520, !12, i64 2524, !12, i64 2526, !35, i64 2528, !35, i64 2532, !12, i64 2536, !12, i64 2538, !35, i64 2540, !12, i64 2544, !12, i64 2546, !32, i64 2548, !12, i64 2552, !12, i64 2554, !12, i64 2556, !12, i64 2558, !35, i64 2560, !35, i64 2564, !7, i64 2568, !32, i64 2576, !35, i64 2580, !8, i64 2584, !66, i64 2616, !32, i64 3976, !32, i64 3980}
!60 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !12, i64 8, !12, i64 10, !35, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !61, i64 24, !62, i64 184}
!61 = !{!"ColorManagedViewSettings", !32, i64 0, !32, i64 4, !8, i64 8, !8, i64 72, !35, i64 136, !35, i64 140, !7, i64 144, !7, i64 152}
!62 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!63 = !{!"QuicktimeCodecSettings", !32, i64 0, !32, i64 4, !32, i64 8, !32, i64 12, !32, i64 16, !32, i64 20, !32, i64 24, !32, i64 28, !32, i64 32, !32, i64 36, !32, i64 40, !32, i64 44, !12, i64 48, !12, i64 50, !32, i64 52, !32, i64 56, !32, i64 60}
!64 = !{!"FFMpegCodecData", !32, i64 0, !32, i64 4, !32, i64 8, !32, i64 12, !32, i64 16, !32, i64 20, !32, i64 24, !32, i64 28, !35, i64 32, !32, i64 36, !32, i64 40, !32, i64 44, !32, i64 48, !32, i64 52, !32, i64 56, !32, i64 60, !7, i64 64}
!65 = !{!"rcti", !32, i64 0, !32, i64 4, !32, i64 8, !32, i64 12}
!66 = !{!"BakeData", !60, i64 0, !8, i64 248, !12, i64 1272, !12, i64 1274, !12, i64 1276, !12, i64 1278, !35, i64 1280, !35, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!67 = !{!"AudioData", !32, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !32, i64 16, !12, i64 20, !12, i64 22, !35, i64 24, !35, i64 28}
!68 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!69 = !{!"GameData", !68, i64 0, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !12, i64 32, !8, i64 34, !70, i64 40, !12, i64 64, !12, i64 66, !35, i64 68, !71, i64 72, !35, i64 128, !35, i64 132, !32, i64 136, !12, i64 140, !12, i64 142, !12, i64 144, !12, i64 146, !12, i64 148, !12, i64 150, !12, i64 152, !12, i64 154, !12, i64 156, !12, i64 158, !12, i64 160, !12, i64 162, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180}
!70 = !{!"GameDome", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !35, i64 8, !35, i64 12, !7, i64 16}
!71 = !{!"RecastData", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !32, i64 40, !35, i64 44, !35, i64 48, !12, i64 52, !12, i64 54}
!72 = !{!"UnitSettings", !35, i64 0, !8, i64 4, !8, i64 5, !12, i64 6}
!73 = !{!"PhysicsSettings", !8, i64 0, !32, i64 12, !32, i64 16, !32, i64 20}
!74 = !{!"long", !8, i64 0}
!75 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!76 = !{!77, !8, i64 58}
!77 = !{!"ToolSettings", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !35, i64 32, !35, i64 36, !35, i64 40, !12, i64 44, !12, i64 46, !8, i64 48, !8, i64 49, !8, i64 50, !8, i64 51, !35, i64 52, !12, i64 56, !8, i64 58, !8, i64 59, !78, i64 64, !80, i64 168, !35, i64 336, !35, i64 340, !12, i64 344, !12, i64 346, !8, i64 348, !8, i64 349, !12, i64 350, !35, i64 352, !35, i64 356, !35, i64 360, !35, i64 364, !35, i64 368, !35, i64 372, !35, i64 376, !35, i64 380, !35, i64 384, !35, i64 388, !12, i64 392, !8, i64 394, !8, i64 395, !8, i64 396, !8, i64 399, !7, i64 400, !8, i64 408, !8, i64 409, !8, i64 410, !8, i64 411, !8, i64 412, !8, i64 413, !8, i64 421, !8, i64 429, !8, i64 430, !8, i64 431, !8, i64 432, !8, i64 433, !12, i64 434, !12, i64 436, !12, i64 438, !12, i64 440, !8, i64 442, !8, i64 443, !8, i64 444, !8, i64 445, !8, i64 446, !8, i64 447, !32, i64 448, !32, i64 452, !32, i64 456, !32, i64 460, !12, i64 464, !12, i64 466, !32, i64 468, !35, i64 472, !35, i64 476, !81, i64 480, !82, i64 608}
!78 = !{!"ImagePaintSettings", !79, i64 0, !12, i64 40, !12, i64 42, !12, i64 44, !12, i64 46, !8, i64 48, !32, i64 52, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !8, i64 88, !35, i64 100}
!79 = !{!"Paint", !7, i64 0, !7, i64 8, !7, i64 16, !8, i64 24, !32, i64 28, !32, i64 32, !32, i64 36}
!80 = !{!"ParticleEditSettings", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !8, i64 8, !7, i64 120, !35, i64 128, !35, i64 132, !32, i64 136, !32, i64 140, !32, i64 144, !32, i64 148, !7, i64 152, !7, i64 160}
!81 = !{!"UnifiedPaintSettings", !32, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !8, i64 16, !8, i64 28, !32, i64 40, !8, i64 44, !35, i64 52, !32, i64 56, !32, i64 60, !8, i64 64, !8, i64 65, !35, i64 72, !8, i64 76, !32, i64 84, !35, i64 88, !8, i64 92, !8, i64 100, !32, i64 108, !7, i64 112, !35, i64 120, !32, i64 124}
!82 = !{!"MeshStatVis", !8, i64 0, !8, i64 1, !8, i64 3, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !8, i64 20, !8, i64 21, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36}
!83 = !{!38, !12, i64 140}
!84 = !{!38, !7, i64 24}
!85 = !{!38, !7, i64 16}
!86 = !{i8 0, i8 2}
!87 = !{!88, !12, i64 8720}
!88 = !{!"UserDef", !32, i64 0, !32, i64 4, !32, i64 8, !32, i64 12, !32, i64 16, !8, i64 20, !8, i64 788, !8, i64 1556, !8, i64 2580, !8, i64 3348, !8, i64 4116, !8, i64 4884, !8, i64 5652, !8, i64 6420, !8, i64 7444, !32, i64 8468, !12, i64 8472, !12, i64 8474, !12, i64 8476, !12, i64 8478, !12, i64 8480, !12, i64 8482, !32, i64 8484, !32, i64 8488, !32, i64 8492, !12, i64 8496, !12, i64 8498, !32, i64 8500, !32, i64 8504, !32, i64 8508, !32, i64 8512, !32, i64 8516, !32, i64 8520, !32, i64 8524, !12, i64 8528, !12, i64 8530, !12, i64 8532, !12, i64 8534, !10, i64 8536, !10, i64 8552, !10, i64 8568, !10, i64 8584, !10, i64 8600, !10, i64 8616, !10, i64 8632, !8, i64 8648, !12, i64 8712, !12, i64 8714, !12, i64 8716, !12, i64 8718, !12, i64 8720, !12, i64 8722, !12, i64 8724, !12, i64 8726, !8, i64 8728, !12, i64 8896, !12, i64 8898, !12, i64 8900, !12, i64 8902, !12, i64 8904, !12, i64 8906, !12, i64 8908, !12, i64 8910, !32, i64 8912, !32, i64 8916, !12, i64 8920, !12, i64 8922, !12, i64 8924, !12, i64 8926, !12, i64 8928, !12, i64 8930, !12, i64 8932, !12, i64 8934, !12, i64 8936, !12, i64 8938, !8, i64 8940, !8, i64 8941, !8, i64 8942, !8, i64 8943, !12, i64 8944, !12, i64 8946, !12, i64 8948, !12, i64 8950, !12, i64 8952, !12, i64 8954, !35, i64 8956, !35, i64 8960, !32, i64 8964, !12, i64 8968, !12, i64 8970, !35, i64 8972, !12, i64 8976, !12, i64 8978, !12, i64 8980, !12, i64 8982, !89, i64 8984, !8, i64 9760, !8, i64 9772, !12, i64 9788, !8, i64 9790, !8, i64 9791, !8, i64 9792, !8, i64 9872, !32, i64 10896, !32, i64 10900, !35, i64 10904, !35, i64 10908, !32, i64 10912, !12, i64 10916, !12, i64 10918, !12, i64 10920, !12, i64 10922, !12, i64 10924, !12, i64 10926, !90, i64 10928}
!89 = !{!"ColorBand", !12, i64 0, !12, i64 2, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8}
!90 = !{!"WalkNavigation", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !12, i64 24, !8, i64 26}
!91 = !{!92, !7, i64 96}
!92 = !{!"ScrArea", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !65, i64 56, !8, i64 72, !8, i64 73, !12, i64 74, !12, i64 76, !12, i64 78, !12, i64 80, !12, i64 82, !12, i64 84, !8, i64 86, !8, i64 87, !7, i64 88, !10, i64 96, !10, i64 112, !10, i64 128, !10, i64 144}
!93 = !{!38, !7, i64 8}
!94 = !{!38, !7, i64 88}
!95 = !{!96, !32, i64 136}
!96 = !{!"bGPdata", !58, i64 0, !10, i64 120, !32, i64 136, !12, i64 140, !12, i64 142, !7, i64 144}
!97 = !{!96, !12, i64 142}
!98 = !{!38, !7, i64 96}
!99 = !{!100, !32, i64 40}
!100 = !{!"bGPDlayer", !7, i64 0, !7, i64 8, !10, i64 16, !7, i64 32, !32, i64 40, !12, i64 44, !12, i64 46, !8, i64 48, !8, i64 64}
!101 = !{!57, !32, i64 680}
!102 = !{!38, !7, i64 104}
!103 = !{!104, !32, i64 36}
!104 = !{!"bGPDframe", !7, i64 0, !7, i64 8, !10, i64 16, !32, i64 32, !32, i64 36}
!105 = !{!92, !8, i64 72}
!106 = !{!107, !7, i64 376}
!107 = !{!"ARegion", !7, i64 0, !7, i64 8, !108, i64 16, !65, i64 176, !65, i64 192, !12, i64 208, !12, i64 210, !12, i64 212, !12, i64 214, !12, i64 216, !12, i64 218, !35, i64 220, !12, i64 224, !12, i64 226, !12, i64 228, !12, i64 230, !12, i64 232, !12, i64 234, !12, i64 236, !12, i64 238, !7, i64 240, !10, i64 248, !10, i64 264, !10, i64 280, !10, i64 296, !10, i64 312, !10, i64 328, !10, i64 344, !7, i64 360, !7, i64 368, !7, i64 376}
!108 = !{!"View2D", !39, i64 0, !39, i64 16, !65, i64 32, !65, i64 48, !65, i64 64, !8, i64 80, !8, i64 88, !35, i64 96, !35, i64 100, !12, i64 104, !12, i64 106, !12, i64 108, !12, i64 110, !12, i64 112, !12, i64 114, !12, i64 116, !12, i64 118, !12, i64 120, !12, i64 122, !12, i64 124, !12, i64 126, !7, i64 128, !32, i64 136, !32, i64 140, !7, i64 144, !7, i64 152}
!109 = !{!110, !8, i64 809}
!110 = !{!"RegionView3D", !8, i64 0, !8, i64 64, !8, i64 128, !8, i64 192, !8, i64 256, !8, i64 320, !8, i64 384, !8, i64 448, !8, i64 544, !7, i64 640, !7, i64 648, !7, i64 656, !7, i64 664, !7, i64 672, !7, i64 680, !7, i64 688, !8, i64 696, !8, i64 760, !35, i64 776, !35, i64 780, !35, i64 784, !35, i64 788, !8, i64 792, !35, i64 804, !8, i64 808, !8, i64 809, !8, i64 810, !8, i64 811, !8, i64 812, !8, i64 813, !8, i64 816, !12, i64 824, !12, i64 826, !8, i64 828, !12, i64 844, !12, i64 846, !35, i64 848, !8, i64 852, !35, i64 864, !8, i64 868}
!111 = !{!38, !7, i64 40}
!112 = !{!113, !7, i64 40}
!113 = !{!"SpaceImage", !7, i64 0, !7, i64 8, !10, i64 16, !32, i64 32, !32, i64 36, !7, i64 40, !114, i64 48, !7, i64 88, !115, i64 96, !116, i64 5360, !7, i64 10520, !8, i64 10528, !35, i64 10536, !35, i64 10540, !35, i64 10544, !35, i64 10548, !35, i64 10552, !8, i64 10556, !8, i64 10557, !12, i64 10558, !12, i64 10560, !12, i64 10562, !8, i64 10564, !8, i64 10565, !8, i64 10566, !8, i64 10567, !117, i64 10568}
!114 = !{!"ImageUser", !7, i64 0, !32, i64 8, !32, i64 12, !32, i64 16, !32, i64 20, !8, i64 24, !8, i64 25, !8, i64 26, !8, i64 27, !12, i64 28, !12, i64 30, !12, i64 32, !12, i64 34, !32, i64 36}
!115 = !{!"Scopes", !32, i64 0, !32, i64 4, !32, i64 8, !35, i64 12, !32, i64 16, !35, i64 20, !35, i64 24, !32, i64 28, !35, i64 32, !32, i64 36, !8, i64 40, !116, i64 64, !7, i64 5224, !7, i64 5232, !7, i64 5240, !7, i64 5248, !32, i64 5256, !32, i64 5260}
!116 = !{!"Histogram", !32, i64 0, !32, i64 4, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 3080, !8, i64 4104, !35, i64 5128, !35, i64 5132, !12, i64 5136, !12, i64 5138, !32, i64 5140, !8, i64 5144}
!117 = !{!"MaskSpaceInfo", !7, i64 0, !8, i64 8, !8, i64 9, !8, i64 10, !8, i64 11}
!118 = !{i16 -2, i16 2}
!119 = !{!25, !7, i64 120}
!120 = !{!38, !7, i64 32}
!121 = !{!122, !12, i64 224}
!122 = !{!"SpaceSeq", !7, i64 0, !7, i64 8, !10, i64 16, !32, i64 32, !35, i64 36, !8, i64 40, !108, i64 56, !35, i64 216, !35, i64 220, !12, i64 224, !12, i64 226, !12, i64 228, !12, i64 230, !32, i64 232, !35, i64 236, !32, i64 240, !32, i64 244, !7, i64 248, !123, i64 256}
!123 = !{!"SequencerScopes", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40}
!124 = !{!125, !12, i64 372}
!125 = !{!"SpaceClip", !7, i64 0, !7, i64 8, !10, i64 16, !32, i64 32, !35, i64 36, !35, i64 40, !35, i64 44, !35, i64 48, !35, i64 52, !126, i64 56, !7, i64 64, !127, i64 72, !32, i64 208, !12, i64 212, !12, i64 214, !32, i64 216, !8, i64 220, !35, i64 228, !35, i64 232, !32, i64 236, !8, i64 240, !8, i64 304, !32, i64 368, !12, i64 372, !12, i64 374, !32, i64 376, !32, i64 380, !8, i64 384, !117, i64 392}
!126 = !{!"MovieClipUser", !32, i64 0, !12, i64 4, !12, i64 6}
!127 = !{!"MovieClipScopes", !12, i64 0, !12, i64 2, !32, i64 4, !32, i64 8, !32, i64 12, !128, i64 16, !7, i64 80, !7, i64 88, !8, i64 96, !12, i64 104, !12, i64 106, !32, i64 108, !7, i64 112, !7, i64 120, !8, i64 128}
!128 = !{!"MovieTrackingMarker", !8, i64 0, !8, i64 8, !8, i64 40, !8, i64 48, !32, i64 56, !32, i64 60}
!129 = !{!96, !7, i64 144}
!130 = !{!96, !12, i64 140}
!131 = !{!88, !12, i64 8722}
!132 = !{i64 0, i64 4, !36, i64 4, i64 4, !36, i64 8, i64 4, !34, i64 12, i64 4, !34}
!133 = distinct !{!133, !48}
!134 = !{!135, !35, i64 8}
!135 = !{!"tGPspoint", !32, i64 0, !32, i64 4, !35, i64 8, !35, i64 12}
!136 = !{!135, !35, i64 12}
!137 = distinct !{!137, !48}
!138 = !{!139, !32, i64 32}
!139 = !{!"bGPDstroke", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !32, i64 32, !12, i64 36, !12, i64 38, !40, i64 40}
!140 = !{!100, !12, i64 44}
!141 = !{!139, !12, i64 36}
!142 = !{!139, !12, i64 38}
!143 = !{!139, !40, i64 40}
!144 = !{!139, !7, i64 16}
!145 = distinct !{!145, !48}
!146 = distinct !{!146, !48}
!147 = distinct !{!147, !48}
!148 = distinct !{!148, !48}
!149 = distinct !{!149, !48}
!150 = distinct !{!150, !48}
!151 = !{!104, !7, i64 24}
!152 = !{!12, !12, i64 0}
!153 = !{!39, !35, i64 0}
!154 = !{!39, !35, i64 8}
!155 = !{!39, !35, i64 4}
!156 = !{!39, !35, i64 12}
!157 = !{!104, !7, i64 16}
!158 = !{!139, !7, i64 0}
!159 = distinct !{!159, !48}
!160 = !{!88, !12, i64 8716}
!161 = !{!88, !12, i64 8718}
!162 = !{i16 0, i16 2}
!163 = distinct !{!163, !48}
!164 = !{!165, !35, i64 0}
!165 = !{!"bGPDspoint", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16}
!166 = !{!107, !12, i64 208}
!167 = !{!165, !35, i64 4}
!168 = !{!107, !12, i64 210}
!169 = !{!165, !35, i64 16}
!170 = distinct !{!170, !48}
!171 = distinct !{!171, !48}
!172 = !{!110, !8, i64 808}
!173 = !{!38, !7, i64 312}
!174 = !{!52, !7, i64 96}
!175 = !{!176, !32, i64 0}
!176 = !{!"wmTabletData", !32, i64 0, !35, i64 4, !35, i64 8, !35, i64 12}
!177 = !{!176, !35, i64 4}
