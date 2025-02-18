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
%struct.bGPDframe = type { ptr, ptr, %struct.ListBase, i32, i32 }
%struct.bGPdata = type { %struct.ID, %struct.ListBase, i32, i16, i16, ptr }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.tGPspoint = type { i32, i32, float, float }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.bGPDstroke = type { ptr, ptr, ptr, ptr, i32, i16, i16, double }
%struct.bGPDlayer = type { ptr, ptr, %struct.ListBase, ptr, i32, i16, i16, [4 x float], [128 x i8] }
%struct.bGPDspoint = type { float, float, float, float, float }
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
%struct.wmTabletData = type { i32, float, float, float }

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

; Function Attrs: nounwind uwtable
define dso_local void @GPENCIL_OT_draw(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @gpencil_draw_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @gpencil_draw_invoke, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @gpencil_draw_modal, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @gpencil_draw_cancel, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @gpencil_draw_poll, ptr %8, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 6, ptr %9, align 8, !tbaa !49
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = tail call ptr @RNA_def_enum(ptr noundef %11, ptr noundef nonnull @.str.3, ptr noundef nonnull @prop_gpencil_drawmodes, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #9
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %12, ptr %13, align 8, !tbaa !51
  %14 = load ptr, ptr %10, align 8, !tbaa !50
  %15 = tail call ptr @RNA_def_collection_runtime(ptr noundef %14, ptr noundef nonnull @.str.6, ptr noundef nonnull @RNA_OperatorStrokeElement, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @gpencil_draw_exec(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca %struct.CollectionPropertyIterator, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca [2 x float], align 4
  %6 = tail call fastcc i32 @gpencil_draw_init(ptr noundef %0, ptr noundef %1), !range !52
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !53
  br i1 %7, label %10, label %14

10:                                               ; preds = %2
  %11 = icmp eq ptr %9, null
  br i1 %11, label %67, label %12

12:                                               ; preds = %10
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  tail call void %13(ptr noundef nonnull %9) #9
  br label %67

14:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %3) #9
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !56
  call void @RNA_collection_begin(ptr noundef %16, ptr noundef nonnull @.str.6, ptr noundef nonnull %3) #9
  %17 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %3, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !57
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %66, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %3, i64 0, i32 6
  %22 = getelementptr inbounds %struct.tGPsdata, ptr %9, i64 0, i32 13
  %23 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %24 = getelementptr inbounds %struct.tGPsdata, ptr %9, i64 0, i32 13, i64 1
  %25 = getelementptr inbounds %struct.tGPsdata, ptr %9, i64 0, i32 15
  %26 = getelementptr inbounds %struct.tGPsdata, ptr %9, i64 0, i32 19
  %27 = getelementptr inbounds %struct.tGPsdata, ptr %9, i64 0, i32 20
  %28 = getelementptr inbounds %struct.tGPsdata, ptr %9, i64 0, i32 18
  %29 = getelementptr inbounds %struct.tGPsdata, ptr %9, i64 0, i32 12
  %30 = getelementptr inbounds %struct.tGPsdata, ptr %9, i64 0, i32 18
  %31 = getelementptr inbounds %struct.tGPsdata, ptr %9, i64 0, i32 14
  %32 = getelementptr inbounds %struct.tGPsdata, ptr %9, i64 0, i32 14, i64 1
  %33 = getelementptr inbounds %struct.tGPsdata, ptr %9, i64 0, i32 16
  %34 = getelementptr inbounds %struct.tGPsdata, ptr %9, i64 0, i32 21
  br label %35

35:                                               ; preds = %20, %63
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %21, i64 24, i1 false), !tbaa.struct !62
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  call void @RNA_float_get_array(ptr noundef nonnull %4, ptr noundef nonnull @.str.9, ptr noundef nonnull %5) #9
  %36 = load float, ptr %5, align 4, !tbaa !63
  %37 = fptosi float %36 to i32
  store i32 %37, ptr %22, align 4, !tbaa !65
  %38 = load float, ptr %23, align 4, !tbaa !63
  %39 = fptosi float %38 to i32
  store i32 %39, ptr %24, align 4, !tbaa !65
  %40 = call float @RNA_float_get(ptr noundef nonnull %4, ptr noundef nonnull @.str.10) #9
  store float %40, ptr %25, align 4, !tbaa !66
  %41 = call float @RNA_float_get(ptr noundef nonnull %4, ptr noundef nonnull @.str.11) #9
  %42 = fpext float %41 to double
  %43 = load double, ptr %26, align 8, !tbaa !70
  %44 = fadd double %43, %42
  store double %44, ptr %27, align 8, !tbaa !71
  %45 = call i32 @RNA_boolean_get(ptr noundef nonnull %4, ptr noundef nonnull @.str.12) #9
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %35
  %48 = load i16, ptr %28, align 2, !tbaa !72
  %49 = and i16 %48, 1
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  call fastcc void @gp_paint_strokeend(ptr noundef %9)
  %52 = load i16, ptr %29, align 2, !tbaa !73
  call fastcc void @gp_paint_initstroke(ptr noundef %9, i16 noundef signext %52)
  br label %53

53:                                               ; preds = %47, %51, %35
  %54 = load i16, ptr %30, align 2, !tbaa !72
  %55 = and i16 %54, 1
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %53
  %58 = and i16 %54, -2
  store i16 %58, ptr %30, align 2, !tbaa !72
  %59 = load i32, ptr %22, align 4, !tbaa !65
  store i32 %59, ptr %31, align 4, !tbaa !65
  %60 = load i32, ptr %24, align 4, !tbaa !65
  store i32 %60, ptr %32, align 4, !tbaa !65
  %61 = load float, ptr %25, align 4, !tbaa !66
  store float %61, ptr %33, align 8, !tbaa !74
  %62 = load double, ptr %27, align 8, !tbaa !71
  store double %62, ptr %34, align 8, !tbaa !75
  br label %63

63:                                               ; preds = %57, %53
  call fastcc void @gpencil_draw_apply(ptr noundef %1, ptr noundef %9)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  call void @RNA_property_collection_next(ptr noundef nonnull %3) #9
  %64 = load i32, ptr %17, align 8, !tbaa !57
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %35, !llvm.loop !76

66:                                               ; preds = %63, %14
  call void @RNA_property_collection_end(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %3) #9
  call fastcc void @gpencil_draw_exit(ptr noundef %0, ptr noundef %1)
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 369098753, ptr noundef null) #9
  br label %67

67:                                               ; preds = %10, %12, %66
  %68 = phi i32 [ 4, %66 ], [ 2, %12 ], [ 2, %10 ]
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @gpencil_draw_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_wm_window(ptr noundef %0) #9
  %5 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !79
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %10

10:                                               ; preds = %8, %3
  %11 = tail call fastcc i32 @gpencil_draw_init(ptr noundef %0, ptr noundef %1), !range !52
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !53
  br i1 %12, label %15, label %25

15:                                               ; preds = %10
  %16 = icmp eq ptr %14, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  tail call void %18(ptr noundef nonnull %14) #9
  br label %19

19:                                               ; preds = %17, %15
  %20 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !79
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %44, label %23

23:                                               ; preds = %19
  %24 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.54)
  br label %44

25:                                               ; preds = %10
  %26 = getelementptr inbounds %struct.tGPsdata, ptr %14, i64 0, i32 12
  %27 = load i16, ptr %26, align 2, !tbaa !73
  %28 = icmp eq i16 %27, 1
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.tGPsdata, ptr %14, i64 0, i32 25
  %31 = tail call ptr @CTX_wm_manager(ptr noundef %0) #9
  %32 = tail call ptr @WM_paint_cursor_activate(ptr noundef %31, ptr noundef null, ptr noundef nonnull @gpencil_draw_eraser, ptr noundef %14) #9
  store ptr %32, ptr %30, align 8, !tbaa !81
  br label %33

33:                                               ; preds = %29, %25
  %34 = load i16, ptr %26, align 2, !tbaa !73
  %35 = icmp eq i16 %34, 1
  %36 = select i1 %35, i32 6, i32 12
  tail call void @WM_cursor_modal_set(ptr noundef %4, i32 noundef %36) #9
  %37 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %38 = load i16, ptr %37, align 2, !tbaa !82
  %39 = icmp eq i16 %38, 1
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.tGPsdata, ptr %14, i64 0, i32 11
  store i16 1, ptr %41, align 8, !tbaa !84
  tail call fastcc void @gpencil_draw_apply_event(ptr noundef %1, ptr noundef %2)
  br label %42

42:                                               ; preds = %33, %40
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 369098753, ptr noundef null) #9
  %43 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #9
  br label %44

44:                                               ; preds = %19, %23, %42
  %45 = phi i32 [ 1, %42 ], [ 2, %23 ], [ 2, %19 ]
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @gpencil_draw_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !85
  %8 = add i16 %7, -32
  %9 = icmp ult i16 %8, 224
  %10 = add i16 %7, -300
  %11 = icmp ult i16 %10, 20
  %12 = or i1 %9, %11
  %13 = add i16 %7, -137
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
  store i16 3, ptr %18, align 8, !tbaa !84
  br label %19

19:                                               ; preds = %3, %17
  %20 = phi i32 [ 4, %17 ], [ %16, %3 ]
  switch i16 %7, label %95 [
    i16 1, label %21
    i16 3, label %21
  ]

21:                                               ; preds = %19, %19
  %22 = getelementptr inbounds %struct.tGPsdata, ptr %5, i64 0, i32 11
  %23 = load i16, ptr %22, align 8, !tbaa !84
  %24 = icmp eq i16 %23, 1
  br i1 %24, label %25, label %67

25:                                               ; preds = %21
  %26 = load ptr, ptr %5, align 8, !tbaa !86
  %27 = getelementptr inbounds %struct.Scene, ptr %26, i64 0, i32 20
  %28 = load ptr, ptr %27, align 8, !tbaa !87
  %29 = getelementptr inbounds %struct.ToolSettings, ptr %28, i64 0, i32 15
  %30 = load i8, ptr %29, align 2, !tbaa !107
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.tGPsdata, ptr %5, i64 0, i32 12
  %33 = load i16, ptr %32, align 2, !tbaa !73
  %34 = icmp eq i16 %33, 3
  %35 = zext i1 %34 to i8
  %36 = or i8 %31, %35
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %66, label %38

38:                                               ; preds = %25
  %39 = getelementptr inbounds %struct.tGPsdata, ptr %5, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !114
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call fastcc void @gp_paint_strokeend(ptr noundef nonnull %5)
  br label %43

43:                                               ; preds = %42, %38
  %44 = getelementptr inbounds %struct.tGPsdata, ptr %5, i64 0, i32 10
  %45 = load ptr, ptr %44, align 8, !tbaa !115
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.bGPDframe, ptr %45, i64 0, i32 4
  %49 = load i32, ptr %48, align 4, !tbaa !116
  %50 = and i32 %49, -2
  store i32 %50, ptr %48, align 4, !tbaa !116
  br label %51

51:                                               ; preds = %47, %43
  %52 = load ptr, ptr %39, align 8, !tbaa !114
  tail call void @gpencil_undo_push(ptr noundef %52) #9
  %53 = load ptr, ptr %39, align 8, !tbaa !114
  %54 = icmp eq ptr %53, null
  br i1 %54, label %65, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.bGPdata, ptr %53, i64 0, i32 5
  %57 = load ptr, ptr %56, align 8, !tbaa !118
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  tail call void %60(ptr noundef nonnull %57) #9
  store ptr null, ptr %56, align 8, !tbaa !118
  br label %61

61:                                               ; preds = %59, %55
  %62 = getelementptr inbounds %struct.bGPdata, ptr %53, i64 0, i32 3
  store i16 0, ptr %62, align 4, !tbaa !120
  %63 = getelementptr inbounds %struct.bGPdata, ptr %53, i64 0, i32 4
  store i16 0, ptr %63, align 2, !tbaa !121
  %64 = getelementptr inbounds %struct.tGPsdata, ptr %5, i64 0, i32 19
  store double 0.000000e+00, ptr %64, align 8, !tbaa !70
  br label %65

65:                                               ; preds = %51, %61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %39, i8 0, i64 26, i1 false)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 369098753, ptr noundef null) #9
  br label %95

66:                                               ; preds = %25
  store i16 3, ptr %22, align 8, !tbaa !84
  br label %95

67:                                               ; preds = %21
  %68 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %69 = load i16, ptr %68, align 2, !tbaa !82
  %70 = icmp eq i16 %69, 1
  br i1 %70, label %71, label %94

71:                                               ; preds = %67
  %72 = tail call ptr @CTX_wm_area(ptr noundef %0) #9
  %73 = getelementptr inbounds %struct.tGPsdata, ptr %5, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !122
  %75 = icmp eq ptr %72, %74
  br i1 %75, label %78, label %76

76:                                               ; preds = %71
  %77 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.64)
  store i16 2, ptr %22, align 8, !tbaa !84
  br label %78

78:                                               ; preds = %76, %71
  %79 = tail call fastcc i32 @gp_session_initdata(ptr noundef %0, ptr noundef %5), !range !52
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.tGPsdata, ptr %5, i64 0, i32 12
  %83 = load i16, ptr %82, align 2, !tbaa !73
  tail call fastcc void @gp_paint_initstroke(ptr noundef %5, i16 noundef signext %83)
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i16, ptr %22, align 8, !tbaa !84
  %86 = icmp eq i16 %85, 2
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  store i16 1, ptr %22, align 8, !tbaa !84
  br label %88

88:                                               ; preds = %84, %87
  %89 = load ptr, ptr %4, align 8, !tbaa !53
  %90 = getelementptr inbounds %struct.tGPsdata, ptr %89, i64 0, i32 11
  %91 = load i16, ptr %90, align 8, !tbaa !84
  %92 = icmp eq i16 %91, 2
  %93 = select i1 %92, i32 2, i32 %20
  br label %95

94:                                               ; preds = %67
  store i16 0, ptr %22, align 8, !tbaa !84
  br label %95

95:                                               ; preds = %88, %65, %66, %19, %94
  %96 = phi i32 [ %20, %94 ], [ %20, %19 ], [ 1, %65 ], [ 4, %66 ], [ %93, %88 ]
  %97 = phi ptr [ %5, %94 ], [ %5, %19 ], [ %5, %65 ], [ %5, %66 ], [ %89, %88 ]
  %98 = getelementptr inbounds %struct.tGPsdata, ptr %97, i64 0, i32 11
  %99 = load i16, ptr %98, align 8, !tbaa !84
  %100 = icmp eq i16 %99, 1
  br i1 %100, label %101, label %130

101:                                              ; preds = %95
  %102 = load i16, ptr %6, align 8, !tbaa !85
  switch i16 %102, label %103 [
    i16 4, label %108
    i16 17, label %108
  ]

103:                                              ; preds = %101
  %104 = getelementptr inbounds %struct.tGPsdata, ptr %97, i64 0, i32 18
  %105 = load i16, ptr %104, align 2, !tbaa !72
  %106 = and i16 %105, 1
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %101, %101, %103
  tail call fastcc void @gpencil_draw_apply_event(ptr noundef %1, ptr noundef %2)
  %109 = load i16, ptr %98, align 8, !tbaa !84
  %110 = icmp eq i16 %109, 2
  br i1 %110, label %111, label %130

111:                                              ; preds = %108
  %112 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.55)
  br label %130

113:                                              ; preds = %103
  %114 = getelementptr inbounds %struct.tGPsdata, ptr %97, i64 0, i32 12
  %115 = load i16, ptr %114, align 2, !tbaa !73
  %116 = icmp eq i16 %115, 1
  br i1 %116, label %117, label %130

117:                                              ; preds = %113
  switch i16 %102, label %130 [
    i16 11, label %118
    i16 164, label %118
    i16 10, label %122
    i16 162, label %122
  ]

118:                                              ; preds = %117, %117
  %119 = getelementptr inbounds %struct.tGPsdata, ptr %97, i64 0, i32 17
  %120 = load i16, ptr %119, align 4, !tbaa !123
  %121 = add i16 %120, 5
  store i16 %121, ptr %119, align 4, !tbaa !123
  br label %127

122:                                              ; preds = %117, %117
  %123 = getelementptr inbounds %struct.tGPsdata, ptr %97, i64 0, i32 17
  %124 = load i16, ptr %123, align 4, !tbaa !123
  %125 = add i16 %124, -5
  %126 = tail call i16 @llvm.smax.i16(i16 %125, i16 0)
  store i16 %126, ptr %123, align 4
  br label %127

127:                                              ; preds = %122, %118
  %128 = getelementptr inbounds %struct.tGPsdata, ptr %97, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !124
  tail call void @ED_region_tag_redraw(ptr noundef %129) #9
  br label %130

130:                                              ; preds = %117, %113, %108, %111, %127, %95
  %131 = phi i32 [ 2, %111 ], [ 1, %127 ], [ %96, %95 ], [ 1, %108 ], [ 1, %117 ], [ 1, %113 ]
  %132 = getelementptr inbounds %struct.tGPsdata, ptr %97, i64 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !122
  %134 = tail call ptr @CTX_wm_screen(ptr noundef %0) #9
  %135 = getelementptr inbounds %struct.bScreen, ptr %134, i64 0, i32 3
  %136 = tail call i32 @BLI_findindex(ptr noundef nonnull %135, ptr noundef %133) #9
  %137 = icmp eq i32 %136, -1
  br i1 %137, label %160, label %138

138:                                              ; preds = %130
  %139 = load i16, ptr %98, align 8, !tbaa !84
  switch i16 %139, label %160 [
    i16 1, label %140
    i16 0, label %150
    i16 2, label %158
    i16 3, label %158
  ]

140:                                              ; preds = %138
  %141 = load ptr, ptr %97, align 8, !tbaa !86
  %142 = getelementptr inbounds %struct.Scene, ptr %141, i64 0, i32 20
  %143 = load ptr, ptr %142, align 8, !tbaa !87
  %144 = getelementptr inbounds %struct.ToolSettings, ptr %143, i64 0, i32 15
  %145 = load i8, ptr %144, align 2, !tbaa !107
  %146 = and i8 %145, 1
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %160, label %148

148:                                              ; preds = %140
  %149 = load ptr, ptr %132, align 8, !tbaa !122
  tail call void @ED_area_headerprint(ptr noundef %149, ptr noundef nonnull @.str.34) #9
  br label %160

150:                                              ; preds = %138
  %151 = getelementptr inbounds %struct.tGPsdata, ptr %97, i64 0, i32 12
  %152 = load i16, ptr %151, align 2, !tbaa !73
  %153 = load ptr, ptr %132, align 8, !tbaa !122
  switch i16 %152, label %157 [
    i16 1, label %154
    i16 2, label %155
    i16 0, label %156
  ]

154:                                              ; preds = %150
  tail call void @ED_area_headerprint(ptr noundef %153, ptr noundef nonnull @.str.35) #9
  br label %160

155:                                              ; preds = %150
  tail call void @ED_area_headerprint(ptr noundef %153, ptr noundef nonnull @.str.36) #9
  br label %160

156:                                              ; preds = %150
  tail call void @ED_area_headerprint(ptr noundef %153, ptr noundef nonnull @.str.37) #9
  br label %160

157:                                              ; preds = %150
  tail call void @ED_area_headerprint(ptr noundef %153, ptr noundef nonnull @.str.38) #9
  br label %160

158:                                              ; preds = %138, %138
  %159 = load ptr, ptr %132, align 8, !tbaa !122
  tail call void @ED_area_headerprint(ptr noundef %159, ptr noundef null) #9
  br label %160

160:                                              ; preds = %158, %157, %156, %155, %154, %148, %140, %138, %130
  %161 = phi i32 [ 2, %130 ], [ %131, %138 ], [ %131, %140 ], [ %131, %148 ], [ %131, %154 ], [ %131, %155 ], [ %131, %156 ], [ %131, %157 ], [ %131, %158 ]
  switch i32 %161, label %164 [
    i32 4, label %162
    i32 2, label %163
  ]

162:                                              ; preds = %160
  tail call fastcc void @gpencil_draw_exit(ptr noundef %0, ptr noundef %1)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 369098753, ptr noundef null) #9
  br label %164

163:                                              ; preds = %160
  tail call fastcc void @gpencil_draw_exit(ptr noundef %0, ptr noundef %1)
  br label %164

164:                                              ; preds = %160, %163, %162
  ret i32 %161
}

; Function Attrs: nounwind uwtable
define internal void @gpencil_draw_cancel(ptr noundef %0, ptr nocapture noundef %1) #0 {
  tail call fastcc void @gpencil_draw_exit(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @gpencil_draw_poll(ptr noundef %0) #0 {
  %2 = tail call i32 @ED_operator_regionactive(ptr noundef %0) #9
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @ED_gpencil_data_get_pointers(ptr noundef %0, ptr noundef null) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @ED_gpencil_session_active() #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1, %4, %7
  %11 = phi ptr [ @.str.39, %7 ], [ @.str.40, %4 ], [ @.str.41, %1 ]
  tail call void @CTX_wm_operator_poll_msg_set(ptr noundef %0, ptr noundef nonnull %11) #9
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi i32 [ 1, %7 ], [ 0, %10 ]
  ret i32 %13
}

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @RNA_def_collection_runtime(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @gpencil_draw_init(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = tail call i32 @RNA_enum_get(ptr noundef %4, ptr noundef nonnull @.str.3) #9
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !55
  %7 = tail call ptr %6(i64 noundef 320, ptr noundef nonnull @.str.13) #9
  %8 = tail call fastcc i32 @gp_session_initdata(ptr noundef %0, ptr noundef %7), !range !52
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %7, ptr %9, align 8, !tbaa !53
  %10 = icmp eq ptr %7, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.tGPsdata, ptr %7, i64 0, i32 11
  %13 = load i16, ptr %12, align 8, !tbaa !84
  %14 = icmp eq i16 %13, 2
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %2
  tail call fastcc void @gpencil_draw_exit(ptr noundef %0, ptr noundef %1)
  br label %24

16:                                               ; preds = %11
  %17 = trunc i32 %5 to i16
  tail call fastcc void @gp_paint_initstroke(ptr noundef nonnull %7, i16 noundef signext %17)
  %18 = load i16, ptr %12, align 8, !tbaa !84
  %19 = icmp eq i16 %18, 2
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call fastcc void @gpencil_draw_exit(ptr noundef %0, ptr noundef %1)
  br label %24

21:                                               ; preds = %16
  %22 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 50), align 8, !tbaa !125
  %23 = getelementptr inbounds %struct.tGPsdata, ptr %7, i64 0, i32 17
  store i16 %22, ptr %23, align 4, !tbaa !123
  br label %24

24:                                               ; preds = %21, %20, %15
  %25 = phi i32 [ 0, %15 ], [ 0, %20 ], [ 1, %21 ]
  ret i32 %25
}

declare void @RNA_collection_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @gp_paint_strokeend(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [2 x i32], align 4
  %3 = alloca [2 x i32], align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca [3 x %struct.tGPspoint], align 16
  %6 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !114
  %8 = getelementptr inbounds %struct.bGPdata, ptr %7, i64 0, i32 4
  %9 = load i16, ptr %8, align 2, !tbaa !121
  %10 = and i16 %9, 1
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.bGPdata, ptr %7, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !129
  %15 = and i32 %14, 96
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i8
  br label %18

18:                                               ; preds = %1, %12
  %19 = phi i8 [ 0, %1 ], [ %17, %12 ]
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %37, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !122
  %24 = getelementptr inbounds %struct.ScrArea, ptr %23, i64 0, i32 19
  %25 = load ptr, ptr %24, align 8, !tbaa !130
  %26 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !132
  %28 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !124
  tail call void @view3d_region_operator_needs_opengl(ptr noundef %27, ptr noundef %29) #9
  %30 = load ptr, ptr %0, align 8, !tbaa !86
  %31 = load ptr, ptr %28, align 8, !tbaa !124
  %32 = load ptr, ptr %6, align 8, !tbaa !114
  %33 = getelementptr inbounds %struct.bGPdata, ptr %32, i64 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !129
  %35 = lshr i32 %34, 6
  %36 = and i32 %35, 1
  tail call void @ED_view3d_autodist_init(ptr noundef %30, ptr noundef %31, ptr noundef %25, i32 noundef %36) #9
  br label %37

37:                                               ; preds = %21, %18
  %38 = load ptr, ptr %6, align 8, !tbaa !114
  %39 = getelementptr inbounds %struct.bGPdata, ptr %38, i64 0, i32 4
  %40 = load i16, ptr %39, align 2, !tbaa !121
  %41 = icmp sgt i16 %40, -1
  br i1 %41, label %42, label %515

42:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #9
  %43 = getelementptr inbounds %struct.bGPdata, ptr %38, i64 0, i32 3
  %44 = load i16, ptr %43, align 4, !tbaa !120
  %45 = sext i16 %44 to i32
  %46 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 51), align 2, !tbaa !133
  %47 = and i16 %46, 1
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %127, label %49

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 12
  %51 = load i16, ptr %50, align 2, !tbaa !73
  %52 = and i16 %51, -2
  %53 = icmp eq i16 %52, 2
  %54 = icmp slt i16 %44, 3
  %55 = select i1 %53, i1 true, i1 %54
  br i1 %55, label %127, label %56

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.bGPdata, ptr %38, i64 0, i32 5
  %58 = load ptr, ptr %57, align 8, !tbaa !118
  %59 = icmp eq ptr %58, null
  br i1 %59, label %127, label %60

60:                                               ; preds = %56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %58, i64 16, i1 false), !tbaa.struct !134
  %61 = add nsw i32 %45, -2
  %62 = icmp sgt i16 %44, 2
  br i1 %62, label %63, label %127

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.tGPspoint, ptr %58, i64 1
  %65 = add nsw i32 %45, -2
  br label %66

66:                                               ; preds = %63, %79
  %67 = phi ptr [ %81, %79 ], [ %64, %63 ]
  %68 = phi i32 [ %125, %79 ], [ 1, %63 ]
  %69 = add nsw i32 %68, -1
  %70 = urem i32 %69, 3
  %71 = zext nneg i32 %70 to i64
  %72 = getelementptr inbounds [3 x %struct.tGPspoint], ptr %5, i64 0, i64 %71
  %73 = icmp ugt i32 %68, 1
  br i1 %73, label %74, label %79

74:                                               ; preds = %66
  %75 = add nsw i32 %68, -2
  %76 = srem i32 %75, 3
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [3 x %struct.tGPspoint], ptr %5, i64 0, i64 %77
  br label %79

79:                                               ; preds = %74, %66
  %80 = phi ptr [ %78, %74 ], [ %72, %66 ]
  %81 = getelementptr inbounds %struct.tGPspoint, ptr %67, i64 1
  %82 = icmp slt i32 %68, %61
  %83 = getelementptr inbounds %struct.tGPspoint, ptr %67, i64 2
  %84 = select i1 %82, ptr %83, ptr %81
  %85 = urem i32 %68, 3
  %86 = zext nneg i32 %85 to i64
  %87 = getelementptr inbounds [3 x %struct.tGPspoint], ptr %5, i64 0, i64 %86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %87, ptr noundef nonnull align 4 dereferenceable(16) %67, i64 16, i1 false), !tbaa.struct !134
  %88 = load i32, ptr %80, align 4, !tbaa !135
  %89 = sitofp i32 %88 to double
  %90 = load i32, ptr %72, align 16, !tbaa !135
  %91 = sitofp i32 %90 to double
  %92 = fmul double %91, 2.000000e-01
  %93 = tail call double @llvm.fmuladd.f64(double %89, double 1.000000e-01, double %92)
  %94 = load i32, ptr %67, align 4, !tbaa !135
  %95 = sitofp i32 %94 to double
  %96 = tail call double @llvm.fmuladd.f64(double %95, double 4.000000e-01, double %93)
  %97 = load i32, ptr %81, align 4, !tbaa !135
  %98 = sitofp i32 %97 to double
  %99 = tail call double @llvm.fmuladd.f64(double %98, double 2.000000e-01, double %96)
  %100 = load i32, ptr %84, align 4, !tbaa !135
  %101 = sitofp i32 %100 to double
  %102 = tail call double @llvm.fmuladd.f64(double %101, double 1.000000e-01, double %99)
  %103 = fptosi double %102 to i32
  store i32 %103, ptr %67, align 4, !tbaa !135
  %104 = getelementptr inbounds %struct.tGPspoint, ptr %80, i64 0, i32 1
  %105 = load i32, ptr %104, align 4, !tbaa !137
  %106 = sitofp i32 %105 to double
  %107 = getelementptr inbounds [3 x %struct.tGPspoint], ptr %5, i64 0, i64 %71, i32 1
  %108 = load i32, ptr %107, align 4, !tbaa !137
  %109 = sitofp i32 %108 to double
  %110 = fmul double %109, 2.000000e-01
  %111 = tail call double @llvm.fmuladd.f64(double %106, double 1.000000e-01, double %110)
  %112 = getelementptr inbounds %struct.tGPspoint, ptr %67, i64 0, i32 1
  %113 = load i32, ptr %112, align 4, !tbaa !137
  %114 = sitofp i32 %113 to double
  %115 = tail call double @llvm.fmuladd.f64(double %114, double 4.000000e-01, double %111)
  %116 = getelementptr inbounds %struct.tGPspoint, ptr %67, i64 1, i32 1
  %117 = load i32, ptr %116, align 4, !tbaa !137
  %118 = sitofp i32 %117 to double
  %119 = tail call double @llvm.fmuladd.f64(double %118, double 2.000000e-01, double %115)
  %120 = getelementptr inbounds %struct.tGPspoint, ptr %84, i64 0, i32 1
  %121 = load i32, ptr %120, align 4, !tbaa !137
  %122 = sitofp i32 %121 to double
  %123 = tail call double @llvm.fmuladd.f64(double %122, double 1.000000e-01, double %119)
  %124 = fptosi double %123 to i32
  store i32 %124, ptr %112, align 4, !tbaa !137
  %125 = add nuw nsw i32 %68, 1
  %126 = icmp eq i32 %68, %65
  br i1 %126, label %127, label %66, !llvm.loop !138

127:                                              ; preds = %79, %60, %42, %49, %56
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #9
  %128 = getelementptr inbounds %struct.bGPdata, ptr %38, i64 0, i32 5
  %129 = load ptr, ptr %128, align 8, !tbaa !118
  %130 = and i16 %46, 2
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %244, label %132

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 12
  %134 = load i16, ptr %133, align 2, !tbaa !73
  %135 = icmp eq i16 %134, 2
  br i1 %135, label %244, label %136

136:                                              ; preds = %132
  %137 = sext i16 %44 to i64
  %138 = icmp slt i16 %44, 5
  %139 = icmp eq ptr %129, null
  %140 = select i1 %138, i1 true, i1 %139
  br i1 %140, label %244, label %141

141:                                              ; preds = %136
  store ptr null, ptr %128, align 8, !tbaa !118
  %142 = load ptr, ptr @MEM_callocN, align 8, !tbaa !55
  %143 = tail call ptr %142(i64 noundef 80000, ptr noundef nonnull @.str.20) #9
  store ptr %143, ptr %128, align 8, !tbaa !118
  store i16 0, ptr %43, align 4, !tbaa !120
  store i16 0, ptr %39, align 2, !tbaa !121
  %144 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 19
  store double 0.000000e+00, ptr %144, align 8, !tbaa !70
  store i16 %40, ptr %39, align 2, !tbaa !121
  %145 = getelementptr inbounds %struct.tGPspoint, ptr %129, i64 0, i32 2
  %146 = load float, ptr %145, align 4, !tbaa !139
  %147 = getelementptr inbounds %struct.tGPspoint, ptr %129, i64 0, i32 3
  %148 = load float, ptr %147, align 4, !tbaa !140
  %149 = fpext float %148 to double
  %150 = fadd double %149, 0.000000e+00
  %151 = tail call fastcc signext i16 @gp_stroke_addpoint(ptr noundef %0, ptr noundef %129, float noundef %146, double noundef %150), !range !141
  %152 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 1
  %153 = zext i16 %44 to i32
  br label %154

154:                                              ; preds = %141, %227
  %155 = phi i32 [ 0, %141 ], [ %229, %227 ]
  %156 = phi i16 [ 0, %141 ], [ %228, %227 ]
  %157 = sext i16 %156 to i32
  %158 = sub nsw i32 %155, %157
  %159 = icmp eq i32 %158, 3
  br i1 %159, label %160, label %227

160:                                              ; preds = %154
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %161 = sext i16 %156 to i64
  %162 = getelementptr inbounds %struct.tGPspoint, ptr %129, i64 %161
  %163 = load i32, ptr %162, align 4, !tbaa !135
  %164 = sitofp i32 %163 to float
  %165 = tail call float @llvm.fmuladd.f32(float %164, float -2.500000e-01, float 0.000000e+00)
  %166 = getelementptr inbounds %struct.tGPspoint, ptr %129, i64 %161, i32 1
  %167 = load i32, ptr %166, align 4, !tbaa !137
  %168 = sitofp i32 %167 to float
  %169 = tail call float @llvm.fmuladd.f32(float %168, float -2.500000e-01, float 0.000000e+00)
  %170 = getelementptr inbounds %struct.tGPspoint, ptr %129, i64 %161, i32 2
  %171 = load float, ptr %170, align 4, !tbaa !139
  %172 = tail call float @llvm.fmuladd.f32(float %171, float -2.500000e-01, float 0.000000e+00)
  %173 = getelementptr inbounds %struct.tGPspoint, ptr %129, i64 %161, i32 3
  %174 = load float, ptr %173, align 4, !tbaa !140
  %175 = tail call float @llvm.fmuladd.f32(float %174, float -2.500000e-01, float 0.000000e+00)
  %176 = getelementptr %struct.tGPspoint, ptr %162, i64 1
  %177 = load i32, ptr %176, align 4, !tbaa !135
  %178 = sitofp i32 %177 to float
  %179 = tail call float @llvm.fmuladd.f32(float %178, float 7.500000e-01, float %165)
  %180 = getelementptr %struct.tGPspoint, ptr %162, i64 1, i32 1
  %181 = load i32, ptr %180, align 4, !tbaa !137
  %182 = sitofp i32 %181 to float
  %183 = tail call float @llvm.fmuladd.f32(float %182, float 7.500000e-01, float %169)
  %184 = getelementptr %struct.tGPspoint, ptr %162, i64 1, i32 2
  %185 = load float, ptr %184, align 4, !tbaa !139
  %186 = tail call float @llvm.fmuladd.f32(float %185, float 7.500000e-01, float %172)
  %187 = getelementptr %struct.tGPspoint, ptr %162, i64 1, i32 3
  %188 = load float, ptr %187, align 4, !tbaa !140
  %189 = tail call float @llvm.fmuladd.f32(float %188, float 7.500000e-01, float %175)
  %190 = add nsw i32 %157, 2
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.tGPspoint, ptr %129, i64 %191
  %193 = load i32, ptr %192, align 4, !tbaa !135
  %194 = sitofp i32 %193 to float
  %195 = tail call float @llvm.fmuladd.f32(float %194, float 7.500000e-01, float %179)
  %196 = getelementptr inbounds %struct.tGPspoint, ptr %129, i64 %191, i32 1
  %197 = load i32, ptr %196, align 4, !tbaa !137
  %198 = sitofp i32 %197 to float
  %199 = tail call float @llvm.fmuladd.f32(float %198, float 7.500000e-01, float %183)
  %200 = getelementptr inbounds %struct.tGPspoint, ptr %129, i64 %191, i32 2
  %201 = load float, ptr %200, align 4, !tbaa !139
  %202 = tail call float @llvm.fmuladd.f32(float %201, float 7.500000e-01, float %186)
  %203 = getelementptr inbounds %struct.tGPspoint, ptr %129, i64 %191, i32 3
  %204 = load float, ptr %203, align 4, !tbaa !140
  %205 = tail call float @llvm.fmuladd.f32(float %204, float 7.500000e-01, float %189)
  %206 = getelementptr %struct.tGPspoint, ptr %162, i64 3
  %207 = load i32, ptr %206, align 4, !tbaa !135
  %208 = sitofp i32 %207 to float
  %209 = tail call float @llvm.fmuladd.f32(float %208, float -2.500000e-01, float %195)
  %210 = getelementptr %struct.tGPspoint, ptr %162, i64 3, i32 1
  %211 = load i32, ptr %210, align 4, !tbaa !137
  %212 = sitofp i32 %211 to float
  %213 = tail call float @llvm.fmuladd.f32(float %212, float -2.500000e-01, float %199)
  %214 = getelementptr %struct.tGPspoint, ptr %162, i64 3, i32 2
  %215 = load float, ptr %214, align 4, !tbaa !139
  %216 = tail call float @llvm.fmuladd.f32(float %215, float -2.500000e-01, float %202)
  %217 = getelementptr %struct.tGPspoint, ptr %162, i64 3, i32 3
  %218 = load float, ptr %217, align 4, !tbaa !140
  %219 = tail call float @llvm.fmuladd.f32(float %218, float -2.500000e-01, float %205)
  %220 = fptosi float %209 to i32
  store i32 %220, ptr %4, align 4, !tbaa !65
  %221 = fptosi float %213 to i32
  store i32 %221, ptr %152, align 4, !tbaa !65
  %222 = load double, ptr %144, align 8, !tbaa !70
  %223 = fpext float %219 to double
  %224 = fadd double %222, %223
  %225 = call fastcc signext i16 @gp_stroke_addpoint(ptr noundef %0, ptr noundef nonnull %4, float noundef %216, double noundef %224), !range !141
  %226 = trunc i32 %190 to i16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %227

227:                                              ; preds = %160, %154
  %228 = phi i16 [ %226, %160 ], [ %156, %154 ]
  %229 = add nuw nsw i32 %155, 1
  %230 = icmp eq i32 %229, %153
  br i1 %230, label %231, label %154, !llvm.loop !142

231:                                              ; preds = %227
  %232 = add nsw i64 %137, 4294967295
  %233 = and i64 %232, 4294967295
  %234 = getelementptr inbounds %struct.tGPspoint, ptr %129, i64 %233
  %235 = getelementptr inbounds %struct.tGPspoint, ptr %129, i64 %233, i32 2
  %236 = load float, ptr %235, align 4, !tbaa !139
  %237 = load double, ptr %144, align 8, !tbaa !70
  %238 = getelementptr inbounds %struct.tGPspoint, ptr %129, i64 %233, i32 3
  %239 = load float, ptr %238, align 4, !tbaa !140
  %240 = fpext float %239 to double
  %241 = fadd double %237, %240
  %242 = tail call fastcc signext i16 @gp_stroke_addpoint(ptr noundef %0, ptr noundef %234, float noundef %236, double noundef %241), !range !141
  %243 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  tail call void %243(ptr noundef %129) #9
  br label %244

244:                                              ; preds = %127, %132, %136, %231
  %245 = load ptr, ptr %6, align 8, !tbaa !114
  %246 = getelementptr inbounds %struct.bGPdata, ptr %245, i64 0, i32 2
  %247 = load i32, ptr %246, align 8, !tbaa !129
  %248 = lshr i32 %247, 4
  %249 = and i32 %248, 4
  %250 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 12
  %251 = load i16, ptr %250, align 2, !tbaa !73
  %252 = icmp eq i16 %251, 2
  %253 = getelementptr inbounds %struct.bGPdata, ptr %245, i64 0, i32 3
  %254 = load i16, ptr %253, align 4, !tbaa !120
  %255 = tail call i16 @llvm.smin.i16(i16 %254, i16 2)
  %256 = select i1 %252, i16 %255, i16 %254
  %257 = sext i16 %256 to i32
  %258 = icmp eq i16 %256, 0
  br i1 %258, label %259, label %268

259:                                              ; preds = %244
  %260 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !79
  %261 = and i32 %260, 1
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %515, label %263

263:                                              ; preds = %259
  %264 = getelementptr inbounds %struct.bGPdata, ptr %245, i64 0, i32 3
  %265 = load i16, ptr %264, align 4, !tbaa !120
  %266 = sext i16 %265 to i32
  %267 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %266)
  br label %515

268:                                              ; preds = %244
  %269 = icmp eq i16 %251, 3
  br i1 %269, label %270, label %287

270:                                              ; preds = %268
  %271 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 10
  %272 = load ptr, ptr %271, align 8, !tbaa !115
  %273 = icmp eq ptr %272, null
  br i1 %273, label %284, label %274

274:                                              ; preds = %270
  %275 = getelementptr inbounds %struct.bGPDframe, ptr %272, i64 0, i32 2, i32 1
  %276 = load ptr, ptr %275, align 8, !tbaa !143
  %277 = icmp eq ptr %276, null
  br i1 %277, label %284, label %278

278:                                              ; preds = %274
  %279 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 18
  %280 = load i16, ptr %279, align 2, !tbaa !72
  %281 = trunc i16 %280 to i8
  %282 = lshr i8 %281, 1
  %283 = and i8 %282, 1
  br label %284

284:                                              ; preds = %278, %274, %270
  %285 = phi i8 [ 0, %274 ], [ 0, %270 ], [ %283, %278 ]
  %286 = icmp eq i8 %285, 0
  br i1 %286, label %287, label %515

287:                                              ; preds = %284, %268
  %288 = load ptr, ptr @MEM_callocN, align 8, !tbaa !55
  %289 = tail call ptr %288(i64 noundef 48, ptr noundef nonnull @.str.22) #9
  %290 = getelementptr inbounds %struct.bGPDstroke, ptr %289, i64 0, i32 4
  store i32 %257, ptr %290, align 8, !tbaa !144
  %291 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 9
  %292 = load ptr, ptr %291, align 8, !tbaa !146
  %293 = getelementptr inbounds %struct.bGPDlayer, ptr %292, i64 0, i32 5
  %294 = load i16, ptr %293, align 4, !tbaa !147
  %295 = getelementptr inbounds %struct.bGPDstroke, ptr %289, i64 0, i32 5
  store i16 %294, ptr %295, align 4, !tbaa !149
  %296 = getelementptr inbounds %struct.bGPdata, ptr %245, i64 0, i32 4
  %297 = load i16, ptr %296, align 2, !tbaa !121
  %298 = getelementptr inbounds %struct.bGPDstroke, ptr %289, i64 0, i32 6
  store i16 %297, ptr %298, align 2, !tbaa !150
  %299 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 19
  %300 = load double, ptr %299, align 8, !tbaa !70
  %301 = getelementptr inbounds %struct.bGPDstroke, ptr %289, i64 0, i32 7
  store double %300, ptr %301, align 8, !tbaa !151
  %302 = load ptr, ptr @MEM_callocN, align 8, !tbaa !55
  %303 = sext i16 %256 to i64
  %304 = mul nsw i64 %303, 20
  %305 = tail call ptr %302(i64 noundef %304, ptr noundef nonnull @.str.23) #9
  %306 = getelementptr inbounds %struct.bGPDstroke, ptr %289, i64 0, i32 2
  store ptr %305, ptr %306, align 8, !tbaa !152
  %307 = load i32, ptr %290, align 8, !tbaa !144
  %308 = sub nsw i32 %307, %257
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.bGPDspoint, ptr %305, i64 %309
  %311 = load i16, ptr %250, align 2, !tbaa !73
  switch i16 %311, label %345 [
    i16 2, label %312
    i16 3, label %336
  ]

312:                                              ; preds = %287
  %313 = getelementptr inbounds %struct.bGPdata, ptr %245, i64 0, i32 5
  %314 = load ptr, ptr %313, align 8, !tbaa !118
  tail call fastcc void @gp_stroke_convertcoords(ptr noundef %0, ptr noundef %314, ptr noundef %310, ptr noundef null)
  %315 = getelementptr inbounds %struct.tGPspoint, ptr %314, i64 0, i32 2
  %316 = load float, ptr %315, align 4, !tbaa !139
  %317 = getelementptr inbounds %struct.bGPDspoint, ptr %305, i64 %309, i32 3
  store float %316, ptr %317, align 4, !tbaa !153
  %318 = getelementptr inbounds %struct.tGPspoint, ptr %314, i64 0, i32 3
  %319 = load float, ptr %318, align 4, !tbaa !140
  %320 = getelementptr inbounds %struct.bGPDspoint, ptr %305, i64 %309, i32 4
  store float %319, ptr %320, align 4, !tbaa !155
  %321 = icmp eq i16 %256, 2
  br i1 %321, label %322, label %508

322:                                              ; preds = %312
  %323 = getelementptr inbounds %struct.bGPDspoint, ptr %310, i64 1
  %324 = load ptr, ptr %313, align 8, !tbaa !118
  %325 = getelementptr inbounds %struct.bGPdata, ptr %245, i64 0, i32 3
  %326 = load i16, ptr %325, align 4, !tbaa !120
  %327 = sext i16 %326 to i64
  %328 = getelementptr %struct.tGPspoint, ptr %324, i64 %327
  %329 = getelementptr %struct.tGPspoint, ptr %328, i64 -1
  tail call fastcc void @gp_stroke_convertcoords(ptr noundef %0, ptr noundef %329, ptr noundef nonnull %323, ptr noundef null)
  %330 = getelementptr %struct.tGPspoint, ptr %328, i64 -1, i32 2
  %331 = load float, ptr %330, align 4, !tbaa !139
  %332 = getelementptr inbounds %struct.bGPDspoint, ptr %310, i64 1, i32 3
  store float %331, ptr %332, align 4, !tbaa !153
  %333 = getelementptr %struct.tGPspoint, ptr %328, i64 -1, i32 3
  %334 = load float, ptr %333, align 4, !tbaa !140
  %335 = getelementptr inbounds %struct.bGPDspoint, ptr %310, i64 1, i32 4
  store float %334, ptr %335, align 4, !tbaa !155
  br label %508

336:                                              ; preds = %287
  %337 = getelementptr inbounds %struct.bGPdata, ptr %245, i64 0, i32 5
  %338 = load ptr, ptr %337, align 8, !tbaa !118
  tail call fastcc void @gp_stroke_convertcoords(ptr noundef %0, ptr noundef %338, ptr noundef %310, ptr noundef null)
  %339 = getelementptr inbounds %struct.tGPspoint, ptr %338, i64 0, i32 2
  %340 = load float, ptr %339, align 4, !tbaa !139
  %341 = getelementptr inbounds %struct.bGPDspoint, ptr %305, i64 %309, i32 3
  store float %340, ptr %341, align 4, !tbaa !153
  %342 = getelementptr inbounds %struct.tGPspoint, ptr %338, i64 0, i32 3
  %343 = load float, ptr %342, align 4, !tbaa !140
  %344 = getelementptr inbounds %struct.bGPDspoint, ptr %305, i64 %309, i32 4
  store float %343, ptr %344, align 4, !tbaa !155
  br label %508

345:                                              ; preds = %287
  %346 = load ptr, ptr %6, align 8, !tbaa !114
  %347 = getelementptr inbounds %struct.bGPdata, ptr %346, i64 0, i32 4
  %348 = load i16, ptr %347, align 2, !tbaa !121
  %349 = and i16 %348, 1
  %350 = icmp eq i16 %349, 0
  br i1 %350, label %474, label %351

351:                                              ; preds = %345
  %352 = getelementptr inbounds %struct.bGPdata, ptr %346, i64 0, i32 2
  %353 = load i32, ptr %352, align 8, !tbaa !129
  %354 = and i32 %353, 96
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %474, label %356

356:                                              ; preds = %351
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  store i64 0, ptr %3, align 8
  %357 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !55
  %358 = getelementptr inbounds %struct.bGPdata, ptr %245, i64 0, i32 3
  %359 = load i16, ptr %358, align 4, !tbaa !120
  %360 = sext i16 %359 to i64
  %361 = shl nsw i64 %360, 2
  %362 = tail call ptr %357(i64 noundef %361, ptr noundef nonnull @.str.24) #9
  %363 = load i16, ptr %358, align 4, !tbaa !120
  %364 = icmp sgt i16 %363, 0
  br i1 %364, label %365, label %403

365:                                              ; preds = %356
  %366 = getelementptr inbounds %struct.bGPdata, ptr %245, i64 0, i32 5
  %367 = load ptr, ptr %366, align 8, !tbaa !118
  %368 = getelementptr inbounds i32, ptr %2, i64 1
  %369 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 3
  %370 = or disjoint i32 %249, 1
  %371 = getelementptr inbounds i32, ptr %3, i64 1
  br label %372

372:                                              ; preds = %365, %391
  %373 = phi i64 [ 0, %365 ], [ %396, %391 ]
  %374 = phi i32 [ 0, %365 ], [ %393, %391 ]
  %375 = phi i32 [ 0, %365 ], [ %392, %391 ]
  %376 = phi ptr [ %367, %365 ], [ %397, %391 ]
  %377 = load i32, ptr %376, align 4, !tbaa !65
  store i32 %377, ptr %2, align 4, !tbaa !65
  %378 = getelementptr inbounds i32, ptr %376, i64 1
  %379 = load i32, ptr %378, align 4, !tbaa !65
  store i32 %379, ptr %368, align 4, !tbaa !65
  %380 = load ptr, ptr %369, align 8, !tbaa !124
  %381 = getelementptr inbounds float, ptr %362, i64 %373
  %382 = call zeroext i8 @ED_view3d_autodist_depth(ptr noundef %380, ptr noundef nonnull %2, i32 noundef %249, ptr noundef %381) #9
  %383 = icmp eq i8 %382, 0
  %384 = icmp ne i64 %373, 0
  %385 = and i1 %384, %383
  br i1 %385, label %386, label %390

386:                                              ; preds = %372
  %387 = load ptr, ptr %369, align 8, !tbaa !124
  %388 = call zeroext i8 @ED_view3d_autodist_depth_seg(ptr noundef %387, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef %370, ptr noundef nonnull %381) #9
  %389 = icmp eq i8 %388, 0
  br i1 %389, label %391, label %390

390:                                              ; preds = %386, %372
  br label %391

391:                                              ; preds = %390, %386
  %392 = phi i32 [ %375, %390 ], [ 1, %386 ]
  %393 = phi i32 [ 1, %390 ], [ %374, %386 ]
  %394 = load i32, ptr %2, align 4, !tbaa !65
  store i32 %394, ptr %3, align 8, !tbaa !65
  %395 = load i32, ptr %368, align 4, !tbaa !65
  store i32 %395, ptr %371, align 4, !tbaa !65
  %396 = add nuw nsw i64 %373, 1
  %397 = getelementptr inbounds %struct.tGPspoint, ptr %376, i64 1
  %398 = load i16, ptr %358, align 4, !tbaa !120
  %399 = sext i16 %398 to i64
  %400 = icmp slt i64 %396, %399
  br i1 %400, label %372, label %401, !llvm.loop !156

401:                                              ; preds = %391
  %402 = icmp eq i32 %393, 0
  br label %403

403:                                              ; preds = %401, %356
  %404 = phi i32 [ 0, %356 ], [ %392, %401 ]
  %405 = phi i1 [ true, %356 ], [ %402, %401 ]
  %406 = phi i16 [ %363, %356 ], [ %398, %401 ]
  %407 = sext i16 %406 to i32
  br i1 %405, label %408, label %417

408:                                              ; preds = %403
  %409 = icmp sgt i16 %406, 0
  br i1 %409, label %410, label %473

410:                                              ; preds = %408
  %411 = zext nneg i32 %407 to i64
  br label %412

412:                                              ; preds = %410, %412
  %413 = phi i64 [ %411, %410 ], [ %414, %412 ]
  %414 = add nsw i64 %413, -1
  %415 = getelementptr inbounds float, ptr %362, i64 %414
  store float 0x3FEFFF2E40000000, ptr %415, align 4, !tbaa !63
  %416 = icmp sgt i64 %413, 1
  br i1 %416, label %412, label %473, !llvm.loop !157

417:                                              ; preds = %403
  %418 = load ptr, ptr %6, align 8, !tbaa !114
  %419 = getelementptr inbounds %struct.bGPdata, ptr %418, i64 0, i32 2
  %420 = load i32, ptr %419, align 8, !tbaa !129
  %421 = and i32 %420, 128
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %468, label %423

423:                                              ; preds = %417
  %424 = icmp sgt i16 %406, 0
  br i1 %424, label %425, label %440

425:                                              ; preds = %423
  %426 = zext nneg i32 %407 to i64
  br label %427

427:                                              ; preds = %425, %432
  %428 = phi i64 [ 0, %425 ], [ %433, %432 ]
  %429 = getelementptr inbounds float, ptr %362, i64 %428
  %430 = load float, ptr %429, align 4, !tbaa !63
  %431 = fcmp une float %430, 0x47EFFFFFE0000000
  br i1 %431, label %435, label %432

432:                                              ; preds = %427
  %433 = add nuw nsw i64 %428, 1
  %434 = icmp eq i64 %433, %426
  br i1 %434, label %437, label %427, !llvm.loop !158

435:                                              ; preds = %427
  %436 = trunc i64 %428 to i32
  br label %437

437:                                              ; preds = %432, %435
  %438 = phi i32 [ %436, %435 ], [ %407, %432 ]
  %439 = add nuw nsw i32 %438, 1
  br label %440

440:                                              ; preds = %437, %423
  %441 = phi i32 [ 1, %423 ], [ %439, %437 ]
  %442 = zext i32 %407 to i64
  %443 = call i32 @llvm.smin.i32(i32 %407, i32 0)
  %444 = add nsw i32 %443, -1
  br label %445

445:                                              ; preds = %449, %440
  %446 = phi i64 [ %450, %449 ], [ %442, %440 ]
  %447 = trunc i64 %446 to i32
  %448 = icmp sgt i32 %447, 0
  br i1 %448, label %449, label %457

449:                                              ; preds = %445
  %450 = add nsw i64 %446, -1
  %451 = and i64 %450, 4294967295
  %452 = getelementptr inbounds float, ptr %362, i64 %451
  %453 = load float, ptr %452, align 4, !tbaa !63
  %454 = fcmp une float %453, 0x47EFFFFFE0000000
  br i1 %454, label %455, label %445, !llvm.loop !159

455:                                              ; preds = %449
  %456 = trunc i64 %450 to i32
  br label %457

457:                                              ; preds = %445, %455
  %458 = phi i32 [ %456, %455 ], [ %444, %445 ]
  %459 = icmp slt i32 %441, %458
  br i1 %459, label %460, label %468

460:                                              ; preds = %457
  %461 = zext i32 %441 to i64
  br label %462

462:                                              ; preds = %460, %462
  %463 = phi i64 [ %461, %460 ], [ %465, %462 ]
  %464 = getelementptr inbounds float, ptr %362, i64 %463
  store float 0x47EFFFFFE0000000, ptr %464, align 4, !tbaa !63
  %465 = add nuw nsw i64 %463, 1
  %466 = trunc i64 %465 to i32
  %467 = icmp sgt i32 %458, %466
  br i1 %467, label %462, label %468, !llvm.loop !160

468:                                              ; preds = %462, %457, %417
  %469 = phi i32 [ %404, %417 ], [ 1, %457 ], [ 1, %462 ]
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %473, label %471

471:                                              ; preds = %468
  %472 = call i32 @interp_sparse_array(ptr noundef %362, i32 noundef %407, float noundef 0x47EFFFFFE0000000) #9
  br label %473

473:                                              ; preds = %412, %408, %471, %468
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  br label %474

474:                                              ; preds = %345, %473, %351
  %475 = phi ptr [ %362, %473 ], [ null, %351 ], [ null, %345 ]
  %476 = getelementptr inbounds %struct.bGPdata, ptr %245, i64 0, i32 5
  %477 = load ptr, ptr %476, align 8, !tbaa !118
  %478 = getelementptr inbounds %struct.bGPdata, ptr %245, i64 0, i32 3
  %479 = load i16, ptr %478, align 4, !tbaa !120
  %480 = icmp sgt i16 %479, 0
  %481 = icmp ne ptr %477, null
  %482 = select i1 %480, i1 %481, i1 false
  br i1 %482, label %483, label %504

483:                                              ; preds = %474
  %484 = load ptr, ptr %306, align 8, !tbaa !152
  %485 = icmp eq ptr %475, null
  br label %486

486:                                              ; preds = %483, %486
  %487 = phi i64 [ 0, %483 ], [ %498, %486 ]
  %488 = phi ptr [ %484, %483 ], [ %500, %486 ]
  %489 = phi ptr [ %477, %483 ], [ %499, %486 ]
  %490 = getelementptr inbounds float, ptr %475, i64 %487
  %491 = select i1 %485, ptr null, ptr %490
  call fastcc void @gp_stroke_convertcoords(ptr noundef %0, ptr noundef nonnull %489, ptr noundef %488, ptr noundef %491)
  %492 = getelementptr inbounds %struct.tGPspoint, ptr %489, i64 0, i32 2
  %493 = load float, ptr %492, align 4, !tbaa !139
  %494 = getelementptr inbounds %struct.bGPDspoint, ptr %488, i64 0, i32 3
  store float %493, ptr %494, align 4, !tbaa !153
  %495 = getelementptr inbounds %struct.tGPspoint, ptr %489, i64 0, i32 3
  %496 = load float, ptr %495, align 4, !tbaa !140
  %497 = getelementptr inbounds %struct.bGPDspoint, ptr %488, i64 0, i32 4
  store float %496, ptr %497, align 4, !tbaa !155
  %498 = add nuw nsw i64 %487, 1
  %499 = getelementptr inbounds %struct.tGPspoint, ptr %489, i64 1
  %500 = getelementptr inbounds %struct.bGPDspoint, ptr %488, i64 1
  %501 = load i16, ptr %478, align 4, !tbaa !120
  %502 = sext i16 %501 to i64
  %503 = icmp slt i64 %498, %502
  br i1 %503, label %486, label %504, !llvm.loop !161

504:                                              ; preds = %486, %474
  %505 = icmp eq ptr %475, null
  br i1 %505, label %508, label %506

506:                                              ; preds = %504
  %507 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  call void %507(ptr noundef nonnull %475) #9
  br label %508

508:                                              ; preds = %506, %504, %336, %322, %312
  %509 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 10
  %510 = load ptr, ptr %509, align 8, !tbaa !115
  %511 = getelementptr inbounds %struct.bGPDframe, ptr %510, i64 0, i32 2
  call void @BLI_addtail(ptr noundef nonnull %511, ptr noundef %289) #9
  %512 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 18
  %513 = load i16, ptr %512, align 2, !tbaa !72
  %514 = or i16 %513, 2
  store i16 %514, ptr %512, align 2, !tbaa !72
  br label %515

515:                                              ; preds = %508, %284, %263, %259, %37
  %516 = load ptr, ptr %6, align 8, !tbaa !114
  %517 = getelementptr inbounds %struct.bGPdata, ptr %516, i64 0, i32 5
  %518 = load ptr, ptr %517, align 8, !tbaa !118
  %519 = icmp eq ptr %518, null
  br i1 %519, label %521, label %520

520:                                              ; preds = %515
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(80000) %518, i8 0, i64 80000, i1 false)
  br label %524

521:                                              ; preds = %515
  %522 = load ptr, ptr @MEM_callocN, align 8, !tbaa !55
  %523 = call ptr %522(i64 noundef 80000, ptr noundef nonnull @.str.20) #9
  store ptr %523, ptr %517, align 8, !tbaa !118
  br label %524

524:                                              ; preds = %520, %521
  %525 = getelementptr inbounds %struct.bGPdata, ptr %516, i64 0, i32 3
  store i16 0, ptr %525, align 4, !tbaa !120
  %526 = getelementptr inbounds %struct.bGPdata, ptr %516, i64 0, i32 4
  store i16 0, ptr %526, align 2, !tbaa !121
  %527 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 19
  store double 0.000000e+00, ptr %527, align 8, !tbaa !70
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @gp_paint_initstroke(ptr noundef %0, i16 noundef signext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !114
  %5 = tail call ptr @gpencil_layer_getactive(ptr noundef %4) #9
  %6 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 9
  store ptr %5, ptr %6, align 8, !tbaa !146
  %7 = icmp eq ptr %5, null
  br i1 %7, label %8, label %24

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !114
  %10 = tail call ptr @gpencil_layer_addnew(ptr noundef %9, ptr noundef nonnull @.str.25, i32 noundef 1) #9
  store ptr %10, ptr %6, align 8, !tbaa !146
  %11 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 24, i64 3
  %12 = load float, ptr %11, align 4, !tbaa !63
  %13 = fcmp une float %12, 0.000000e+00
  br i1 %13, label %14, label %24

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 24
  %16 = getelementptr inbounds %struct.bGPDlayer, ptr %10, i64 0, i32 7
  %17 = load float, ptr %15, align 4, !tbaa !63
  store float %17, ptr %16, align 4, !tbaa !63
  %18 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 24, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !63
  %20 = getelementptr inbounds %struct.bGPDlayer, ptr %10, i64 0, i32 7, i64 1
  store float %19, ptr %20, align 4, !tbaa !63
  %21 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 24, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !63
  %23 = getelementptr inbounds %struct.bGPDlayer, ptr %10, i64 0, i32 7, i64 2
  store float %22, ptr %23, align 4, !tbaa !63
  br label %24

24:                                               ; preds = %8, %14, %2
  %25 = load ptr, ptr %6, align 8, !tbaa !146
  %26 = getelementptr inbounds %struct.bGPDlayer, ptr %25, i64 0, i32 4
  %27 = load i32, ptr %26, align 8, !tbaa !162
  %28 = and i32 %27, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 11
  store i16 2, ptr %31, align 8, !tbaa !84
  %32 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !79
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %150, label %35

35:                                               ; preds = %30
  %36 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.57)
  br label %150

37:                                               ; preds = %24
  %38 = load ptr, ptr %0, align 8, !tbaa !86
  %39 = getelementptr inbounds %struct.Scene, ptr %38, i64 0, i32 22, i32 5
  %40 = load i32, ptr %39, align 8, !tbaa !163
  %41 = tail call ptr @gpencil_layer_getframe(ptr noundef %25, i32 noundef %40, i16 noundef signext 1) #9
  %42 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 10
  store ptr %41, ptr %42, align 8, !tbaa !115
  %43 = icmp eq ptr %41, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 11
  store i16 2, ptr %45, align 8, !tbaa !84
  %46 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !79
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %150, label %49

49:                                               ; preds = %44
  %50 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.56)
  br label %150

51:                                               ; preds = %37
  %52 = getelementptr inbounds %struct.bGPDframe, ptr %41, i64 0, i32 4
  %53 = load i32, ptr %52, align 4, !tbaa !116
  %54 = or i32 %53, 1
  store i32 %54, ptr %52, align 4, !tbaa !116
  %55 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 12
  store i16 %1, ptr %55, align 2, !tbaa !73
  %56 = icmp eq i16 %1, 1
  br i1 %56, label %57, label %77

57:                                               ; preds = %51
  %58 = load ptr, ptr %3, align 8, !tbaa !114
  %59 = getelementptr inbounds %struct.bGPdata, ptr %58, i64 0, i32 4
  %60 = load i16, ptr %59, align 2, !tbaa !121
  %61 = or i16 %60, -32768
  store i16 %61, ptr %59, align 2, !tbaa !121
  %62 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !122
  %64 = getelementptr inbounds %struct.ScrArea, ptr %63, i64 0, i32 8
  %65 = load i8, ptr %64, align 8, !tbaa !164
  %66 = icmp eq i8 %65, 1
  br i1 %66, label %67, label %77

67:                                               ; preds = %57
  %68 = load ptr, ptr %6, align 8, !tbaa !146
  %69 = getelementptr inbounds %struct.bGPDlayer, ptr %68, i64 0, i32 4
  %70 = load i32, ptr %69, align 8, !tbaa !162
  %71 = and i32 %70, 128
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 18
  %75 = load i16, ptr %74, align 2, !tbaa !72
  %76 = or i16 %75, 4
  store i16 %76, ptr %74, align 2, !tbaa !72
  br label %77

77:                                               ; preds = %57, %73, %67, %51
  %78 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 18
  %79 = load i16, ptr %78, align 2, !tbaa !72
  %80 = or i16 %79, 1
  store i16 %80, ptr %78, align 2, !tbaa !72
  %81 = load ptr, ptr %3, align 8, !tbaa !114
  %82 = getelementptr inbounds %struct.bGPdata, ptr %81, i64 0, i32 2
  %83 = load i32, ptr %82, align 8, !tbaa !129
  %84 = and i32 %83, 16
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %106

86:                                               ; preds = %77
  %87 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !122
  %89 = getelementptr inbounds %struct.ScrArea, ptr %88, i64 0, i32 8
  %90 = load i8, ptr %89, align 8, !tbaa !164
  %91 = icmp eq i8 %90, 1
  br i1 %91, label %92, label %106

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !124
  %95 = getelementptr inbounds %struct.ARegion, ptr %94, i64 0, i32 30
  %96 = load ptr, ptr %95, align 8, !tbaa !165
  %97 = getelementptr inbounds %struct.RegionView3D, ptr %96, i64 0, i32 25
  %98 = load i8, ptr %97, align 1, !tbaa !168
  %99 = icmp eq i8 %98, 2
  br i1 %99, label %100, label %106

100:                                              ; preds = %92
  %101 = getelementptr inbounds %struct.ScrArea, ptr %88, i64 0, i32 19
  %102 = load ptr, ptr %101, align 8, !tbaa !130
  %103 = load ptr, ptr %0, align 8, !tbaa !86
  %104 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 6
  tail call void @ED_view3d_calc_camera_border(ptr noundef %103, ptr noundef %94, ptr noundef %102, ptr noundef %96, ptr noundef nonnull %104, i8 noundef zeroext 1) #9
  %105 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 5
  store ptr %104, ptr %105, align 8, !tbaa !170
  br label %106

106:                                              ; preds = %92, %100, %86, %77
  %107 = load ptr, ptr %3, align 8, !tbaa !114
  %108 = getelementptr inbounds %struct.bGPdata, ptr %107, i64 0, i32 2
  %109 = load i32, ptr %108, align 8, !tbaa !129
  %110 = and i32 %109, 16
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %150, label %112

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !122
  %115 = getelementptr inbounds %struct.ScrArea, ptr %114, i64 0, i32 8
  %116 = load i8, ptr %115, align 8, !tbaa !164
  switch i8 %116, label %150 [
    i8 1, label %117
    i8 16, label %121
    i8 8, label %125
    i8 6, label %129
    i8 20, label %146
  ]

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.bGPdata, ptr %107, i64 0, i32 4
  %119 = load i16, ptr %118, align 2, !tbaa !121
  %120 = or i16 %119, 1
  store i16 %120, ptr %118, align 2, !tbaa !121
  br label %150

121:                                              ; preds = %112
  %122 = getelementptr inbounds %struct.bGPdata, ptr %107, i64 0, i32 4
  %123 = load i16, ptr %122, align 2, !tbaa !121
  %124 = or i16 %123, 2
  store i16 %124, ptr %122, align 2, !tbaa !121
  br label %150

125:                                              ; preds = %112
  %126 = getelementptr inbounds %struct.bGPdata, ptr %107, i64 0, i32 4
  %127 = load i16, ptr %126, align 2, !tbaa !121
  %128 = or i16 %127, 2
  store i16 %128, ptr %126, align 2, !tbaa !121
  br label %150

129:                                              ; preds = %112
  %130 = getelementptr inbounds %struct.ScrArea, ptr %114, i64 0, i32 19
  %131 = load ptr, ptr %130, align 8, !tbaa !130
  %132 = icmp eq ptr %131, null
  br i1 %132, label %137, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.SpaceImage, ptr %131, i64 0, i32 5
  %135 = load ptr, ptr %134, align 8, !tbaa !171
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %142

137:                                              ; preds = %133, %129
  %138 = getelementptr inbounds %struct.bGPdata, ptr %107, i64 0, i32 4
  %139 = load i16, ptr %138, align 2, !tbaa !121
  %140 = and i16 %139, -3
  store i16 %140, ptr %138, align 2, !tbaa !121
  %141 = and i32 %109, -17
  store i32 %141, ptr %108, align 8, !tbaa !129
  br label %150

142:                                              ; preds = %133
  %143 = getelementptr inbounds %struct.bGPdata, ptr %107, i64 0, i32 4
  %144 = load i16, ptr %143, align 2, !tbaa !121
  %145 = or i16 %144, 2
  store i16 %145, ptr %143, align 2, !tbaa !121
  br label %150

146:                                              ; preds = %112
  %147 = getelementptr inbounds %struct.bGPdata, ptr %107, i64 0, i32 4
  %148 = load i16, ptr %147, align 2, !tbaa !121
  %149 = or i16 %148, 2
  store i16 %149, ptr %147, align 2, !tbaa !121
  br label %150

150:                                              ; preds = %137, %142, %117, %121, %125, %146, %112, %44, %49, %30, %35, %106
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @gpencil_draw_apply(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [2 x float], align 4
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rcti, align 4
  %11 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 12
  %12 = load i16, ptr %11, align 2, !tbaa !73
  %13 = icmp eq i16 %12, 1
  br i1 %13, label %14, label %261

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #9
  %17 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 13
  %18 = load i32, ptr %17, align 4, !tbaa !65
  %19 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 17
  %20 = load i16, ptr %19, align 4, !tbaa !123
  %21 = sext i16 %20 to i32
  %22 = sub nsw i32 %18, %21
  store i32 %22, ptr %10, align 4, !tbaa !177
  %23 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 13, i64 1
  %24 = load i32, ptr %23, align 4, !tbaa !65
  %25 = sub nsw i32 %24, %21
  %26 = getelementptr inbounds %struct.rcti, ptr %10, i64 0, i32 2
  store i32 %25, ptr %26, align 4, !tbaa !178
  %27 = add nsw i32 %18, %21
  %28 = getelementptr inbounds %struct.rcti, ptr %10, i64 0, i32 1
  store i32 %27, ptr %28, align 4, !tbaa !179
  %29 = add nsw i32 %24, %21
  %30 = getelementptr inbounds %struct.rcti, ptr %10, i64 0, i32 3
  store i32 %29, ptr %30, align 4, !tbaa !180
  %31 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !122
  %33 = getelementptr inbounds %struct.ScrArea, ptr %32, i64 0, i32 8
  %34 = load i8, ptr %33, align 8, !tbaa !164
  %35 = icmp eq i8 %34, 1
  br i1 %35, label %36, label %50

36:                                               ; preds = %14
  %37 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 18
  %38 = load i16, ptr %37, align 2, !tbaa !72
  %39 = and i16 %38, 4
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.ScrArea, ptr %32, i64 0, i32 19
  %43 = load ptr, ptr %42, align 8, !tbaa !130
  %44 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !132
  %46 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !124
  tail call void @view3d_region_operator_needs_opengl(ptr noundef %45, ptr noundef %47) #9
  %48 = load ptr, ptr %1, align 8, !tbaa !86
  %49 = load ptr, ptr %46, align 8, !tbaa !124
  tail call void @ED_view3d_autodist_init(ptr noundef %48, ptr noundef %49, ptr noundef %43, i32 noundef 0) #9
  br label %50

50:                                               ; preds = %41, %36, %14
  %51 = getelementptr inbounds %struct.bGPDframe, ptr %16, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !181
  %53 = icmp eq ptr %52, null
  br i1 %53, label %253, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds float, ptr %3, i64 1
  %56 = getelementptr inbounds float, ptr %4, i64 1
  %57 = getelementptr inbounds float, ptr %5, i64 1
  br label %58

58:                                               ; preds = %54, %251
  %59 = phi ptr [ %52, %54 ], [ %60, %251 ]
  %60 = load ptr, ptr %59, align 8, !tbaa !182
  %61 = load i16, ptr %19, align 4, !tbaa !123
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 0, ptr %7, align 4, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  store i32 0, ptr %8, align 4, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  store i32 0, ptr %9, align 4, !tbaa !65
  %62 = getelementptr inbounds %struct.bGPDstroke, ptr %59, i64 0, i32 4
  %63 = load i32, ptr %62, align 8, !tbaa !144
  switch i32 %63, label %64 [
    i32 0, label %71
    i32 1, label %78
  ]

64:                                               ; preds = %58
  %65 = load i32, ptr %62, align 8, !tbaa !144
  %66 = icmp sgt i32 %65, 1
  br i1 %66, label %67, label %251

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.bGPDstroke, ptr %59, i64 0, i32 2
  %69 = sitofp i16 %61 to float
  %70 = getelementptr inbounds %struct.bGPDstroke, ptr %59, i64 0, i32 7
  br label %105

71:                                               ; preds = %58
  %72 = getelementptr inbounds %struct.bGPDstroke, ptr %59, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !152
  %74 = icmp eq ptr %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  call void %76(ptr noundef nonnull %73) #9
  br label %77

77:                                               ; preds = %75, %71
  call void @BLI_freelinkN(ptr noundef nonnull %51, ptr noundef nonnull %59) #9
  br label %251

78:                                               ; preds = %58
  %79 = getelementptr inbounds %struct.bGPDstroke, ptr %59, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !152
  call fastcc void @gp_point_to_xy(ptr noundef %1, ptr noundef nonnull %59, ptr noundef %80, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %81 = load i32, ptr %6, align 4, !tbaa !65
  %82 = icmp eq i32 %81, 12000
  %83 = load i32, ptr %7, align 4
  %84 = icmp eq i32 %83, 12000
  %85 = select i1 %82, i1 true, i1 %84
  br i1 %85, label %251, label %86

86:                                               ; preds = %78
  %87 = call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %10, i32 noundef %81, i32 noundef %83) #9
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %251, label %89

89:                                               ; preds = %86
  %90 = load i32, ptr %6, align 4, !tbaa !65
  %91 = load i32, ptr %17, align 4, !tbaa !65
  %92 = sub nsw i32 %90, %91
  %93 = mul nsw i32 %92, %92
  %94 = load i32, ptr %7, align 4, !tbaa !65
  %95 = load i32, ptr %23, align 4, !tbaa !65
  %96 = sub nsw i32 %94, %95
  %97 = mul nsw i32 %96, %96
  %98 = add nuw nsw i32 %97, %93
  %99 = sext i16 %61 to i32
  %100 = mul nsw i32 %99, %99
  %101 = icmp ugt i32 %98, %100
  br i1 %101, label %251, label %102

102:                                              ; preds = %89
  %103 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  %104 = load ptr, ptr %79, align 8, !tbaa !152
  call void %103(ptr noundef %104) #9
  call void @BLI_freelinkN(ptr noundef nonnull %51, ptr noundef nonnull %59) #9
  br label %251

105:                                              ; preds = %67, %245
  %106 = phi i64 [ 0, %67 ], [ %250, %245 ]
  %107 = phi i64 [ 1, %67 ], [ %246, %245 ]
  %108 = load ptr, ptr %68, align 8, !tbaa !152
  %109 = getelementptr inbounds %struct.bGPDspoint, ptr %108, i64 %106
  %110 = getelementptr inbounds %struct.bGPDspoint, ptr %109, i64 1
  call fastcc void @gp_point_to_xy(ptr noundef %1, ptr noundef nonnull %59, ptr noundef %109, ptr noundef nonnull %6, ptr noundef nonnull %7)
  call fastcc void @gp_point_to_xy(ptr noundef %1, ptr noundef nonnull %59, ptr noundef nonnull %110, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %111 = load i32, ptr %6, align 4, !tbaa !65
  %112 = icmp eq i32 %111, 12000
  %113 = load i32, ptr %7, align 4
  %114 = icmp eq i32 %113, 12000
  %115 = select i1 %112, i1 true, i1 %114
  br i1 %115, label %119, label %116

116:                                              ; preds = %105
  %117 = call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %10, i32 noundef %111, i32 noundef %113) #9
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %116, %105
  %120 = load i32, ptr %8, align 4, !tbaa !65
  %121 = icmp eq i32 %120, 12000
  %122 = load i32, ptr %9, align 4
  %123 = icmp eq i32 %122, 12000
  %124 = select i1 %121, i1 true, i1 %123
  br i1 %124, label %245, label %125

125:                                              ; preds = %119
  %126 = call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %10, i32 noundef %120, i32 noundef %122) #9
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %245, label %128

128:                                              ; preds = %125, %116
  %129 = load i32, ptr %6, align 4, !tbaa !65
  %130 = load i32, ptr %7, align 4, !tbaa !65
  %131 = load i32, ptr %8, align 4, !tbaa !65
  %132 = load i32, ptr %9, align 4, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %133 = load i32, ptr %17, align 4, !tbaa !65
  %134 = sitofp i32 %133 to float
  store float %134, ptr %3, align 4, !tbaa !63
  %135 = load i32, ptr %23, align 4, !tbaa !65
  %136 = sitofp i32 %135 to float
  store float %136, ptr %55, align 4, !tbaa !63
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %137 = sitofp i32 %129 to float
  store float %137, ptr %4, align 4, !tbaa !63
  %138 = sitofp i32 %130 to float
  store float %138, ptr %56, align 4, !tbaa !63
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  %139 = sitofp i32 %131 to float
  store float %139, ptr %5, align 4, !tbaa !63
  %140 = sitofp i32 %132 to float
  store float %140, ptr %57, align 4, !tbaa !63
  %141 = call zeroext i8 @edge_inside_circle(ptr noundef nonnull %3, float noundef %69, ptr noundef nonnull %4, ptr noundef nonnull %5) #9
  %142 = icmp eq i8 %141, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br i1 %142, label %245, label %143

143:                                              ; preds = %128
  %144 = load i32, ptr %6, align 4, !tbaa !65
  %145 = load i32, ptr %7, align 4, !tbaa !65
  %146 = call fastcc zeroext i8 @gp_stroke_eraser_is_occluded(ptr noundef %1, ptr noundef %109, i32 noundef %144, i32 noundef %145), !range !183
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %143
  %149 = load i32, ptr %8, align 4, !tbaa !65
  %150 = load i32, ptr %9, align 4, !tbaa !65
  %151 = call fastcc zeroext i8 @gp_stroke_eraser_is_occluded(ptr noundef %1, ptr noundef nonnull %110, i32 noundef %149, i32 noundef %150), !range !183
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %153, label %245

153:                                              ; preds = %148, %143
  %154 = load ptr, ptr %68, align 8, !tbaa !152
  %155 = load i32, ptr %62, align 8, !tbaa !144
  %156 = icmp eq i32 %155, 2
  br i1 %156, label %157, label %159

157:                                              ; preds = %153
  %158 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  call void %158(ptr noundef %154) #9
  call void @BLI_freelinkN(ptr noundef nonnull %51, ptr noundef nonnull %59) #9
  br label %251

159:                                              ; preds = %153
  %160 = add nsw i32 %155, -2
  %161 = zext i32 %160 to i64
  %162 = icmp eq i64 %106, %161
  br i1 %162, label %163, label %173

163:                                              ; preds = %159
  %164 = add nsw i32 %155, -1
  store i32 %164, ptr %62, align 8, !tbaa !144
  %165 = load ptr, ptr @MEM_callocN, align 8, !tbaa !55
  %166 = sext i32 %164 to i64
  %167 = mul nsw i64 %166, 20
  %168 = call ptr %165(i64 noundef %167, ptr noundef nonnull @.str.23) #9
  store ptr %168, ptr %68, align 8, !tbaa !152
  %169 = load i32, ptr %62, align 8, !tbaa !144
  %170 = sext i32 %169 to i64
  %171 = mul nsw i64 %170, 20
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %168, ptr align 4 %154, i64 %171, i1 false)
  %172 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  call void %172(ptr noundef %154) #9
  br label %251

173:                                              ; preds = %159
  %174 = icmp eq i64 %106, 0
  br i1 %174, label %175, label %205

175:                                              ; preds = %173
  %176 = add nsw i32 %155, -1
  store i32 %176, ptr %62, align 8, !tbaa !144
  %177 = load ptr, ptr @MEM_callocN, align 8, !tbaa !55
  %178 = sext i32 %176 to i64
  %179 = mul nsw i64 %178, 20
  %180 = call ptr %177(i64 noundef %179, ptr noundef nonnull @.str.23) #9
  store ptr %180, ptr %68, align 8, !tbaa !152
  %181 = getelementptr inbounds %struct.bGPDspoint, ptr %154, i64 1
  %182 = load i32, ptr %62, align 8, !tbaa !144
  %183 = sext i32 %182 to i64
  %184 = mul nsw i64 %183, 20
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %180, ptr nonnull align 4 %181, i64 %184, i1 false)
  %185 = getelementptr inbounds %struct.bGPDspoint, ptr %154, i64 1, i32 4
  %186 = load float, ptr %185, align 4, !tbaa !155
  %187 = fpext float %186 to double
  %188 = load double, ptr %70, align 8, !tbaa !151
  %189 = fadd double %188, %187
  store double %189, ptr %70, align 8, !tbaa !151
  %190 = load i32, ptr %62, align 8, !tbaa !144
  %191 = icmp sgt i32 %190, 0
  br i1 %191, label %192, label %203

192:                                              ; preds = %175
  %193 = load ptr, ptr %68, align 8, !tbaa !152
  br label %194

194:                                              ; preds = %192, %194
  %195 = phi i32 [ %200, %194 ], [ 0, %192 ]
  %196 = phi ptr [ %201, %194 ], [ %193, %192 ]
  %197 = getelementptr inbounds %struct.bGPDspoint, ptr %196, i64 0, i32 4
  %198 = load float, ptr %197, align 4, !tbaa !155
  %199 = fsub float %198, %186
  store float %199, ptr %197, align 4, !tbaa !155
  %200 = add nuw nsw i32 %195, 1
  %201 = getelementptr inbounds %struct.bGPDspoint, ptr %196, i64 1
  %202 = icmp eq i32 %200, %190
  br i1 %202, label %203, label %194, !llvm.loop !184

203:                                              ; preds = %194, %175
  %204 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  call void %204(ptr noundef %154) #9
  br label %245

205:                                              ; preds = %173
  %206 = trunc i64 %106 to i32
  %207 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !55
  %208 = call ptr %207(ptr noundef nonnull %59) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %208, i8 0, i64 16, i1 false)
  call void @BLI_insertlinkafter(ptr noundef nonnull %51, ptr noundef nonnull %59, ptr noundef nonnull %208) #9
  %209 = load i32, ptr %62, align 8, !tbaa !144
  %210 = sub nsw i32 %209, %206
  %211 = getelementptr inbounds %struct.bGPDstroke, ptr %208, i64 0, i32 4
  store i32 %210, ptr %211, align 8, !tbaa !144
  %212 = load ptr, ptr @MEM_callocN, align 8, !tbaa !55
  %213 = sext i32 %210 to i64
  %214 = mul nsw i64 %213, 20
  %215 = call ptr %212(i64 noundef %214, ptr noundef nonnull @.str.23) #9
  %216 = getelementptr inbounds %struct.bGPDstroke, ptr %208, i64 0, i32 2
  store ptr %215, ptr %216, align 8, !tbaa !152
  %217 = getelementptr inbounds %struct.bGPDspoint, ptr %154, i64 %106
  %218 = load i32, ptr %211, align 8, !tbaa !144
  %219 = sext i32 %218 to i64
  %220 = mul nsw i64 %219, 20
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %215, ptr nonnull align 4 %217, i64 %220, i1 false)
  %221 = getelementptr inbounds %struct.bGPDspoint, ptr %154, i64 %106, i32 4
  %222 = load float, ptr %221, align 4, !tbaa !155
  %223 = fpext float %222 to double
  %224 = getelementptr inbounds %struct.bGPDstroke, ptr %208, i64 0, i32 7
  %225 = load double, ptr %224, align 8, !tbaa !151
  %226 = fadd double %225, %223
  store double %226, ptr %224, align 8, !tbaa !151
  %227 = load i32, ptr %211, align 8, !tbaa !144
  %228 = icmp sgt i32 %227, 0
  br i1 %228, label %229, label %240

229:                                              ; preds = %205
  %230 = load ptr, ptr %216, align 8, !tbaa !152
  br label %231

231:                                              ; preds = %229, %231
  %232 = phi i32 [ %237, %231 ], [ 0, %229 ]
  %233 = phi ptr [ %238, %231 ], [ %230, %229 ]
  %234 = getelementptr inbounds %struct.bGPDspoint, ptr %233, i64 0, i32 4
  %235 = load float, ptr %234, align 4, !tbaa !155
  %236 = fsub float %235, %222
  store float %236, ptr %234, align 4, !tbaa !155
  %237 = add nuw nsw i32 %232, 1
  %238 = getelementptr inbounds %struct.bGPDspoint, ptr %233, i64 1
  %239 = icmp eq i32 %237, %227
  br i1 %239, label %240, label %231, !llvm.loop !185

240:                                              ; preds = %231, %205
  store i32 %206, ptr %62, align 8, !tbaa !144
  %241 = load ptr, ptr @MEM_callocN, align 8, !tbaa !55
  %242 = mul nuw nsw i64 %106, 20
  %243 = call ptr %241(i64 noundef %242, ptr noundef nonnull @.str.23) #9
  store ptr %243, ptr %68, align 8, !tbaa !152
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %243, ptr align 4 %154, i64 %242, i1 false)
  %244 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  call void %244(ptr noundef %154) #9
  br label %251

245:                                              ; preds = %203, %148, %128, %125, %119
  %246 = add nuw nsw i64 %107, 1
  %247 = load i32, ptr %62, align 8, !tbaa !144
  %248 = sext i32 %247 to i64
  %249 = icmp slt i64 %246, %248
  %250 = add nuw nsw i64 %106, 1
  br i1 %249, label %105, label %251, !llvm.loop !186

251:                                              ; preds = %245, %64, %240, %163, %157, %102, %89, %86, %78, %77
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  %252 = icmp eq ptr %60, null
  br i1 %252, label %253, label %58, !llvm.loop !187

253:                                              ; preds = %251, %50
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #9
  %254 = load i32, ptr %17, align 4, !tbaa !65
  %255 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 14
  store i32 %254, ptr %255, align 4, !tbaa !65
  %256 = load i32, ptr %23, align 4, !tbaa !65
  %257 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 14, i64 1
  store i32 %256, ptr %257, align 4, !tbaa !65
  %258 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 15
  %259 = load float, ptr %258, align 4, !tbaa !66
  %260 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 16
  store float %259, ptr %260, align 8, !tbaa !74
  br label %332

261:                                              ; preds = %2
  %262 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 13
  %263 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 14
  %264 = load i32, ptr %262, align 4, !tbaa !65
  %265 = load i32, ptr %263, align 4, !tbaa !65
  %266 = sub nsw i32 %264, %265
  %267 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 13, i64 1
  %268 = load i32, ptr %267, align 4, !tbaa !65
  %269 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 14, i64 1
  %270 = load i32, ptr %269, align 4, !tbaa !65
  %271 = sub nsw i32 %268, %270
  %272 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 8
  %273 = load ptr, ptr %272, align 8, !tbaa !114
  %274 = getelementptr inbounds %struct.bGPdata, ptr %273, i64 0, i32 3
  %275 = load i16, ptr %274, align 4, !tbaa !120
  %276 = icmp eq i16 %275, 0
  br i1 %276, label %293, label %277

277:                                              ; preds = %261
  %278 = tail call i32 @llvm.abs.i32(i32 %271, i1 true)
  %279 = tail call i32 @llvm.abs.i32(i32 %266, i1 true)
  %280 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 48), align 4, !tbaa !188
  %281 = sext i16 %280 to i32
  %282 = icmp sgt i32 %279, %281
  %283 = icmp sgt i32 %278, %281
  %284 = select i1 %282, i1 %283, i1 false
  br i1 %284, label %293, label %285

285:                                              ; preds = %277
  %286 = mul i32 %266, %266
  %287 = mul i32 %271, %271
  %288 = add nsw i32 %287, %286
  %289 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 49), align 2, !tbaa !189
  %290 = sext i16 %289 to i32
  %291 = mul nsw i32 %290, %290
  %292 = icmp sgt i32 %288, %291
  br i1 %292, label %293, label %332

293:                                              ; preds = %261, %277, %285
  %294 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 15
  %295 = load float, ptr %294, align 4, !tbaa !66
  %296 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 20
  %297 = load double, ptr %296, align 8, !tbaa !71
  %298 = tail call fastcc signext i16 @gp_stroke_addpoint(ptr noundef %1, ptr noundef nonnull %262, float noundef %295, double noundef %297), !range !141
  switch i16 %298, label %325 [
    i16 -1, label %299
    i16 1, label %299
    i16 -2, label %316
  ]

299:                                              ; preds = %293, %293
  %300 = icmp eq i16 %298, -1
  tail call fastcc void @gp_paint_strokeend(ptr noundef %1)
  %301 = load i16, ptr %11, align 2, !tbaa !73
  tail call fastcc void @gp_paint_initstroke(ptr noundef %1, i16 noundef signext %301)
  br i1 %300, label %302, label %309

302:                                              ; preds = %299
  %303 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 21
  %304 = load double, ptr %303, align 8, !tbaa !75
  %305 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 19
  store double %304, ptr %305, align 8, !tbaa !70
  %306 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 16
  %307 = load float, ptr %306, align 8, !tbaa !74
  %308 = tail call fastcc signext i16 @gp_stroke_addpoint(ptr noundef %1, ptr noundef nonnull %263, float noundef %307, double noundef %304), !range !141
  br label %312

309:                                              ; preds = %299
  %310 = load double, ptr %296, align 8, !tbaa !71
  %311 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 19
  store double %310, ptr %311, align 8, !tbaa !70
  br label %312

312:                                              ; preds = %309, %302
  %313 = load float, ptr %294, align 4, !tbaa !66
  %314 = load double, ptr %296, align 8, !tbaa !71
  %315 = tail call fastcc signext i16 @gp_stroke_addpoint(ptr noundef %1, ptr noundef nonnull %262, float noundef %313, double noundef %314), !range !141
  br label %325

316:                                              ; preds = %293
  %317 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 8
  %318 = load ptr, ptr %317, align 8, !tbaa !190
  tail call void @BKE_report(ptr noundef %318, i32 noundef 32, ptr noundef nonnull @.str.28) #9
  %319 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 11
  store i16 2, ptr %319, align 8, !tbaa !84
  %320 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !79
  %321 = and i32 %320, 1
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %332, label %323

323:                                              ; preds = %316
  %324 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.58)
  br label %332

325:                                              ; preds = %293, %312
  %326 = load i32, ptr %262, align 4, !tbaa !65
  store i32 %326, ptr %263, align 4, !tbaa !65
  %327 = load i32, ptr %267, align 4, !tbaa !65
  store i32 %327, ptr %269, align 4, !tbaa !65
  %328 = load float, ptr %294, align 4, !tbaa !66
  %329 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 16
  store float %328, ptr %329, align 8, !tbaa !74
  %330 = load double, ptr %296, align 8, !tbaa !71
  %331 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 21
  store double %330, ptr %331, align 8, !tbaa !75
  br label %332

332:                                              ; preds = %325, %323, %316, %285, %253
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare void @RNA_property_collection_next(ptr noundef) local_unnamed_addr #1

declare void @RNA_property_collection_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @gpencil_draw_exit(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  tail call void @gpencil_undo_finish() #9
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #9
  tail call void @WM_cursor_modal_restore(ptr noundef %5) #9
  %6 = icmp eq ptr %4, null
  br i1 %6, label %53, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tGPsdata, ptr %4, i64 0, i32 12
  %9 = load i16, ptr %8, align 2, !tbaa !73
  %10 = icmp eq i16 %9, 1
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tGPsdata, ptr %4, i64 0, i32 25
  %13 = load ptr, ptr %12, align 8, !tbaa !81
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @CTX_wm_manager(ptr noundef %0) #9
  %17 = load ptr, ptr %12, align 8, !tbaa !81
  tail call void @WM_paint_cursor_end(ptr noundef %16, ptr noundef %17) #9
  store ptr null, ptr %12, align 8, !tbaa !81
  br label %18

18:                                               ; preds = %11, %15
  %19 = getelementptr inbounds %struct.tGPsdata, ptr %4, i64 0, i32 11
  %20 = load i16, ptr %19, align 8, !tbaa !84
  %21 = icmp eq i16 %20, 3
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.tGPsdata, ptr %4, i64 0, i32 17
  %24 = load i16, ptr %23, align 4, !tbaa !123
  store i16 %24, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 50), align 8, !tbaa !125
  br label %25

25:                                               ; preds = %18, %22, %7
  %26 = getelementptr inbounds %struct.tGPsdata, ptr %4, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !114
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call fastcc void @gp_paint_strokeend(ptr noundef nonnull %4)
  br label %30

30:                                               ; preds = %29, %25
  %31 = getelementptr inbounds %struct.tGPsdata, ptr %4, i64 0, i32 10
  %32 = load ptr, ptr %31, align 8, !tbaa !115
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.bGPDframe, ptr %32, i64 0, i32 4
  %36 = load i32, ptr %35, align 4, !tbaa !116
  %37 = and i32 %36, -2
  store i32 %37, ptr %35, align 4, !tbaa !116
  br label %38

38:                                               ; preds = %34, %30
  %39 = load ptr, ptr %26, align 8, !tbaa !114
  %40 = icmp eq ptr %39, null
  br i1 %40, label %51, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.bGPdata, ptr %39, i64 0, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !118
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  tail call void %46(ptr noundef nonnull %43) #9
  store ptr null, ptr %42, align 8, !tbaa !118
  br label %47

47:                                               ; preds = %45, %41
  %48 = getelementptr inbounds %struct.bGPdata, ptr %39, i64 0, i32 3
  store i16 0, ptr %48, align 4, !tbaa !120
  %49 = getelementptr inbounds %struct.bGPdata, ptr %39, i64 0, i32 4
  store i16 0, ptr %49, align 2, !tbaa !121
  %50 = getelementptr inbounds %struct.tGPsdata, ptr %4, i64 0, i32 19
  store double 0.000000e+00, ptr %50, align 8, !tbaa !70
  br label %51

51:                                               ; preds = %38, %47
  %52 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  tail call void %52(ptr noundef nonnull %4) #9
  br label %53

53:                                               ; preds = %51, %2
  store ptr null, ptr %3, align 8, !tbaa !53
  ret void
}

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @gp_session_initdata(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #9
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  %5 = icmp eq ptr %3, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 11
  store i16 2, ptr %7, align 8, !tbaa !84
  %8 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !79
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %137, label %11

11:                                               ; preds = %6
  %12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.63)
  br label %137

13:                                               ; preds = %2
  %14 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  store ptr %14, ptr %1, align 8, !tbaa !86
  %15 = tail call ptr @CTX_wm_window(ptr noundef %0) #9
  %16 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 1
  store ptr %15, ptr %16, align 8, !tbaa !132
  %17 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 22
  tail call void @unit_m4(ptr noundef nonnull %17) #9
  %18 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 8
  %19 = load i8, ptr %18, align 8, !tbaa !164
  switch i8 %19, label %94 [
    i8 1, label %20
    i8 16, label %33
    i8 8, label %38
    i8 6, label %55
    i8 20, label %60
  ]

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 2
  store ptr %3, ptr %21, align 8, !tbaa !122
  %22 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 3
  store ptr %4, ptr %22, align 8, !tbaa !124
  %23 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 30
  %24 = load ptr, ptr %23, align 8, !tbaa !165
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %101

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 11
  store i16 2, ptr %27, align 8, !tbaa !84
  %28 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !79
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %137, label %31

31:                                               ; preds = %26
  %32 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.61)
  br label %137

33:                                               ; preds = %13
  %34 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 2
  store ptr %3, ptr %34, align 8, !tbaa !122
  %35 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 3
  store ptr %4, ptr %35, align 8, !tbaa !124
  %36 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2
  %37 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 4
  store ptr %36, ptr %37, align 8, !tbaa !191
  br label %101

38:                                               ; preds = %13
  %39 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 19
  %40 = load ptr, ptr %39, align 8, !tbaa !130
  %41 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 2
  store ptr %3, ptr %41, align 8, !tbaa !122
  %42 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 3
  store ptr %4, ptr %42, align 8, !tbaa !124
  %43 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2
  %44 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 4
  store ptr %43, ptr %44, align 8, !tbaa !191
  %45 = getelementptr inbounds %struct.SpaceSeq, ptr %40, i64 0, i32 9
  %46 = load i16, ptr %45, align 8, !tbaa !192
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %101

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 11
  store i16 2, ptr %49, align 8, !tbaa !84
  %50 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !79
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %137, label %53

53:                                               ; preds = %48
  %54 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.59)
  br label %137

55:                                               ; preds = %13
  %56 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 2
  store ptr %3, ptr %56, align 8, !tbaa !122
  %57 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 3
  store ptr %4, ptr %57, align 8, !tbaa !124
  %58 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2
  %59 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 4
  store ptr %58, ptr %59, align 8, !tbaa !191
  br label %101

60:                                               ; preds = %13
  %61 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 19
  %62 = load ptr, ptr %61, align 8, !tbaa !130
  %63 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 2
  store ptr %3, ptr %63, align 8, !tbaa !122
  %64 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 3
  store ptr %4, ptr %64, align 8, !tbaa !124
  %65 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2
  %66 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 4
  store ptr %65, ptr %66, align 8, !tbaa !191
  %67 = getelementptr inbounds %struct.SpaceClip, ptr %62, i64 0, i32 21
  %68 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %17, ptr noundef nonnull %67) #9
  %69 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 24
  store float 1.000000e+00, ptr %69, align 8, !tbaa !63
  %70 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 24, i64 1
  store float 0.000000e+00, ptr %70, align 4, !tbaa !63
  %71 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 24, i64 2
  store float 5.000000e-01, ptr %71, align 8, !tbaa !63
  %72 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 24, i64 3
  store float 0x3FECCCCCC0000000, ptr %72, align 4, !tbaa !63
  %73 = getelementptr inbounds %struct.SpaceClip, ptr %62, i64 0, i32 23
  %74 = load i16, ptr %73, align 4, !tbaa !195
  %75 = icmp eq i16 %74, 1
  br i1 %75, label %76, label %91

76:                                               ; preds = %60
  %77 = tail call ptr @ED_space_clip_get_clip(ptr noundef %62) #9
  %78 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %62) #9
  %79 = getelementptr inbounds %struct.MovieClip, ptr %77, i64 0, i32 11
  %80 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %79) #9
  %81 = tail call ptr @BKE_tracking_marker_get(ptr noundef %80, i32 noundef %78) #9
  %82 = load float, ptr %81, align 4, !tbaa !63
  %83 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 22, i64 3
  %84 = load float, ptr %83, align 8, !tbaa !63
  %85 = fsub float %84, %82
  store float %85, ptr %83, align 8, !tbaa !63
  %86 = getelementptr inbounds [2 x float], ptr %81, i64 0, i64 1
  %87 = load float, ptr %86, align 4, !tbaa !63
  %88 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 22, i64 3, i64 1
  %89 = load float, ptr %88, align 4, !tbaa !63
  %90 = fsub float %89, %87
  store float %90, ptr %88, align 4, !tbaa !63
  br label %91

91:                                               ; preds = %76, %60
  %92 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 23
  %93 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %92, ptr noundef nonnull %17) #9
  br label %101

94:                                               ; preds = %13
  %95 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 11
  store i16 2, ptr %95, align 8, !tbaa !84
  %96 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !79
  %97 = and i32 %96, 1
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %137, label %99

99:                                               ; preds = %94
  %100 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.62)
  br label %137

101:                                              ; preds = %38, %20, %91, %55, %33
  %102 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 7
  %103 = tail call ptr @ED_gpencil_data_get_pointers(ptr noundef %0, ptr noundef nonnull %102) #9
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %112

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 11
  store i16 2, ptr %106, align 8, !tbaa !84
  %107 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !79
  %108 = and i32 %107, 1
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %137, label %110

110:                                              ; preds = %105
  %111 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.60)
  br label %137

112:                                              ; preds = %101
  %113 = load ptr, ptr %103, align 8, !tbaa !55
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = tail call ptr @gpencil_data_addnew(ptr noundef nonnull @.str.19) #9
  store ptr %116, ptr %103, align 8, !tbaa !55
  br label %117

117:                                              ; preds = %115, %112
  %118 = load ptr, ptr %103, align 8, !tbaa !55
  %119 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 8
  store ptr %118, ptr %119, align 8, !tbaa !114
  %120 = tail call i32 @ED_gpencil_session_active() #9
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = load ptr, ptr %119, align 8, !tbaa !114
  tail call void @gpencil_undo_init(ptr noundef %123) #9
  br label %124

124:                                              ; preds = %122, %117
  %125 = load ptr, ptr %119, align 8, !tbaa !114
  %126 = getelementptr inbounds %struct.bGPdata, ptr %125, i64 0, i32 5
  %127 = load ptr, ptr %126, align 8, !tbaa !118
  %128 = icmp eq ptr %127, null
  br i1 %128, label %130, label %129

129:                                              ; preds = %124
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(80000) %127, i8 0, i64 80000, i1 false)
  br label %133

130:                                              ; preds = %124
  %131 = load ptr, ptr @MEM_callocN, align 8, !tbaa !55
  %132 = tail call ptr %131(i64 noundef 80000, ptr noundef nonnull @.str.20) #9
  store ptr %132, ptr %126, align 8, !tbaa !118
  br label %133

133:                                              ; preds = %129, %130
  %134 = getelementptr inbounds %struct.bGPdata, ptr %125, i64 0, i32 3
  store i16 0, ptr %134, align 4, !tbaa !120
  %135 = getelementptr inbounds %struct.bGPdata, ptr %125, i64 0, i32 4
  store i16 0, ptr %135, align 2, !tbaa !121
  %136 = getelementptr inbounds %struct.tGPsdata, ptr %1, i64 0, i32 19
  store double 0.000000e+00, ptr %136, align 8, !tbaa !70
  br label %137

137:                                              ; preds = %53, %48, %105, %110, %94, %99, %26, %31, %6, %11, %133
  %138 = phi i32 [ 1, %133 ], [ 0, %11 ], [ 0, %6 ], [ 0, %31 ], [ 0, %26 ], [ 0, %99 ], [ 0, %94 ], [ 0, %110 ], [ 0, %105 ], [ 0, %48 ], [ 0, %53 ]
  ret i32 %138
}

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #1

declare void @unit_m4(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ED_space_clip_get_clip(ptr noundef) local_unnamed_addr #1

declare i32 @ED_space_clip_get_clip_frame_number(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_tracking_track_get_active(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_tracking_marker_get(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @ED_gpencil_data_get_pointers(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @gpencil_data_addnew(ptr noundef) local_unnamed_addr #1

declare i32 @ED_gpencil_session_active() local_unnamed_addr #1

declare void @gpencil_undo_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare void @view3d_region_operator_needs_opengl(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_view3d_autodist_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: nounwind uwtable
define internal fastcc signext i16 @gp_stroke_addpoint(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2, double noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !114
  %7 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 12
  %8 = load i16, ptr %7, align 2, !tbaa !73
  switch i16 %8, label %149 [
    i16 2, label %9
    i16 0, label %40
    i16 3, label %62
  ]

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.bGPdata, ptr %6, i64 0, i32 3
  %11 = load i16, ptr %10, align 4, !tbaa !120
  %12 = icmp eq i16 %11, 0
  %13 = getelementptr inbounds %struct.bGPdata, ptr %6, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !118
  br i1 %12, label %15, label %26

15:                                               ; preds = %9
  %16 = load i32, ptr %1, align 4, !tbaa !65
  store i32 %16, ptr %14, align 4, !tbaa !65
  %17 = getelementptr inbounds i32, ptr %1, i64 1
  %18 = load i32, ptr %17, align 4, !tbaa !65
  %19 = getelementptr inbounds i32, ptr %14, i64 1
  store i32 %18, ptr %19, align 4, !tbaa !65
  %20 = getelementptr inbounds %struct.tGPspoint, ptr %14, i64 0, i32 2
  store float %2, ptr %20, align 4, !tbaa !139
  %21 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 19
  %22 = load double, ptr %21, align 8, !tbaa !70
  %23 = fsub double %3, %22
  %24 = fptrunc double %23 to float
  %25 = getelementptr inbounds %struct.tGPspoint, ptr %14, i64 0, i32 3
  store float %24, ptr %25, align 4, !tbaa !140
  store i16 1, ptr %10, align 4, !tbaa !120
  br label %149

26:                                               ; preds = %9
  %27 = getelementptr inbounds %struct.tGPspoint, ptr %14, i64 1
  %28 = load i32, ptr %1, align 4, !tbaa !65
  store i32 %28, ptr %27, align 4, !tbaa !65
  %29 = getelementptr inbounds i32, ptr %1, i64 1
  %30 = load i32, ptr %29, align 4, !tbaa !65
  %31 = getelementptr inbounds %struct.tGPspoint, ptr %14, i64 1, i32 1
  store i32 %30, ptr %31, align 4, !tbaa !65
  %32 = getelementptr inbounds %struct.tGPspoint, ptr %14, i64 1, i32 2
  store float %2, ptr %32, align 4, !tbaa !139
  %33 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 19
  %34 = load double, ptr %33, align 8, !tbaa !70
  %35 = fsub double %3, %34
  %36 = fptrunc double %35 to float
  %37 = getelementptr inbounds %struct.tGPspoint, ptr %14, i64 1, i32 3
  store float %36, ptr %37, align 4, !tbaa !140
  %38 = icmp eq i16 %11, 2
  br i1 %38, label %149, label %39

39:                                               ; preds = %26
  store i16 2, ptr %10, align 4, !tbaa !120
  br label %149

40:                                               ; preds = %4
  %41 = getelementptr inbounds %struct.bGPdata, ptr %6, i64 0, i32 3
  %42 = load i16, ptr %41, align 4, !tbaa !120
  %43 = icmp sgt i16 %42, 4999
  br i1 %43, label %149, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.bGPdata, ptr %6, i64 0, i32 5
  %46 = load ptr, ptr %45, align 8, !tbaa !118
  %47 = sext i16 %42 to i64
  %48 = getelementptr inbounds %struct.tGPspoint, ptr %46, i64 %47
  %49 = load i32, ptr %1, align 4, !tbaa !65
  store i32 %49, ptr %48, align 4, !tbaa !65
  %50 = getelementptr inbounds i32, ptr %1, i64 1
  %51 = load i32, ptr %50, align 4, !tbaa !65
  %52 = getelementptr inbounds i32, ptr %48, i64 1
  store i32 %51, ptr %52, align 4, !tbaa !65
  %53 = getelementptr inbounds %struct.tGPspoint, ptr %46, i64 %47, i32 2
  store float %2, ptr %53, align 4, !tbaa !139
  %54 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 19
  %55 = load double, ptr %54, align 8, !tbaa !70
  %56 = fsub double %3, %55
  %57 = fptrunc double %56 to float
  %58 = getelementptr inbounds %struct.tGPspoint, ptr %46, i64 %47, i32 3
  store float %57, ptr %58, align 4, !tbaa !140
  %59 = add i16 %42, 1
  store i16 %59, ptr %41, align 4, !tbaa !120
  %60 = icmp eq i16 %59, 5000
  %61 = zext i1 %60 to i16
  br label %149

62:                                               ; preds = %4
  %63 = getelementptr inbounds %struct.bGPdata, ptr %6, i64 0, i32 5
  %64 = load ptr, ptr %63, align 8, !tbaa !118
  %65 = load i32, ptr %1, align 4, !tbaa !65
  store i32 %65, ptr %64, align 4, !tbaa !65
  %66 = getelementptr inbounds i32, ptr %1, i64 1
  %67 = load i32, ptr %66, align 4, !tbaa !65
  %68 = getelementptr inbounds i32, ptr %64, i64 1
  store i32 %67, ptr %68, align 4, !tbaa !65
  %69 = getelementptr inbounds %struct.tGPspoint, ptr %64, i64 0, i32 2
  store float %2, ptr %69, align 4, !tbaa !139
  %70 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 19
  %71 = load double, ptr %70, align 8, !tbaa !70
  %72 = fsub double %3, %71
  %73 = fptrunc double %72 to float
  %74 = getelementptr inbounds %struct.tGPspoint, ptr %64, i64 0, i32 3
  store float %73, ptr %74, align 4, !tbaa !140
  %75 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 10
  %76 = load ptr, ptr %75, align 8, !tbaa !115
  %77 = icmp eq ptr %76, null
  br i1 %77, label %144, label %78

78:                                               ; preds = %62
  %79 = getelementptr inbounds %struct.bGPDframe, ptr %76, i64 0, i32 2, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !143
  %81 = icmp eq ptr %80, null
  br i1 %81, label %144, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 18
  %84 = load i16, ptr %83, align 2, !tbaa !72
  %85 = and i16 %84, 2
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %144, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.bGPDframe, ptr %76, i64 0, i32 2, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !143
  %90 = getelementptr inbounds %struct.bGPdata, ptr %6, i64 0, i32 3
  %91 = load i16, ptr %90, align 4, !tbaa !120
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %87
  %94 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !55
  %95 = getelementptr inbounds %struct.bGPDstroke, ptr %89, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !152
  %97 = getelementptr inbounds %struct.bGPDstroke, ptr %89, i64 0, i32 4
  %98 = load i32, ptr %97, align 8, !tbaa !144
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = mul nsw i64 %100, 20
  %102 = tail call ptr %94(ptr noundef %96, i64 noundef %101, ptr noundef nonnull @__func__.gp_stroke_addpoint) #9
  store ptr %102, ptr %95, align 8, !tbaa !152
  %103 = load i32, ptr %97, align 8, !tbaa !144
  %104 = add nsw i32 %103, 1
  store i32 %104, ptr %97, align 8, !tbaa !144
  br label %105

105:                                              ; preds = %93, %87
  %106 = getelementptr inbounds %struct.bGPDstroke, ptr %89, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !152
  %108 = getelementptr inbounds %struct.bGPDstroke, ptr %89, i64 0, i32 4
  %109 = load i32, ptr %108, align 8, !tbaa !144
  %110 = sext i32 %109 to i64
  %111 = getelementptr %struct.bGPDspoint, ptr %107, i64 %110
  %112 = getelementptr %struct.bGPDspoint, ptr %111, i64 -1
  %113 = load ptr, ptr %5, align 8, !tbaa !114
  %114 = getelementptr inbounds %struct.bGPdata, ptr %113, i64 0, i32 4
  %115 = load i16, ptr %114, align 2, !tbaa !121
  %116 = and i16 %115, 1
  %117 = icmp eq i16 %116, 0
  br i1 %117, label %139, label %118

118:                                              ; preds = %105
  %119 = getelementptr inbounds %struct.bGPdata, ptr %113, i64 0, i32 2
  %120 = load i32, ptr %119, align 8, !tbaa !129
  %121 = and i32 %120, 96
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %139, label %123

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !122
  %126 = getelementptr inbounds %struct.ScrArea, ptr %125, i64 0, i32 19
  %127 = load ptr, ptr %126, align 8, !tbaa !130
  %128 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !132
  %130 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 3
  %131 = load ptr, ptr %130, align 8, !tbaa !124
  tail call void @view3d_region_operator_needs_opengl(ptr noundef %129, ptr noundef %131) #9
  %132 = load ptr, ptr %0, align 8, !tbaa !86
  %133 = load ptr, ptr %130, align 8, !tbaa !124
  %134 = load ptr, ptr %5, align 8, !tbaa !114
  %135 = getelementptr inbounds %struct.bGPdata, ptr %134, i64 0, i32 2
  %136 = load i32, ptr %135, align 8, !tbaa !129
  %137 = lshr i32 %136, 6
  %138 = and i32 %137, 1
  tail call void @ED_view3d_autodist_init(ptr noundef %132, ptr noundef %133, ptr noundef %127, i32 noundef %138) #9
  br label %139

139:                                              ; preds = %105, %123, %118
  tail call fastcc void @gp_stroke_convertcoords(ptr noundef %0, ptr noundef nonnull %64, ptr noundef %112, ptr noundef null)
  %140 = load float, ptr %69, align 4, !tbaa !139
  %141 = getelementptr %struct.bGPDspoint, ptr %111, i64 -1, i32 3
  store float %140, ptr %141, align 4, !tbaa !153
  %142 = load float, ptr %74, align 4, !tbaa !140
  %143 = getelementptr %struct.bGPDspoint, ptr %111, i64 -1, i32 4
  store float %142, ptr %143, align 4, !tbaa !155
  br label %144

144:                                              ; preds = %78, %62, %139, %82
  %145 = getelementptr inbounds %struct.bGPdata, ptr %6, i64 0, i32 3
  %146 = load i16, ptr %145, align 4, !tbaa !120
  %147 = icmp eq i16 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  store i16 1, ptr %145, align 4, !tbaa !120
  br label %149

149:                                              ; preds = %4, %144, %148, %44, %40, %15, %39, %26
  %150 = phi i16 [ 0, %26 ], [ 0, %39 ], [ 0, %15 ], [ -1, %40 ], [ %61, %44 ], [ 0, %148 ], [ 0, %144 ], [ -2, %4 ]
  ret i16 %150
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: nounwind uwtable
define internal fastcc void @gp_stroke_convertcoords(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !114
  %11 = getelementptr inbounds %struct.bGPdata, ptr %10, i64 0, i32 4
  %12 = load i16, ptr %11, align 2, !tbaa !121
  %13 = zext i16 %12 to i32
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %83, label %16

16:                                               ; preds = %4
  %17 = and i16 %12, 1
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.bGPdata, ptr %10, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !129
  %22 = and i32 %21, 96
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !124
  %27 = tail call zeroext i8 @ED_view3d_autodist_simple(ptr noundef %26, ptr noundef %1, ptr noundef %2, i32 noundef 0, ptr noundef %3) #9
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %140

29:                                               ; preds = %16, %24, %19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  %30 = load i32, ptr %1, align 4, !tbaa !65
  %31 = sitofp i32 %30 to float
  store float %31, ptr %8, align 4, !tbaa !63
  %32 = getelementptr inbounds float, ptr %8, i64 1
  %33 = getelementptr inbounds i32, ptr %1, i64 1
  %34 = load i32, ptr %33, align 4, !tbaa !65
  %35 = sitofp i32 %34 to float
  store float %35, ptr %32, align 4, !tbaa !63
  %36 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !122
  %38 = getelementptr inbounds %struct.ScrArea, ptr %37, i64 0, i32 19
  %39 = load ptr, ptr %38, align 8, !tbaa !130
  %40 = load ptr, ptr %0, align 8, !tbaa !86
  %41 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %40, ptr noundef %39) #9
  %42 = load float, ptr %41, align 4, !tbaa !63
  store float %42, ptr %6, align 4, !tbaa !63
  %43 = getelementptr inbounds float, ptr %41, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !63
  %45 = getelementptr inbounds float, ptr %6, i64 1
  store float %44, ptr %45, align 4, !tbaa !63
  %46 = getelementptr inbounds float, ptr %41, i64 2
  %47 = load float, ptr %46, align 4, !tbaa !63
  %48 = getelementptr inbounds float, ptr %6, i64 2
  store float %47, ptr %48, align 4, !tbaa !63
  %49 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !124
  %51 = getelementptr inbounds %struct.ARegion, ptr %50, i64 0, i32 30
  %52 = load ptr, ptr %51, align 8, !tbaa !165
  %53 = call float @ED_view3d_calc_zfac(ptr noundef %52, ptr noundef nonnull %6, ptr noundef null) #9
  %54 = load ptr, ptr %49, align 8, !tbaa !124
  %55 = call i32 @ED_view3d_project_float_global(ptr noundef %54, ptr noundef nonnull %6, ptr noundef nonnull %5, i32 noundef 0) #9
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %78

57:                                               ; preds = %29
  %58 = load float, ptr %5, align 4, !tbaa !63
  %59 = load float, ptr %8, align 4, !tbaa !63
  %60 = fsub float %58, %59
  store float %60, ptr %8, align 4, !tbaa !63
  %61 = getelementptr inbounds float, ptr %5, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !63
  %63 = load float, ptr %32, align 4, !tbaa !63
  %64 = fsub float %62, %63
  store float %64, ptr %32, align 4, !tbaa !63
  %65 = load ptr, ptr %49, align 8, !tbaa !124
  call void @ED_view3d_win_to_delta(ptr noundef %65, ptr noundef nonnull %8, ptr noundef nonnull %7, float noundef %53) #9
  %66 = load float, ptr %6, align 4, !tbaa !63
  %67 = load float, ptr %7, align 4, !tbaa !63
  %68 = fsub float %66, %67
  store float %68, ptr %2, align 4, !tbaa !63
  %69 = load float, ptr %45, align 4, !tbaa !63
  %70 = getelementptr inbounds float, ptr %7, i64 1
  %71 = load float, ptr %70, align 4, !tbaa !63
  %72 = fsub float %69, %71
  %73 = getelementptr inbounds float, ptr %2, i64 1
  store float %72, ptr %73, align 4, !tbaa !63
  %74 = load float, ptr %48, align 4, !tbaa !63
  %75 = getelementptr inbounds float, ptr %7, i64 2
  %76 = load float, ptr %75, align 4, !tbaa !63
  %77 = fsub float %74, %76
  br label %80

78:                                               ; preds = %29
  store float 0.000000e+00, ptr %2, align 4, !tbaa !63
  %79 = getelementptr inbounds float, ptr %2, i64 1
  store float 0.000000e+00, ptr %79, align 4, !tbaa !63
  br label %80

80:                                               ; preds = %78, %57
  %81 = phi float [ 0.000000e+00, %78 ], [ %77, %57 ]
  %82 = getelementptr inbounds float, ptr %2, i64 2
  store float %81, ptr %82, align 4, !tbaa !63
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %140

83:                                               ; preds = %4
  %84 = and i32 %13, 2
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %98, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 4
  %88 = load ptr, ptr %87, align 8, !tbaa !191
  %89 = icmp eq ptr %88, null
  br i1 %89, label %98, label %90

90:                                               ; preds = %86
  %91 = load i32, ptr %1, align 4, !tbaa !65
  %92 = sitofp i32 %91 to float
  %93 = getelementptr inbounds i32, ptr %1, i64 1
  %94 = load i32, ptr %93, align 4, !tbaa !65
  %95 = sitofp i32 %94 to float
  %96 = getelementptr inbounds float, ptr %2, i64 1
  tail call void @UI_view2d_region_to_view(ptr noundef nonnull %88, float noundef %92, float noundef %95, ptr noundef %2, ptr noundef nonnull %96) #9
  %97 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 22
  tail call void @mul_v3_m4v3(ptr noundef %2, ptr noundef nonnull %97, ptr noundef %2) #9
  br label %140

98:                                               ; preds = %86, %83
  %99 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 5
  %100 = load ptr, ptr %99, align 8, !tbaa !170
  %101 = icmp eq ptr %100, null
  %102 = load i32, ptr %1, align 4, !tbaa !65
  %103 = sitofp i32 %102 to float
  %104 = getelementptr inbounds i32, ptr %1, i64 1
  br i1 %101, label %105, label %121

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !124
  %108 = getelementptr inbounds %struct.ARegion, ptr %107, i64 0, i32 5
  %109 = load i16, ptr %108, align 8, !tbaa !200
  %110 = sitofp i16 %109 to float
  %111 = fdiv float %103, %110
  %112 = fmul float %111, 1.000000e+02
  store float %112, ptr %2, align 4, !tbaa !63
  %113 = load i32, ptr %104, align 4, !tbaa !65
  %114 = sitofp i32 %113 to float
  %115 = getelementptr inbounds %struct.ARegion, ptr %107, i64 0, i32 6
  %116 = load i16, ptr %115, align 2, !tbaa !201
  %117 = sitofp i16 %116 to float
  %118 = fdiv float %114, %117
  %119 = fmul float %118, 1.000000e+02
  %120 = getelementptr inbounds float, ptr %2, i64 1
  store float %119, ptr %120, align 4, !tbaa !63
  br label %140

121:                                              ; preds = %98
  %122 = load float, ptr %100, align 4, !tbaa !202
  %123 = fsub float %103, %122
  %124 = getelementptr inbounds %struct.rctf, ptr %100, i64 0, i32 1
  %125 = load float, ptr %124, align 4, !tbaa !203
  %126 = fsub float %125, %122
  %127 = fdiv float %123, %126
  %128 = fmul float %127, 1.000000e+02
  store float %128, ptr %2, align 4, !tbaa !63
  %129 = load i32, ptr %104, align 4, !tbaa !65
  %130 = sitofp i32 %129 to float
  %131 = getelementptr inbounds %struct.rctf, ptr %100, i64 0, i32 2
  %132 = load float, ptr %131, align 4, !tbaa !204
  %133 = fsub float %130, %132
  %134 = getelementptr inbounds %struct.rctf, ptr %100, i64 0, i32 3
  %135 = load float, ptr %134, align 4, !tbaa !205
  %136 = fsub float %135, %132
  %137 = fdiv float %133, %136
  %138 = fmul float %137, 1.000000e+02
  %139 = getelementptr inbounds float, ptr %2, i64 1
  store float %138, ptr %139, align 4, !tbaa !63
  br label %140

140:                                              ; preds = %90, %121, %105, %80, %24
  ret void
}

declare zeroext i8 @ED_view3d_autodist_simple(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare float @ED_view3d_calc_zfac(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ED_view3d_project_float_global(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @ED_view3d_win_to_delta(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ED_view3d_cursor3d_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @ED_view3d_autodist_depth(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @ED_view3d_autodist_depth_seg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @interp_sparse_array(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #1

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @gpencil_layer_getactive(ptr noundef) local_unnamed_addr #1

declare ptr @gpencil_layer_addnew(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @gpencil_layer_getframe(ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #1

declare void @ED_view3d_calc_camera_border(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @gp_point_to_xy(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca [2 x i32], align 4
  %7 = alloca [3 x float], align 4
  %8 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !124
  %10 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !191
  %12 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !170
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  %14 = getelementptr inbounds %struct.bGPDstroke, ptr %1, i64 0, i32 6
  %15 = load i16, ptr %14, align 2, !tbaa !150
  %16 = zext i16 %15 to i32
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %5
  %20 = call i32 @ED_view3d_project_int_global(ptr noundef %9, ptr noundef %2, ptr noundef nonnull %6, i32 noundef 0) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, ptr %6, align 4, !tbaa !65
  store i32 %23, ptr %3, align 4, !tbaa !65
  %24 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 1
  %25 = load i32, ptr %24, align 4, !tbaa !65
  store i32 %25, ptr %4, align 4, !tbaa !65
  br label %81

26:                                               ; preds = %19
  store i32 12000, ptr %3, align 4, !tbaa !65
  store i32 12000, ptr %4, align 4, !tbaa !65
  br label %81

27:                                               ; preds = %5
  %28 = and i32 %16, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  %31 = load float, ptr %2, align 4, !tbaa !206
  store float %31, ptr %7, align 4, !tbaa !63
  %32 = getelementptr inbounds float, ptr %7, i64 1
  %33 = getelementptr inbounds %struct.bGPDspoint, ptr %2, i64 0, i32 1
  %34 = load float, ptr %33, align 4, !tbaa !207
  store float %34, ptr %32, align 4, !tbaa !63
  %35 = getelementptr inbounds float, ptr %7, i64 2
  store float 0.000000e+00, ptr %35, align 4, !tbaa !63
  %36 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 23
  call void @mul_m4_v3(ptr noundef nonnull %36, ptr noundef nonnull %7) #9
  %37 = load float, ptr %7, align 4, !tbaa !63
  %38 = load float, ptr %32, align 4, !tbaa !63
  %39 = call zeroext i8 @UI_view2d_view_to_region_clip(ptr noundef %11, float noundef %37, float noundef %38, ptr noundef %3, ptr noundef %4) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  br label %81

40:                                               ; preds = %27
  %41 = icmp eq ptr %13, null
  %42 = load float, ptr %2, align 4, !tbaa !206
  %43 = fdiv float %42, 1.000000e+02
  br i1 %41, label %44, label %58

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 5
  %46 = load i16, ptr %45, align 8, !tbaa !200
  %47 = sitofp i16 %46 to float
  %48 = fmul float %43, %47
  %49 = fptosi float %48 to i32
  store i32 %49, ptr %3, align 4, !tbaa !65
  %50 = getelementptr inbounds %struct.bGPDspoint, ptr %2, i64 0, i32 1
  %51 = load float, ptr %50, align 4, !tbaa !207
  %52 = fdiv float %51, 1.000000e+02
  %53 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 6
  %54 = load i16, ptr %53, align 2, !tbaa !201
  %55 = sitofp i16 %54 to float
  %56 = fmul float %52, %55
  %57 = fptosi float %56 to i32
  store i32 %57, ptr %4, align 4, !tbaa !65
  br label %81

58:                                               ; preds = %40
  %59 = getelementptr inbounds %struct.rctf, ptr %13, i64 0, i32 1
  %60 = load float, ptr %59, align 4, !tbaa !203
  %61 = load float, ptr %13, align 4, !tbaa !202
  %62 = fsub float %60, %61
  %63 = fmul float %43, %62
  %64 = fptosi float %63 to i32
  %65 = sitofp i32 %64 to float
  %66 = fadd float %61, %65
  %67 = fptosi float %66 to i32
  store i32 %67, ptr %3, align 4, !tbaa !65
  %68 = getelementptr inbounds %struct.bGPDspoint, ptr %2, i64 0, i32 1
  %69 = load float, ptr %68, align 4, !tbaa !207
  %70 = fdiv float %69, 1.000000e+02
  %71 = getelementptr inbounds %struct.rctf, ptr %13, i64 0, i32 3
  %72 = load float, ptr %71, align 4, !tbaa !205
  %73 = getelementptr inbounds %struct.rctf, ptr %13, i64 0, i32 2
  %74 = load float, ptr %73, align 4, !tbaa !204
  %75 = fsub float %72, %74
  %76 = fmul float %70, %75
  %77 = fptosi float %76 to i32
  %78 = sitofp i32 %77 to float
  %79 = fadd float %74, %78
  %80 = fptosi float %79 to i32
  store i32 %80, ptr %4, align 4, !tbaa !65
  br label %81

81:                                               ; preds = %30, %58, %44, %22, %26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  ret void
}

declare zeroext i8 @BLI_rcti_isect_pt(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @gp_stroke_eraser_is_occluded(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [2 x i32], align 4
  %6 = alloca [3 x float], align 4
  %7 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !122
  %9 = getelementptr inbounds %struct.ScrArea, ptr %8, i64 0, i32 8
  %10 = load i8, ptr %9, align 8, !tbaa !164
  %11 = icmp eq i8 %10, 1
  br i1 %11, label %12, label %74

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 18
  %14 = load i16, ptr %13, align 2, !tbaa !72
  %15 = and i16 %14, 4
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %74, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.tGPsdata, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !124
  %20 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 30
  %21 = load ptr, ptr %20, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  store i32 %2, ptr %5, align 4, !tbaa !65
  %22 = getelementptr inbounds i32, ptr %5, i64 1
  store i32 %3, ptr %22, align 4, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  %23 = call zeroext i8 @ED_view3d_autodist_simple(ptr noundef %19, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0, ptr noundef null) #9
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %72, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.RegionView3D, ptr %21, i64 0, i32 24
  %27 = load i8, ptr %26, align 8, !tbaa !208
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = call float @ED_view3d_calc_zfac(ptr noundef %21, ptr noundef nonnull %6, ptr noundef null) #9
  br label %47

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.RegionView3D, ptr %21, i64 0, i32 2, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !63
  %34 = load float, ptr %6, align 4, !tbaa !63
  %35 = getelementptr inbounds %struct.RegionView3D, ptr %21, i64 0, i32 2, i64 2, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !63
  %37 = getelementptr inbounds float, ptr %6, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !63
  %39 = fmul float %36, %38
  %40 = call float @llvm.fmuladd.f32(float %33, float %34, float %39)
  %41 = getelementptr inbounds %struct.RegionView3D, ptr %21, i64 0, i32 2, i64 2, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !63
  %43 = getelementptr inbounds float, ptr %6, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !63
  %45 = call float @llvm.fmuladd.f32(float %42, float %44, float %40)
  %46 = fneg float %45
  br label %47

47:                                               ; preds = %29, %31
  %48 = phi float [ %30, %29 ], [ %46, %31 ]
  %49 = load i8, ptr %26, align 8, !tbaa !208
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = call float @ED_view3d_calc_zfac(ptr noundef %21, ptr noundef %1, ptr noundef null) #9
  br label %69

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.RegionView3D, ptr %21, i64 0, i32 2, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !63
  %56 = load float, ptr %1, align 4, !tbaa !63
  %57 = getelementptr inbounds %struct.RegionView3D, ptr %21, i64 0, i32 2, i64 2, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !63
  %59 = getelementptr inbounds float, ptr %1, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !63
  %61 = fmul float %58, %60
  %62 = call float @llvm.fmuladd.f32(float %55, float %56, float %61)
  %63 = getelementptr inbounds %struct.RegionView3D, ptr %21, i64 0, i32 2, i64 2, i64 2
  %64 = load float, ptr %63, align 4, !tbaa !63
  %65 = getelementptr inbounds float, ptr %1, i64 2
  %66 = load float, ptr %65, align 4, !tbaa !63
  %67 = call float @llvm.fmuladd.f32(float %64, float %66, float %62)
  %68 = fneg float %67
  br label %69

69:                                               ; preds = %51, %53
  %70 = phi float [ %52, %51 ], [ %68, %53 ]
  %71 = fcmp ule float %70, %48
  br i1 %71, label %72, label %73

72:                                               ; preds = %69, %17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %74

73:                                               ; preds = %69
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %74

74:                                               ; preds = %4, %12, %72, %73
  %75 = phi i8 [ 1, %73 ], [ 0, %72 ], [ 0, %12 ], [ 0, %4 ]
  ret i8 %75
}

declare i32 @ED_view3d_project_int_global(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @UI_view2d_view_to_region_clip(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @edge_inside_circle(ptr noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

declare void @gpencil_undo_finish() local_unnamed_addr #1

declare void @WM_cursor_modal_restore(ptr noundef) local_unnamed_addr #1

declare void @WM_paint_cursor_end(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #1

declare ptr @WM_paint_cursor_activate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @gpencil_draw_eraser(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.tGPsdata, ptr %3, i64 0, i32 12
  %6 = load i16, ptr %5, align 2, !tbaa !73
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  tail call void @glPushMatrix() #9
  %9 = sitofp i32 %1 to float
  %10 = sitofp i32 %2 to float
  tail call void @glTranslatef(float noundef %9, float noundef %10, float noundef 0.000000e+00) #9
  tail call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -128) #9
  tail call void @glEnable(i32 noundef 2848) #9
  tail call void @glEnable(i32 noundef 3042) #9
  %11 = getelementptr inbounds %struct.tGPsdata, ptr %3, i64 0, i32 17
  %12 = load i16, ptr %11, align 4, !tbaa !123
  %13 = sitofp i16 %12 to float
  tail call void @glutil_draw_lined_arc(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef %13, i32 noundef 40) #9
  tail call void @glDisable(i32 noundef 3042) #9
  tail call void @glDisable(i32 noundef 2848) #9
  tail call void @glPopMatrix() #9
  br label %14

14:                                               ; preds = %8, %4
  ret void
}

declare void @glPushMatrix() local_unnamed_addr #1

declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare void @glEnable(i32 noundef) local_unnamed_addr #1

declare void @glutil_draw_lined_arc(float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #1

declare void @glDisable(i32 noundef) local_unnamed_addr #1

declare void @glPopMatrix() local_unnamed_addr #1

declare void @WM_cursor_modal_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @gpencil_draw_apply_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca [2 x float], align 4
  %5 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %7 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !65
  %9 = add nsw i32 %8, 1
  %10 = getelementptr inbounds %struct.tGPsdata, ptr %6, i64 0, i32 13
  store i32 %9, ptr %10, align 4, !tbaa !65
  %11 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 6, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !65
  %13 = add nsw i32 %12, 1
  %14 = getelementptr inbounds %struct.tGPsdata, ptr %6, i64 0, i32 13, i64 1
  store i32 %13, ptr %14, align 4, !tbaa !65
  %15 = tail call double @PIL_check_seconds_timer() #9
  %16 = getelementptr inbounds %struct.tGPsdata, ptr %6, i64 0, i32 20
  store double %15, ptr %16, align 8, !tbaa !71
  %17 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 24
  %18 = load ptr, ptr %17, align 8, !tbaa !209
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load i32, ptr %18, align 4, !tbaa !210
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.wmTabletData, ptr %18, i64 0, i32 1
  %24 = load float, ptr %23, align 4, !tbaa !212
  br label %25

25:                                               ; preds = %2, %20
  %26 = phi float [ %24, %20 ], [ 1.000000e+00, %2 ]
  %27 = phi i1 [ %22, %20 ], [ true, %2 ]
  %28 = getelementptr inbounds %struct.tGPsdata, ptr %6, i64 0, i32 15
  store float %26, ptr %28, align 4, !tbaa !66
  %29 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !56
  call void @RNA_collection_add(ptr noundef %30, ptr noundef nonnull @.str.6, ptr noundef nonnull %3) #9
  %31 = load i32, ptr %10, align 4, !tbaa !65
  %32 = sitofp i32 %31 to float
  store float %32, ptr %4, align 4, !tbaa !63
  %33 = load i32, ptr %14, align 4, !tbaa !65
  %34 = sitofp i32 %33 to float
  %35 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  store float %34, ptr %35, align 4, !tbaa !63
  call void @RNA_float_set_array(ptr noundef nonnull %3, ptr noundef nonnull @.str.9, ptr noundef nonnull %4) #9
  %36 = getelementptr inbounds %struct.tGPsdata, ptr %6, i64 0, i32 15
  %37 = load float, ptr %36, align 4, !tbaa !66
  call void @RNA_float_set(ptr noundef nonnull %3, ptr noundef nonnull @.str.10, float noundef %37) #9
  %38 = getelementptr inbounds %struct.tGPsdata, ptr %6, i64 0, i32 18
  %39 = load i16, ptr %38, align 2, !tbaa !72
  %40 = and i16 %39, 1
  %41 = zext nneg i16 %40 to i32
  call void @RNA_boolean_set(ptr noundef nonnull %3, ptr noundef nonnull @.str.12, i32 noundef %41) #9
  %42 = load i16, ptr %38, align 2, !tbaa !72
  %43 = and i16 %42, 1
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %25
  %46 = and i16 %42, -2
  store i16 %46, ptr %38, align 2, !tbaa !72
  %47 = load i32, ptr %10, align 4, !tbaa !65
  %48 = getelementptr inbounds %struct.tGPsdata, ptr %6, i64 0, i32 14
  store i32 %47, ptr %48, align 4, !tbaa !65
  %49 = load i32, ptr %14, align 4, !tbaa !65
  %50 = getelementptr inbounds %struct.tGPsdata, ptr %6, i64 0, i32 14, i64 1
  store i32 %49, ptr %50, align 4, !tbaa !65
  %51 = load float, ptr %36, align 4, !tbaa !66
  %52 = getelementptr inbounds %struct.tGPsdata, ptr %6, i64 0, i32 16
  store float %51, ptr %52, align 8, !tbaa !74
  %53 = load double, ptr %16, align 8, !tbaa !71
  %54 = getelementptr inbounds %struct.tGPsdata, ptr %6, i64 0, i32 21
  store double %53, ptr %54, align 8, !tbaa !75
  %55 = getelementptr inbounds %struct.tGPsdata, ptr %6, i64 0, i32 19
  store double %53, ptr %55, align 8, !tbaa !70
  %56 = fcmp ult float %51, 0x3FEFAE1480000000
  %57 = select i1 %27, i1 true, i1 %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %45, %25
  %59 = load double, ptr %16, align 8, !tbaa !71
  %60 = getelementptr inbounds %struct.tGPsdata, ptr %6, i64 0, i32 19
  %61 = load double, ptr %60, align 8, !tbaa !70
  %62 = fsub double %59, %61
  %63 = fptrunc double %62 to float
  call void @RNA_float_set(ptr noundef nonnull %3, ptr noundef nonnull @.str.11, float noundef %63) #9
  call fastcc void @gpencil_draw_apply(ptr noundef %0, ptr noundef %6)
  %64 = getelementptr inbounds %struct.tGPsdata, ptr %6, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !124
  call void @ED_region_tag_redraw(ptr noundef %65) #9
  br label %66

66:                                               ; preds = %45, %58
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret void
}

declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #1

declare double @PIL_check_seconds_timer() local_unnamed_addr #1

declare void @RNA_collection_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #1

declare void @gpencil_undo_push(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #1

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_area_headerprint(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ED_operator_regionactive(ptr noundef) local_unnamed_addr #1

declare void @CTX_wm_operator_poll_msg_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !40, i64 152, !41, i64 184}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!41 = !{!"short", !37, i64 0}
!42 = !{!35, !36, i64 8}
!43 = !{!35, !36, i64 24}
!44 = !{!35, !36, i64 32}
!45 = !{!35, !36, i64 48}
!46 = !{!35, !36, i64 64}
!47 = !{!35, !36, i64 56}
!48 = !{!35, !36, i64 72}
!49 = !{!35, !41, i64 184}
!50 = !{!35, !36, i64 88}
!51 = !{!35, !36, i64 104}
!52 = !{i32 0, i32 2}
!53 = !{!54, !36, i64 96}
!54 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!55 = !{!36, !36, i64 0}
!56 = !{!54, !36, i64 112}
!57 = !{!58, !61, i64 128}
!58 = !{!"CollectionPropertyIterator", !59, i64 0, !59, i64 24, !36, i64 48, !37, i64 56, !61, i64 96, !61, i64 100, !59, i64 104, !61, i64 128}
!59 = !{!"PointerRNA", !60, i64 0, !36, i64 8, !36, i64 16}
!60 = !{!"", !36, i64 0}
!61 = !{!"int", !37, i64 0}
!62 = !{i64 0, i64 8, !55, i64 8, i64 8, !55, i64 16, i64 8, !55}
!63 = !{!64, !64, i64 0}
!64 = !{!"float", !37, i64 0}
!65 = !{!61, !61, i64 0}
!66 = !{!67, !64, i64 132}
!67 = !{!"tGPsdata", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !68, i64 48, !59, i64 64, !36, i64 88, !36, i64 96, !36, i64 104, !41, i64 112, !41, i64 114, !37, i64 116, !37, i64 124, !64, i64 132, !64, i64 136, !41, i64 140, !41, i64 142, !69, i64 144, !69, i64 152, !69, i64 160, !37, i64 168, !37, i64 232, !37, i64 296, !36, i64 312}
!68 = !{!"rctf", !64, i64 0, !64, i64 4, !64, i64 8, !64, i64 12}
!69 = !{!"double", !37, i64 0}
!70 = !{!67, !69, i64 144}
!71 = !{!67, !69, i64 152}
!72 = !{!67, !41, i64 142}
!73 = !{!67, !41, i64 114}
!74 = !{!67, !64, i64 136}
!75 = !{!67, !69, i64 160}
!76 = distinct !{!76, !77, !78}
!77 = !{!"llvm.loop.mustprogress"}
!78 = !{!"llvm.loop.unroll.disable"}
!79 = !{!80, !61, i64 2100}
!80 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !61, i64 2096, !61, i64 2100, !37, i64 2104, !61, i64 2108, !61, i64 2112, !37, i64 2116}
!81 = !{!67, !36, i64 312}
!82 = !{!83, !41, i64 18}
!83 = !{!"wmEvent", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !61, i64 20, !61, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !41, i64 44, !41, i64 46, !61, i64 48, !61, i64 52, !69, i64 56, !61, i64 64, !61, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 106, !61, i64 108, !36, i64 112}
!84 = !{!67, !41, i64 112}
!85 = !{!83, !41, i64 16}
!86 = !{!67, !36, i64 0}
!87 = !{!88, !36, i64 264}
!88 = !{!"Scene", !89, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !61, i64 232, !61, i64 236, !61, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !90, i64 280, !98, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !61, i64 4380, !39, i64 4384, !99, i64 4400, !100, i64 4416, !103, i64 4600, !36, i64 4608, !104, i64 4616, !36, i64 4640, !105, i64 4648, !105, i64 4656, !92, i64 4664, !93, i64 4824, !106, i64 4888, !36, i64 4952}
!89 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !61, i64 100, !61, i64 104, !61, i64 108, !36, i64 112}
!90 = !{!"RenderData", !91, i64 0, !36, i64 248, !36, i64 256, !94, i64 264, !95, i64 328, !61, i64 400, !61, i64 404, !61, i64 408, !64, i64 412, !61, i64 416, !61, i64 420, !61, i64 424, !61, i64 428, !41, i64 432, !41, i64 434, !64, i64 436, !64, i64 440, !64, i64 444, !64, i64 448, !64, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !61, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !61, i64 484, !61, i64 488, !41, i64 492, !41, i64 494, !61, i64 496, !61, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !61, i64 516, !61, i64 520, !61, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !68, i64 544, !68, i64 560, !96, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !64, i64 612, !64, i64 616, !64, i64 620, !64, i64 624, !61, i64 628, !64, i64 632, !64, i64 636, !64, i64 640, !64, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !64, i64 660, !64, i64 664, !41, i64 668, !41, i64 670, !64, i64 672, !64, i64 676, !37, i64 680, !61, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !61, i64 2520, !41, i64 2524, !41, i64 2526, !64, i64 2528, !64, i64 2532, !41, i64 2536, !41, i64 2538, !64, i64 2540, !41, i64 2544, !41, i64 2546, !61, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !64, i64 2560, !64, i64 2564, !36, i64 2568, !61, i64 2576, !64, i64 2580, !37, i64 2584, !97, i64 2616, !61, i64 3976, !61, i64 3980}
!91 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !64, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !92, i64 24, !93, i64 184}
!92 = !{!"ColorManagedViewSettings", !61, i64 0, !61, i64 4, !37, i64 8, !37, i64 72, !64, i64 136, !64, i64 140, !36, i64 144, !36, i64 152}
!93 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!94 = !{!"QuicktimeCodecSettings", !61, i64 0, !61, i64 4, !61, i64 8, !61, i64 12, !61, i64 16, !61, i64 20, !61, i64 24, !61, i64 28, !61, i64 32, !61, i64 36, !61, i64 40, !61, i64 44, !41, i64 48, !41, i64 50, !61, i64 52, !61, i64 56, !61, i64 60}
!95 = !{!"FFMpegCodecData", !61, i64 0, !61, i64 4, !61, i64 8, !61, i64 12, !61, i64 16, !61, i64 20, !61, i64 24, !61, i64 28, !64, i64 32, !61, i64 36, !61, i64 40, !61, i64 44, !61, i64 48, !61, i64 52, !61, i64 56, !61, i64 60, !36, i64 64}
!96 = !{!"rcti", !61, i64 0, !61, i64 4, !61, i64 8, !61, i64 12}
!97 = !{!"BakeData", !91, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !64, i64 1280, !64, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!98 = !{!"AudioData", !61, i64 0, !64, i64 4, !64, i64 8, !64, i64 12, !61, i64 16, !41, i64 20, !41, i64 22, !64, i64 24, !64, i64 28}
!99 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!100 = !{!"GameData", !99, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !101, i64 40, !41, i64 64, !41, i64 66, !64, i64 68, !102, i64 72, !64, i64 128, !64, i64 132, !61, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !64, i64 164, !64, i64 168, !64, i64 172, !64, i64 176, !64, i64 180}
!101 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !64, i64 8, !64, i64 12, !36, i64 16}
!102 = !{!"RecastData", !64, i64 0, !64, i64 4, !64, i64 8, !64, i64 12, !64, i64 16, !64, i64 20, !64, i64 24, !64, i64 28, !64, i64 32, !64, i64 36, !61, i64 40, !64, i64 44, !64, i64 48, !41, i64 52, !41, i64 54}
!103 = !{!"UnitSettings", !64, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!104 = !{!"PhysicsSettings", !37, i64 0, !61, i64 12, !61, i64 16, !61, i64 20}
!105 = !{!"long", !37, i64 0}
!106 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!107 = !{!108, !37, i64 58}
!108 = !{!"ToolSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !64, i64 32, !64, i64 36, !64, i64 40, !41, i64 44, !41, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !64, i64 52, !41, i64 56, !37, i64 58, !37, i64 59, !109, i64 64, !111, i64 168, !64, i64 336, !64, i64 340, !41, i64 344, !41, i64 346, !37, i64 348, !37, i64 349, !41, i64 350, !64, i64 352, !64, i64 356, !64, i64 360, !64, i64 364, !64, i64 368, !64, i64 372, !64, i64 376, !64, i64 380, !64, i64 384, !64, i64 388, !41, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !36, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !41, i64 434, !41, i64 436, !41, i64 438, !41, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !61, i64 448, !61, i64 452, !61, i64 456, !61, i64 460, !41, i64 464, !41, i64 466, !61, i64 468, !64, i64 472, !64, i64 476, !112, i64 480, !113, i64 608}
!109 = !{!"ImagePaintSettings", !110, i64 0, !41, i64 40, !41, i64 42, !41, i64 44, !41, i64 46, !37, i64 48, !61, i64 52, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !37, i64 88, !64, i64 100}
!110 = !{!"Paint", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !61, i64 28, !61, i64 32, !61, i64 36}
!111 = !{!"ParticleEditSettings", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !37, i64 8, !36, i64 120, !64, i64 128, !64, i64 132, !61, i64 136, !61, i64 140, !61, i64 144, !61, i64 148, !36, i64 152, !36, i64 160}
!112 = !{!"UnifiedPaintSettings", !61, i64 0, !64, i64 4, !64, i64 8, !64, i64 12, !37, i64 16, !37, i64 28, !61, i64 40, !37, i64 44, !64, i64 52, !61, i64 56, !61, i64 60, !37, i64 64, !37, i64 65, !64, i64 72, !37, i64 76, !61, i64 84, !64, i64 88, !37, i64 92, !37, i64 100, !61, i64 108, !36, i64 112, !64, i64 120, !61, i64 124}
!113 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !64, i64 4, !64, i64 8, !64, i64 12, !64, i64 16, !37, i64 20, !37, i64 21, !64, i64 24, !64, i64 28, !64, i64 32, !64, i64 36}
!114 = !{!67, !36, i64 88}
!115 = !{!67, !36, i64 104}
!116 = !{!117, !61, i64 36}
!117 = !{!"bGPDframe", !36, i64 0, !36, i64 8, !39, i64 16, !61, i64 32, !61, i64 36}
!118 = !{!119, !36, i64 144}
!119 = !{!"bGPdata", !89, i64 0, !39, i64 120, !61, i64 136, !41, i64 140, !41, i64 142, !36, i64 144}
!120 = !{!119, !41, i64 140}
!121 = !{!119, !41, i64 142}
!122 = !{!67, !36, i64 16}
!123 = !{!67, !41, i64 140}
!124 = !{!67, !36, i64 24}
!125 = !{!126, !41, i64 8720}
!126 = !{!"UserDef", !61, i64 0, !61, i64 4, !61, i64 8, !61, i64 12, !61, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !61, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !61, i64 8484, !61, i64 8488, !61, i64 8492, !41, i64 8496, !41, i64 8498, !61, i64 8500, !61, i64 8504, !61, i64 8508, !61, i64 8512, !61, i64 8516, !61, i64 8520, !61, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !37, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !61, i64 8912, !61, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !64, i64 8956, !64, i64 8960, !61, i64 8964, !41, i64 8968, !41, i64 8970, !64, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !127, i64 8984, !37, i64 9760, !37, i64 9772, !41, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !61, i64 10896, !61, i64 10900, !64, i64 10904, !64, i64 10908, !61, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !128, i64 10928}
!127 = !{!"ColorBand", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!128 = !{!"WalkNavigation", !64, i64 0, !64, i64 4, !64, i64 8, !64, i64 12, !64, i64 16, !64, i64 20, !41, i64 24, !37, i64 26}
!129 = !{!119, !61, i64 136}
!130 = !{!131, !36, i64 96}
!131 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !96, i64 56, !37, i64 72, !37, i64 73, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !41, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !39, i64 96, !39, i64 112, !39, i64 128, !39, i64 144}
!132 = !{!67, !36, i64 8}
!133 = !{!126, !41, i64 8722}
!134 = !{i64 0, i64 4, !65, i64 4, i64 4, !65, i64 8, i64 4, !63, i64 12, i64 4, !63}
!135 = !{!136, !61, i64 0}
!136 = !{!"tGPspoint", !61, i64 0, !61, i64 4, !64, i64 8, !64, i64 12}
!137 = !{!136, !61, i64 4}
!138 = distinct !{!138, !77, !78}
!139 = !{!136, !64, i64 8}
!140 = !{!136, !64, i64 12}
!141 = !{i16 -2, i16 2}
!142 = distinct !{!142, !77, !78}
!143 = !{!117, !36, i64 24}
!144 = !{!145, !61, i64 32}
!145 = !{!"bGPDstroke", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !61, i64 32, !41, i64 36, !41, i64 38, !69, i64 40}
!146 = !{!67, !36, i64 96}
!147 = !{!148, !41, i64 44}
!148 = !{!"bGPDlayer", !36, i64 0, !36, i64 8, !39, i64 16, !36, i64 32, !61, i64 40, !41, i64 44, !41, i64 46, !37, i64 48, !37, i64 64}
!149 = !{!145, !41, i64 36}
!150 = !{!145, !41, i64 38}
!151 = !{!145, !69, i64 40}
!152 = !{!145, !36, i64 16}
!153 = !{!154, !64, i64 12}
!154 = !{!"bGPDspoint", !64, i64 0, !64, i64 4, !64, i64 8, !64, i64 12, !64, i64 16}
!155 = !{!154, !64, i64 16}
!156 = distinct !{!156, !77, !78}
!157 = distinct !{!157, !77, !78}
!158 = distinct !{!158, !77, !78}
!159 = distinct !{!159, !77, !78}
!160 = distinct !{!160, !77, !78}
!161 = distinct !{!161, !77, !78}
!162 = !{!148, !61, i64 40}
!163 = !{!88, !61, i64 680}
!164 = !{!131, !37, i64 72}
!165 = !{!166, !36, i64 376}
!166 = !{!"ARegion", !36, i64 0, !36, i64 8, !167, i64 16, !96, i64 176, !96, i64 192, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !64, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!167 = !{!"View2D", !68, i64 0, !68, i64 16, !96, i64 32, !96, i64 48, !96, i64 64, !37, i64 80, !37, i64 88, !64, i64 96, !64, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !61, i64 136, !61, i64 140, !36, i64 144, !36, i64 152}
!168 = !{!169, !37, i64 809}
!169 = !{!"RegionView3D", !37, i64 0, !37, i64 64, !37, i64 128, !37, i64 192, !37, i64 256, !37, i64 320, !37, i64 384, !37, i64 448, !37, i64 544, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !37, i64 696, !37, i64 760, !64, i64 776, !64, i64 780, !64, i64 784, !64, i64 788, !37, i64 792, !64, i64 804, !37, i64 808, !37, i64 809, !37, i64 810, !37, i64 811, !37, i64 812, !37, i64 813, !37, i64 816, !41, i64 824, !41, i64 826, !37, i64 828, !41, i64 844, !41, i64 846, !64, i64 848, !37, i64 852, !64, i64 864, !37, i64 868}
!170 = !{!67, !36, i64 40}
!171 = !{!172, !36, i64 40}
!172 = !{!"SpaceImage", !36, i64 0, !36, i64 8, !39, i64 16, !61, i64 32, !61, i64 36, !36, i64 40, !173, i64 48, !36, i64 88, !174, i64 96, !175, i64 5360, !36, i64 10520, !37, i64 10528, !64, i64 10536, !64, i64 10540, !64, i64 10544, !64, i64 10548, !64, i64 10552, !37, i64 10556, !37, i64 10557, !41, i64 10558, !41, i64 10560, !41, i64 10562, !37, i64 10564, !37, i64 10565, !37, i64 10566, !37, i64 10567, !176, i64 10568}
!173 = !{!"ImageUser", !36, i64 0, !61, i64 8, !61, i64 12, !61, i64 16, !61, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !41, i64 28, !41, i64 30, !41, i64 32, !41, i64 34, !61, i64 36}
!174 = !{!"Scopes", !61, i64 0, !61, i64 4, !61, i64 8, !64, i64 12, !61, i64 16, !64, i64 20, !64, i64 24, !61, i64 28, !64, i64 32, !61, i64 36, !37, i64 40, !175, i64 64, !36, i64 5224, !36, i64 5232, !36, i64 5240, !36, i64 5248, !61, i64 5256, !61, i64 5260}
!175 = !{!"Histogram", !61, i64 0, !61, i64 4, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 3080, !37, i64 4104, !64, i64 5128, !64, i64 5132, !41, i64 5136, !41, i64 5138, !61, i64 5140, !37, i64 5144}
!176 = !{!"MaskSpaceInfo", !36, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!177 = !{!96, !61, i64 0}
!178 = !{!96, !61, i64 8}
!179 = !{!96, !61, i64 4}
!180 = !{!96, !61, i64 12}
!181 = !{!117, !36, i64 16}
!182 = !{!145, !36, i64 0}
!183 = !{i8 0, i8 2}
!184 = distinct !{!184, !77, !78}
!185 = distinct !{!185, !77, !78}
!186 = distinct !{!186, !77, !78}
!187 = distinct !{!187, !77, !78}
!188 = !{!126, !41, i64 8716}
!189 = !{!126, !41, i64 8718}
!190 = !{!54, !36, i64 120}
!191 = !{!67, !36, i64 32}
!192 = !{!193, !41, i64 224}
!193 = !{!"SpaceSeq", !36, i64 0, !36, i64 8, !39, i64 16, !61, i64 32, !64, i64 36, !37, i64 40, !167, i64 56, !64, i64 216, !64, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !61, i64 232, !64, i64 236, !61, i64 240, !61, i64 244, !36, i64 248, !194, i64 256}
!194 = !{!"SequencerScopes", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40}
!195 = !{!196, !41, i64 372}
!196 = !{!"SpaceClip", !36, i64 0, !36, i64 8, !39, i64 16, !61, i64 32, !64, i64 36, !64, i64 40, !64, i64 44, !64, i64 48, !64, i64 52, !197, i64 56, !36, i64 64, !198, i64 72, !61, i64 208, !41, i64 212, !41, i64 214, !61, i64 216, !37, i64 220, !64, i64 228, !64, i64 232, !61, i64 236, !37, i64 240, !37, i64 304, !61, i64 368, !41, i64 372, !41, i64 374, !61, i64 376, !61, i64 380, !37, i64 384, !176, i64 392}
!197 = !{!"MovieClipUser", !61, i64 0, !41, i64 4, !41, i64 6}
!198 = !{!"MovieClipScopes", !41, i64 0, !41, i64 2, !61, i64 4, !61, i64 8, !61, i64 12, !199, i64 16, !36, i64 80, !36, i64 88, !37, i64 96, !41, i64 104, !41, i64 106, !61, i64 108, !36, i64 112, !36, i64 120, !37, i64 128}
!199 = !{!"MovieTrackingMarker", !37, i64 0, !37, i64 8, !37, i64 40, !37, i64 48, !61, i64 56, !61, i64 60}
!200 = !{!166, !41, i64 208}
!201 = !{!166, !41, i64 210}
!202 = !{!68, !64, i64 0}
!203 = !{!68, !64, i64 4}
!204 = !{!68, !64, i64 8}
!205 = !{!68, !64, i64 12}
!206 = !{!154, !64, i64 0}
!207 = !{!154, !64, i64 4}
!208 = !{!169, !37, i64 808}
!209 = !{!83, !36, i64 96}
!210 = !{!211, !61, i64 0}
!211 = !{!"wmTabletData", !61, i64 0, !64, i64 4, !64, i64 8, !64, i64 12}
!212 = !{!211, !64, i64 4}
