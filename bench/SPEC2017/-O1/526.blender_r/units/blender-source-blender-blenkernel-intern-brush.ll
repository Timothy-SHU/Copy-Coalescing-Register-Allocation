; ModuleID = 'blender/source/blender/blenkernel/intern/brush.c'
source_filename = "blender/source/blender/blenkernel/intern/brush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Brush = type { %struct.ID, %struct.BrushClone, ptr, %struct.MTex, %struct.MTex, ptr, ptr, ptr, ptr, ptr, [1024 x i8], float, i16, i16, float, i32, i32, i32, float, i32, i32, i32, i32, float, float, [3 x float], float, [3 x float], i32, float, float, i32, i32, i32, i8, i8, i8, i8, float, float, float, float, float, i32, i32, i32, float, float, i32, i32, float, [3 x float], [3 x float], [2 x float], [2 x float], [2 x float], [2 x float] }
%struct.BrushClone = type { ptr, [2 x float], float, float }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.CurveMapping = type { i32, i32, i32, i32, %struct.rctf, %struct.rctf, [4 x %struct.CurveMap], [3 x float], [3 x float], [3 x float], [3 x float] }
%struct.rctf = type { float, float, float, float }
%struct.CurveMap = type { i16, i16, float, float, float, [2 x float], [2 x float], ptr, ptr, ptr, [2 x float], [2 x float] }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
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
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }

@brush_rng = internal unnamed_addr global ptr null, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@.str = private unnamed_addr constant [25 x i8] c"br->normal_weight = %f;\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"br->blend = %d;\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"br->size = %d;\0A\00", align 1
@.str.67 = private unnamed_addr constant [18 x i8] c"br->jitter = %f;\0A\00", align 1
@.str.68 = private unnamed_addr constant [19 x i8] c"br->spacing = %d;\0A\00", align 1
@.str.69 = private unnamed_addr constant [32 x i8] c"br->smooth_stroke_radius = %d;\0A\00", align 1
@.str.70 = private unnamed_addr constant [32 x i8] c"br->smooth_stroke_factor = %f;\0A\00", align 1
@.str.71 = private unnamed_addr constant [16 x i8] c"br->rate = %f;\0A\00", align 1
@.str.72 = private unnamed_addr constant [17 x i8] c"br->alpha = %f;\0A\00", align 1
@.str.73 = private unnamed_addr constant [24 x i8] c"br->sculpt_plane = %d;\0A\00", align 1
@.str.74 = private unnamed_addr constant [24 x i8] c"br->plane_offset = %f;\0A\00", align 1
@.str.75 = private unnamed_addr constant [29 x i8] c"br->autosmooth_factor = %f;\0A\00", align 1
@.str.76 = private unnamed_addr constant [31 x i8] c"br->crease_pinch_factor = %f;\0A\00", align 1
@.str.77 = private unnamed_addr constant [22 x i8] c"br->plane_trim = %f;\0A\00", align 1
@.str.78 = private unnamed_addr constant [31 x i8] c"br->texture_sample_bias = %f;\0A\00", align 1
@.str.79 = private unnamed_addr constant [33 x i8] c"br->texture_overlay_alpha = %d;\0A\00", align 1
@.str.80 = private unnamed_addr constant [22 x i8] c"br->add_col[0] = %f;\0A\00", align 1
@.str.81 = private unnamed_addr constant [22 x i8] c"br->add_col[1] = %f;\0A\00", align 1
@.str.82 = private unnamed_addr constant [22 x i8] c"br->add_col[2] = %f;\0A\00", align 1
@.str.83 = private unnamed_addr constant [22 x i8] c"br->sub_col[0] = %f;\0A\00", align 1
@.str.84 = private unnamed_addr constant [22 x i8] c"br->sub_col[1] = %f;\0A\00", align 1
@.str.85 = private unnamed_addr constant [22 x i8] c"br->sub_col[2] = %f;\0A\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"Tex\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.88 = private unnamed_addr constant [20 x i8] c"Brush texture cache\00", align 1
@.str.89 = private unnamed_addr constant [23 x i8] c"radial control texture\00", align 1
@.str.90 = private unnamed_addr constant [20 x i8] c"radial control rect\00", align 1
@str = private unnamed_addr constant [28 x i8] c"br->flag |= BRUSH_AIRBRUSH;\00", align 1
@str.91 = private unnamed_addr constant [29 x i8] c"br->flag &= ~BRUSH_AIRBRUSH;\00", align 1
@str.92 = private unnamed_addr constant [25 x i8] c"br->flag |= BRUSH_TORUS;\00", align 1
@str.93 = private unnamed_addr constant [26 x i8] c"br->flag &= ~BRUSH_TORUS;\00", align 1
@str.94 = private unnamed_addr constant [34 x i8] c"br->flag |= BRUSH_ALPHA_PRESSURE;\00", align 1
@str.95 = private unnamed_addr constant [35 x i8] c"br->flag &= ~BRUSH_ALPHA_PRESSURE;\00", align 1
@str.96 = private unnamed_addr constant [33 x i8] c"br->flag |= BRUSH_SIZE_PRESSURE;\00", align 1
@str.97 = private unnamed_addr constant [34 x i8] c"br->flag &= ~BRUSH_SIZE_PRESSURE;\00", align 1
@str.98 = private unnamed_addr constant [35 x i8] c"br->flag |= BRUSH_JITTER_PRESSURE;\00", align 1
@str.99 = private unnamed_addr constant [36 x i8] c"br->flag &= ~BRUSH_JITTER_PRESSURE;\00", align 1
@str.100 = private unnamed_addr constant [36 x i8] c"br->flag |= BRUSH_SPACING_PRESSURE;\00", align 1
@str.101 = private unnamed_addr constant [37 x i8] c"br->flag &= ~BRUSH_SPACING_PRESSURE;\00", align 1
@str.102 = private unnamed_addr constant [24 x i8] c"br->flag |= BRUSH_RAKE;\00", align 1
@str.103 = private unnamed_addr constant [25 x i8] c"br->flag &= ~BRUSH_RAKE;\00", align 1
@str.104 = private unnamed_addr constant [28 x i8] c"br->flag |= BRUSH_ANCHORED;\00", align 1
@str.105 = private unnamed_addr constant [29 x i8] c"br->flag &= ~BRUSH_ANCHORED;\00", align 1
@str.106 = private unnamed_addr constant [26 x i8] c"br->flag |= BRUSH_DIR_IN;\00", align 1
@str.107 = private unnamed_addr constant [27 x i8] c"br->flag &= ~BRUSH_DIR_IN;\00", align 1
@str.108 = private unnamed_addr constant [25 x i8] c"br->flag |= BRUSH_SPACE;\00", align 1
@str.109 = private unnamed_addr constant [26 x i8] c"br->flag &= ~BRUSH_SPACE;\00", align 1
@str.110 = private unnamed_addr constant [33 x i8] c"br->flag |= BRUSH_SMOOTH_STROKE;\00", align 1
@str.111 = private unnamed_addr constant [34 x i8] c"br->flag &= ~BRUSH_SMOOTH_STROKE;\00", align 1
@str.112 = private unnamed_addr constant [30 x i8] c"br->flag |= BRUSH_PERSISTENT;\00", align 1
@str.113 = private unnamed_addr constant [31 x i8] c"br->flag &= ~BRUSH_PERSISTENT;\00", align 1
@str.114 = private unnamed_addr constant [30 x i8] c"br->flag |= BRUSH_ACCUMULATE;\00", align 1
@str.115 = private unnamed_addr constant [31 x i8] c"br->flag &= ~BRUSH_ACCUMULATE;\00", align 1
@str.116 = private unnamed_addr constant [30 x i8] c"br->flag |= BRUSH_LOCK_ALPHA;\00", align 1
@str.117 = private unnamed_addr constant [31 x i8] c"br->flag &= ~BRUSH_LOCK_ALPHA;\00", align 1
@str.118 = private unnamed_addr constant [35 x i8] c"br->flag |= BRUSH_ORIGINAL_NORMAL;\00", align 1
@str.119 = private unnamed_addr constant [36 x i8] c"br->flag &= ~BRUSH_ORIGINAL_NORMAL;\00", align 1
@str.120 = private unnamed_addr constant [35 x i8] c"br->flag |= BRUSH_OFFSET_PRESSURE;\00", align 1
@str.121 = private unnamed_addr constant [36 x i8] c"br->flag &= ~BRUSH_OFFSET_PRESSURE;\00", align 1
@str.122 = private unnamed_addr constant [31 x i8] c"br->flag |= BRUSH_SPACE_ATTEN;\00", align 1
@str.123 = private unnamed_addr constant [32 x i8] c"br->flag &= ~BRUSH_SPACE_ATTEN;\00", align 1
@str.124 = private unnamed_addr constant [34 x i8] c"br->flag |= BRUSH_ADAPTIVE_SPACE;\00", align 1
@str.125 = private unnamed_addr constant [35 x i8] c"br->flag &= ~BRUSH_ADAPTIVE_SPACE;\00", align 1
@str.126 = private unnamed_addr constant [29 x i8] c"br->flag |= BRUSH_LOCK_SIZE;\00", align 1
@str.127 = private unnamed_addr constant [30 x i8] c"br->flag &= ~BRUSH_LOCK_SIZE;\00", align 1
@str.128 = private unnamed_addr constant [32 x i8] c"br->flag |= BRUSH_EDGE_TO_EDGE;\00", align 1
@str.129 = private unnamed_addr constant [33 x i8] c"br->flag &= ~BRUSH_EDGE_TO_EDGE;\00", align 1
@str.130 = private unnamed_addr constant [28 x i8] c"br->flag |= BRUSH_DRAG_DOT;\00", align 1
@str.131 = private unnamed_addr constant [29 x i8] c"br->flag &= ~BRUSH_DRAG_DOT;\00", align 1
@str.132 = private unnamed_addr constant [43 x i8] c"br->flag |= BRUSH_INVERSE_SMOOTH_PRESSURE;\00", align 1
@str.133 = private unnamed_addr constant [44 x i8] c"br->flag &= ~BRUSH_INVERSE_SMOOTH_PRESSURE;\00", align 1
@str.134 = private unnamed_addr constant [35 x i8] c"br->flag |= BRUSH_RANDOM_ROTATION;\00", align 1
@str.135 = private unnamed_addr constant [36 x i8] c"br->flag &= ~BRUSH_RANDOM_ROTATION;\00", align 1
@str.136 = private unnamed_addr constant [30 x i8] c"br->flag |= BRUSH_PLANE_TRIM;\00", align 1
@str.137 = private unnamed_addr constant [31 x i8] c"br->flag &= ~BRUSH_PLANE_TRIM;\00", align 1
@str.138 = private unnamed_addr constant [29 x i8] c"br->flag |= BRUSH_FRONTFACE;\00", align 1
@str.139 = private unnamed_addr constant [30 x i8] c"br->flag &= ~BRUSH_FRONTFACE;\00", align 1
@str.140 = private unnamed_addr constant [31 x i8] c"br->flag |= BRUSH_CUSTOM_ICON;\00", align 1
@str.141 = private unnamed_addr constant [32 x i8] c"br->flag &= ~BRUSH_CUSTOM_ICON;\00", align 1
@str.142 = private unnamed_addr constant [43 x i8] c"br->overlay_flags |= BRUSH_OVERLAY_CURSOR;\00", align 1
@str.143 = private unnamed_addr constant [44 x i8] c"br->overlay_flags &= ~BRUSH_OVERLAY_CURSOR;\00", align 1
@str.144 = private unnamed_addr constant [44 x i8] c"br->overlay_flags |= BRUSH_OVERLAY_PRIMARY;\00", align 1
@str.145 = private unnamed_addr constant [45 x i8] c"br->overlay_flags &= ~BRUSH_OVERLAY_PRIMARY;\00", align 1
@str.146 = private unnamed_addr constant [46 x i8] c"br->overlay_flags |= BRUSH_OVERLAY_SECONDARY;\00", align 1
@str.147 = private unnamed_addr constant [47 x i8] c"br->overlay_flags &= ~BRUSH_OVERLAY_SECONDARY;\00", align 1
@str.148 = private unnamed_addr constant [62 x i8] c"br->overlay_flags |= BRUSH_OVERLAY_CURSOR_OVERRIDE_ON_STROKE;\00", align 1
@str.149 = private unnamed_addr constant [63 x i8] c"br->overlay_flags &= ~BRUSH_OVERLAY_CURSOR_OVERRIDE_ON_STROKE;\00", align 1
@str.150 = private unnamed_addr constant [63 x i8] c"br->overlay_flags |= BRUSH_OVERLAY_PRIMARY_OVERRIDE_ON_STROKE;\00", align 1
@str.151 = private unnamed_addr constant [64 x i8] c"br->overlay_flags &= ~BRUSH_OVERLAY_PRIMARY_OVERRIDE_ON_STROKE;\00", align 1
@str.152 = private unnamed_addr constant [65 x i8] c"br->overlay_flags |= BRUSH_OVERLAY_SECONDARY_OVERRIDE_ON_STROKE;\00", align 1
@str.153 = private unnamed_addr constant [66 x i8] c"br->overlay_flags &= ~BRUSH_OVERLAY_SECONDARY_OVERRIDE_ON_STROKE;\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_brush_system_init() local_unnamed_addr #0 {
  %1 = tail call ptr @BLI_rng_new(i32 noundef 0) #12
  store ptr %1, ptr @brush_rng, align 8, !tbaa !34
  tail call void @BLI_rng_srandom(ptr noundef %1, i32 noundef 31415682) #12
  ret void
}

declare ptr @BLI_rng_new(i32 noundef) local_unnamed_addr #1

declare void @BLI_rng_srandom(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_brush_system_exit() local_unnamed_addr #0 {
  %1 = load ptr, ptr @brush_rng, align 8, !tbaa !34
  tail call void @BLI_rng_free(ptr noundef %1) #12
  ret void
}

declare void @BLI_rng_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_brush_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 21058, ptr noundef %1) #12
  %4 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 5
  %5 = load i16, ptr %4, align 2, !tbaa !38
  %6 = or i16 %5, 512
  store i16 %6, ptr %4, align 2, !tbaa !38
  %7 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 12
  store i16 0, ptr %7, align 4, !tbaa !46
  %8 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 16
  store i32 0, ptr %8, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 13
  store i16 30, ptr %9, align 2, !tbaa !48
  %10 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 14
  store float 1.000000e+00, ptr %10, align 8, !tbaa !49
  %11 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 15
  store i32 35, ptr %11, align 4, !tbaa !50
  %12 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 26
  store float 5.000000e-01, ptr %12, align 8, !tbaa !51
  %13 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 38
  store float 0.000000e+00, ptr %13, align 4, !tbaa !52
  %14 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 39
  store float 5.000000e-01, ptr %14, align 8, !tbaa !53
  %15 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 28
  store i32 0, ptr %15, align 8, !tbaa !54
  %16 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 29
  store float 0.000000e+00, ptr %16, align 4, !tbaa !55
  %17 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 40
  store float 5.000000e-01, ptr %17, align 4, !tbaa !56
  %18 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 1, i32 2
  store float 5.000000e-01, ptr %18, align 8, !tbaa !57
  %19 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 11
  store float 0.000000e+00, ptr %19, align 8, !tbaa !58
  %20 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 50
  store float 0x3FC99999A0000000, ptr %20, align 4, !tbaa !59
  store i32 4, ptr %8, align 8, !tbaa !47
  %21 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 25
  store float 1.000000e+00, ptr %21, align 4, !tbaa !60
  %22 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 25, i64 1
  store float 1.000000e+00, ptr %22, align 4, !tbaa !60
  %23 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 25, i64 2
  store float 1.000000e+00, ptr %23, align 4, !tbaa !60
  %24 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 27
  store float 0.000000e+00, ptr %24, align 4, !tbaa !60
  %25 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 27, i64 1
  store float 0.000000e+00, ptr %25, align 4, !tbaa !60
  %26 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 27, i64 2
  store float 0.000000e+00, ptr %26, align 4, !tbaa !60
  store i32 263172, ptr %8, align 8, !tbaa !47
  %27 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 21
  store i32 10, ptr %27, align 4, !tbaa !61
  %28 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 22
  store i32 75, ptr %28, align 8, !tbaa !62
  %29 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 23
  store float 0x3FECCCCCC0000000, ptr %29, align 4, !tbaa !63
  %30 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 24
  store float 0x3FB99999A0000000, ptr %30, align 8, !tbaa !64
  %31 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 18
  store float 0.000000e+00, ptr %31, align 8, !tbaa !65
  %32 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 3
  tail call void @default_mtex(ptr noundef nonnull %32) #12
  %33 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 4
  tail call void @default_mtex(ptr noundef nonnull %33) #12
  %34 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 42
  store float 0.000000e+00, ptr %34, align 4, !tbaa !66
  %35 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 43
  store i32 33, ptr %35, align 8, !tbaa !67
  %36 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 44
  store i32 33, ptr %36, align 4, !tbaa !68
  %37 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 45
  store i32 33, ptr %37, align 8, !tbaa !69
  %38 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 20
  store i32 0, ptr %38, align 8, !tbaa !70
  %39 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 51
  store float 1.000000e+00, ptr %39, align 8, !tbaa !60
  %40 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 51, i64 1
  store float 0x3FD8F5C280000000, ptr %40, align 4, !tbaa !60
  %41 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 51, i64 2
  store float 0x3FD8F5C280000000, ptr %41, align 8, !tbaa !60
  %42 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 52
  store float 0x3FD8F5C280000000, ptr %42, align 4, !tbaa !60
  %43 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 52, i64 1
  store float 0x3FD8F5C280000000, ptr %43, align 4, !tbaa !60
  %44 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 52, i64 2
  store float 1.000000e+00, ptr %44, align 4, !tbaa !60
  %45 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 53
  store float 2.560000e+02, ptr %45, align 8, !tbaa !60
  %46 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 53, i64 1
  store float 2.560000e+02, ptr %46, align 4, !tbaa !60
  %47 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 54
  store float 2.560000e+02, ptr %47, align 8, !tbaa !60
  %48 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 54, i64 1
  store float 2.560000e+02, ptr %48, align 4, !tbaa !60
  %49 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 34
  store i8 1, ptr %49, align 8, !tbaa !71
  %50 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !72
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %2
  %54 = tail call ptr @curvemapping_add(i32 noundef 1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #12
  store ptr %54, ptr %50, align 8, !tbaa !72
  br label %55

55:                                               ; preds = %2, %53
  %56 = load ptr, ptr %50, align 8, !tbaa !72
  %57 = getelementptr inbounds %struct.CurveMapping, ptr %56, i64 0, i32 6
  %58 = getelementptr inbounds %struct.CurveMapping, ptr %56, i64 0, i32 6, i64 0, i32 1
  %59 = load i16, ptr %58, align 2, !tbaa !73
  %60 = and i16 %59, -2
  store i16 %60, ptr %58, align 2, !tbaa !73
  %61 = getelementptr inbounds %struct.CurveMapping, ptr %56, i64 0, i32 2
  store i32 2, ptr %61, align 8, !tbaa !75
  %62 = getelementptr inbounds %struct.CurveMapping, ptr %56, i64 0, i32 5
  tail call void @curvemap_reset(ptr noundef nonnull %57, ptr noundef nonnull %62, i32 noundef 2, i32 noundef 0) #12
  %63 = load ptr, ptr %50, align 8, !tbaa !72
  tail call void @curvemapping_changed(ptr noundef %63, i8 noundef zeroext 0) #12
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_brush_curve_preset(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call ptr @curvemapping_add(i32 noundef 1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #12
  store ptr %7, ptr %3, align 8, !tbaa !72
  br label %8

8:                                                ; preds = %6, %2
  %9 = load ptr, ptr %3, align 8, !tbaa !72
  %10 = getelementptr inbounds %struct.CurveMapping, ptr %9, i64 0, i32 6
  %11 = getelementptr inbounds %struct.CurveMapping, ptr %9, i64 0, i32 6, i64 0, i32 1
  %12 = load i16, ptr %11, align 2, !tbaa !73
  %13 = and i16 %12, -2
  store i16 %13, ptr %11, align 2, !tbaa !73
  %14 = getelementptr inbounds %struct.CurveMapping, ptr %9, i64 0, i32 2
  store i32 %1, ptr %14, align 8, !tbaa !75
  %15 = getelementptr inbounds %struct.CurveMapping, ptr %9, i64 0, i32 5
  tail call void @curvemap_reset(ptr noundef nonnull %10, ptr noundef nonnull %15, i32 noundef %1, i32 noundef 0) #12
  %16 = load ptr, ptr %3, align 8, !tbaa !72
  tail call void @curvemapping_changed(ptr noundef %16, i8 noundef zeroext 0) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_brush_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_libblock_copy(ptr noundef %0) #12
  %3 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 3, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !78
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @id_us_plus(ptr noundef nonnull %4) #12
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 4, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !79
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @id_us_plus(ptr noundef nonnull %9) #12
  br label %12

12:                                               ; preds = %11, %7
  %13 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !80
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @id_us_plus(ptr noundef nonnull %14) #12
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !81
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = tail call ptr @IMB_dupImBuf(ptr noundef nonnull %19) #12
  %23 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 6
  store ptr %22, ptr %23, align 8, !tbaa !81
  br label %24

24:                                               ; preds = %21, %17
  %25 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 7
  store ptr null, ptr %25, align 8, !tbaa !82
  %26 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !72
  %28 = tail call ptr @curvemapping_copy(ptr noundef %27) #12
  %29 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 2
  store ptr %28, ptr %29, align 8, !tbaa !72
  %30 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 5
  %31 = load i16, ptr %30, align 2, !tbaa !38
  %32 = and i16 %31, 512
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = or disjoint i16 %31, 512
  store i16 %35, ptr %30, align 2, !tbaa !38
  %36 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 6
  %37 = load i32, ptr %36, align 4, !tbaa !83
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %36, align 4, !tbaa !83
  br label %39

39:                                               ; preds = %34, %24
  ret ptr %2
}

declare ptr @BKE_libblock_copy(ptr noundef) local_unnamed_addr #1

declare void @id_us_plus(ptr noundef) local_unnamed_addr #1

declare ptr @IMB_dupImBuf(ptr noundef) local_unnamed_addr #1

declare ptr @curvemapping_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_brush_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 3, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !78
  tail call void @id_us_min(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 4, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !79
  tail call void @id_us_min(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !80
  tail call void @id_us_min(ptr noundef %7) #12
  %8 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !81
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  tail call void @IMB_freeImBuf(ptr noundef nonnull %9) #12
  br label %12

12:                                               ; preds = %11, %1
  %13 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 7
  tail call void @BKE_previewimg_free(ptr noundef nonnull %13) #12
  %14 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !72
  tail call void @curvemapping_free(ptr noundef %15) #12
  %16 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !84
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %20(ptr noundef nonnull %17) #12
  br label %21

21:                                               ; preds = %19, %12
  ret void
}

declare void @id_us_min(ptr noundef) local_unnamed_addr #1

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #1

declare void @BKE_previewimg_free(ptr noundef) local_unnamed_addr #1

declare void @curvemapping_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_brush_make_local(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @G, align 8, !tbaa !85
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !88
  %5 = icmp eq ptr %4, null
  br i1 %5, label %101, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !89
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %6
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef nonnull %8) #12
  %11 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 3, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !78
  tail call void @id_lib_extern(ptr noundef %12) #12
  %13 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 4, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !79
  tail call void @id_lib_extern(ptr noundef %14) #12
  %15 = load ptr, ptr %7, align 8, !tbaa !89
  tail call void @id_lib_extern(ptr noundef %15) #12
  %16 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !80
  tail call void @id_lib_extern(ptr noundef %17) #12
  br label %18

18:                                               ; preds = %10, %6
  %19 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %50, label %22

22:                                               ; preds = %18, %41
  %23 = phi ptr [ %44, %41 ], [ %20, %18 ]
  %24 = phi i8 [ %43, %41 ], [ 0, %18 ]
  %25 = phi i8 [ %42, %41 ], [ 0, %18 ]
  %26 = icmp eq i8 %24, 0
  %27 = icmp eq i8 %25, 0
  %28 = select i1 %26, i1 true, i1 %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.Scene, ptr %23, i64 0, i32 20
  %31 = load ptr, ptr %30, align 8, !tbaa !90
  %32 = getelementptr inbounds %struct.ToolSettings, ptr %31, i64 0, i32 17
  %33 = tail call ptr @BKE_paint_brush(ptr noundef nonnull %32) #12
  %34 = icmp eq ptr %33, %0
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.ID, ptr %23, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !109
  %38 = icmp eq ptr %37, null
  %39 = select i1 %38, i8 1, i8 %25
  %40 = select i1 %38, i8 %24, i8 1
  br label %41

41:                                               ; preds = %35, %29
  %42 = phi i8 [ %25, %29 ], [ %39, %35 ]
  %43 = phi i8 [ %24, %29 ], [ %40, %35 ]
  %44 = load ptr, ptr %23, align 8, !tbaa !34
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %22, !llvm.loop !110

46:                                               ; preds = %41, %22
  %47 = phi i8 [ %25, %22 ], [ %42, %41 ]
  %48 = phi i8 [ %24, %22 ], [ %43, %41 ]
  %49 = icmp ne i8 %47, 0
  br label %50

50:                                               ; preds = %46, %18
  %51 = phi i1 [ false, %18 ], [ %49, %46 ]
  %52 = phi i8 [ 0, %18 ], [ %48, %46 ]
  %53 = icmp eq i8 %52, 0
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %55, label %72

55:                                               ; preds = %50
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef %0) #12
  %56 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 3, i32 5
  %57 = load ptr, ptr %56, align 8, !tbaa !78
  tail call void @id_lib_extern(ptr noundef %57) #12
  %58 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 4, i32 5
  %59 = load ptr, ptr %58, align 8, !tbaa !79
  tail call void @id_lib_extern(ptr noundef %59) #12
  %60 = load ptr, ptr %7, align 8, !tbaa !89
  tail call void @id_lib_extern(ptr noundef %60) #12
  %61 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 9
  %62 = load ptr, ptr %61, align 8, !tbaa !80
  tail call void @id_lib_extern(ptr noundef %62) #12
  %63 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 5
  %64 = load i16, ptr %63, align 2, !tbaa !38
  %65 = and i16 %64, 512
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %67, label %101

67:                                               ; preds = %55
  %68 = or disjoint i16 %64, 512
  store i16 %68, ptr %63, align 2, !tbaa !38
  %69 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  %70 = load i32, ptr %69, align 4, !tbaa !83
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr %69, align 4, !tbaa !83
  br label %101

72:                                               ; preds = %50
  %73 = icmp ne i8 %52, 0
  %74 = select i1 %51, i1 %73, i1 false
  br i1 %74, label %75, label %101

75:                                               ; preds = %72
  %76 = tail call ptr @BKE_brush_copy(ptr noundef %0)
  %77 = getelementptr inbounds %struct.ID, ptr %76, i64 0, i32 6
  store i32 1, ptr %77, align 4, !tbaa !83
  %78 = getelementptr inbounds %struct.ID, ptr %76, i64 0, i32 5
  %79 = load i16, ptr %78, align 2, !tbaa !38
  %80 = or i16 %79, 512
  store i16 %80, ptr %78, align 2, !tbaa !38
  %81 = load ptr, ptr %3, align 8, !tbaa !88
  tail call void @BKE_id_lib_local_paths(ptr noundef %2, ptr noundef %81, ptr noundef %76) #12
  %82 = load ptr, ptr %19, align 8, !tbaa !34
  %83 = icmp eq ptr %82, null
  br i1 %83, label %101, label %84

84:                                               ; preds = %75, %98
  %85 = phi ptr [ %99, %98 ], [ %82, %75 ]
  %86 = getelementptr inbounds %struct.Scene, ptr %85, i64 0, i32 20
  %87 = load ptr, ptr %86, align 8, !tbaa !90
  %88 = getelementptr inbounds %struct.ToolSettings, ptr %87, i64 0, i32 17
  %89 = tail call ptr @BKE_paint_brush(ptr noundef nonnull %88) #12
  %90 = icmp eq ptr %89, %0
  br i1 %90, label %91, label %98

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.ID, ptr %85, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !109
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load ptr, ptr %86, align 8, !tbaa !90
  %97 = getelementptr inbounds %struct.ToolSettings, ptr %96, i64 0, i32 17
  tail call void @BKE_paint_brush_set(ptr noundef nonnull %97, ptr noundef %76) #12
  br label %98

98:                                               ; preds = %84, %95, %91
  %99 = load ptr, ptr %85, align 8, !tbaa !34
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %84, !llvm.loop !113

101:                                              ; preds = %98, %75, %67, %55, %72, %1
  ret void
}

declare void @id_clear_lib_data(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BKE_paint_brush(ptr noundef) local_unnamed_addr #1

declare void @BKE_id_lib_local_paths(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_paint_brush_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_brush_debug_print_state(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.Brush, align 8
  call void @llvm.lifetime.start.p0(i64 2056, ptr nonnull %2) #12
  %3 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 12
  %4 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 16
  %5 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2056) %2, i8 0, i64 2056, i1 false)
  store i16 30, ptr %5, align 2, !tbaa !48
  %6 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 14
  store float 1.000000e+00, ptr %6, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 15
  store i32 35, ptr %7, align 4, !tbaa !50
  %8 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 26
  store float 5.000000e-01, ptr %8, align 8, !tbaa !51
  %9 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 38
  store float 0.000000e+00, ptr %9, align 4, !tbaa !52
  %10 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 39
  store float 5.000000e-01, ptr %10, align 8, !tbaa !53
  %11 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 28
  store i32 0, ptr %11, align 8, !tbaa !54
  %12 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 29
  store float 0.000000e+00, ptr %12, align 4, !tbaa !55
  %13 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 40
  store float 5.000000e-01, ptr %13, align 4, !tbaa !56
  %14 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 1, i32 2
  store float 5.000000e-01, ptr %14, align 8, !tbaa !57
  %15 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 11
  store float 0.000000e+00, ptr %15, align 8, !tbaa !58
  %16 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 50
  store float 0x3FC99999A0000000, ptr %16, align 4, !tbaa !59
  store i32 4, ptr %4, align 8, !tbaa !47
  %17 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 25
  store float 1.000000e+00, ptr %17, align 4, !tbaa !60
  %18 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 25, i64 1
  store float 1.000000e+00, ptr %18, align 8, !tbaa !60
  %19 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 25, i64 2
  store float 1.000000e+00, ptr %19, align 4, !tbaa !60
  %20 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 27
  store float 0.000000e+00, ptr %20, align 4, !tbaa !60
  %21 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 27, i64 1
  store float 0.000000e+00, ptr %21, align 8, !tbaa !60
  %22 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 27, i64 2
  store float 0.000000e+00, ptr %22, align 4, !tbaa !60
  store i32 263172, ptr %4, align 8, !tbaa !47
  %23 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 21
  store i32 10, ptr %23, align 4, !tbaa !61
  %24 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 22
  store i32 75, ptr %24, align 8, !tbaa !62
  %25 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 23
  store float 0x3FECCCCCC0000000, ptr %25, align 4, !tbaa !63
  %26 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 24
  store float 0x3FB99999A0000000, ptr %26, align 8, !tbaa !64
  %27 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 18
  store float 0.000000e+00, ptr %27, align 8, !tbaa !65
  %28 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 3
  call void @default_mtex(ptr noundef nonnull %28) #12
  %29 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 4
  call void @default_mtex(ptr noundef nonnull %29) #12
  %30 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 42
  store float 0.000000e+00, ptr %30, align 4, !tbaa !66
  %31 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 43
  store i32 33, ptr %31, align 8, !tbaa !67
  %32 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 44
  store i32 33, ptr %32, align 4, !tbaa !68
  %33 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 45
  store i32 33, ptr %33, align 8, !tbaa !69
  %34 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 20
  store i32 0, ptr %34, align 8, !tbaa !70
  %35 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 51
  store float 1.000000e+00, ptr %35, align 8, !tbaa !60
  %36 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 51, i64 1
  store float 0x3FD8F5C280000000, ptr %36, align 4, !tbaa !60
  %37 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 51, i64 2
  store float 0x3FD8F5C280000000, ptr %37, align 8, !tbaa !60
  %38 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 52
  store float 0x3FD8F5C280000000, ptr %38, align 4, !tbaa !60
  %39 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 52, i64 1
  store float 0x3FD8F5C280000000, ptr %39, align 8, !tbaa !60
  %40 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 52, i64 2
  store float 1.000000e+00, ptr %40, align 4, !tbaa !60
  %41 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 53
  store float 2.560000e+02, ptr %41, align 8, !tbaa !60
  %42 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 53, i64 1
  store float 2.560000e+02, ptr %42, align 4, !tbaa !60
  %43 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 54
  store float 2.560000e+02, ptr %43, align 8, !tbaa !60
  %44 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 54, i64 1
  store float 2.560000e+02, ptr %44, align 4, !tbaa !60
  %45 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 11
  %46 = load float, ptr %45, align 8, !tbaa !58
  %47 = load float, ptr %15, align 8, !tbaa !58
  %48 = fcmp une float %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %1
  %50 = fpext float %46 to double
  %51 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %50)
  br label %52

52:                                               ; preds = %49, %1
  %53 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 12
  %54 = load i16, ptr %53, align 4, !tbaa !46
  %55 = load i16, ptr %3, align 4, !tbaa !46
  %56 = icmp eq i16 %54, %55
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = sext i16 %54 to i32
  %59 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %58)
  br label %60

60:                                               ; preds = %57, %52
  %61 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 15
  %62 = load i32, ptr %61, align 4, !tbaa !50
  %63 = load i32, ptr %7, align 4, !tbaa !50
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %67, label %65

65:                                               ; preds = %60
  %66 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %62)
  br label %67

67:                                               ; preds = %65, %60
  %68 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 16
  %69 = load i32, ptr %68, align 8, !tbaa !47
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load i32, ptr %4, align 8, !tbaa !47
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %72
  br i1 %71, label %77, label %84

77:                                               ; preds = %67, %76
  %78 = load i32, ptr %4, align 8, !tbaa !47
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %77, %72
  %82 = phi ptr [ @str, %72 ], [ @str.91, %77 ]
  %83 = call i32 @puts(ptr nonnull dereferenceable(1) %82)
  br label %84

84:                                               ; preds = %81, %76, %77
  %85 = load i32, ptr %68, align 8, !tbaa !47
  %86 = and i32 %85, 2
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %84
  %89 = load i32, ptr %4, align 8, !tbaa !47
  %90 = and i32 %89, 2
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %88
  br i1 %87, label %93, label %100

93:                                               ; preds = %84, %92
  %94 = load i32, ptr %4, align 8, !tbaa !47
  %95 = and i32 %94, 2
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %93, %88
  %98 = phi ptr [ @str.92, %88 ], [ @str.93, %93 ]
  %99 = call i32 @puts(ptr nonnull dereferenceable(1) %98)
  br label %100

100:                                              ; preds = %97, %92, %93
  %101 = load i32, ptr %68, align 8, !tbaa !47
  %102 = and i32 %101, 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %100
  %105 = load i32, ptr %4, align 8, !tbaa !47
  %106 = and i32 %105, 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %104
  br i1 %103, label %109, label %116

109:                                              ; preds = %100, %108
  %110 = load i32, ptr %4, align 8, !tbaa !47
  %111 = and i32 %110, 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %109, %104
  %114 = phi ptr [ @str.94, %104 ], [ @str.95, %109 ]
  %115 = call i32 @puts(ptr nonnull dereferenceable(1) %114)
  br label %116

116:                                              ; preds = %113, %108, %109
  %117 = load i32, ptr %68, align 8, !tbaa !47
  %118 = and i32 %117, 8
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %116
  %121 = load i32, ptr %4, align 8, !tbaa !47
  %122 = and i32 %121, 8
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %120
  br i1 %119, label %125, label %132

125:                                              ; preds = %116, %124
  %126 = load i32, ptr %4, align 8, !tbaa !47
  %127 = and i32 %126, 8
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %125, %120
  %130 = phi ptr [ @str.96, %120 ], [ @str.97, %125 ]
  %131 = call i32 @puts(ptr nonnull dereferenceable(1) %130)
  br label %132

132:                                              ; preds = %129, %124, %125
  %133 = load i32, ptr %68, align 8, !tbaa !47
  %134 = and i32 %133, 16
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %141, label %136

136:                                              ; preds = %132
  %137 = load i32, ptr %4, align 8, !tbaa !47
  %138 = and i32 %137, 16
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %136
  br i1 %135, label %141, label %148

141:                                              ; preds = %132, %140
  %142 = load i32, ptr %4, align 8, !tbaa !47
  %143 = and i32 %142, 16
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %141, %136
  %146 = phi ptr [ @str.98, %136 ], [ @str.99, %141 ]
  %147 = call i32 @puts(ptr nonnull dereferenceable(1) %146)
  br label %148

148:                                              ; preds = %145, %140, %141
  %149 = load i32, ptr %68, align 8, !tbaa !47
  %150 = and i32 %149, 32
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %148
  %153 = load i32, ptr %4, align 8, !tbaa !47
  %154 = and i32 %153, 32
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %161, label %156

156:                                              ; preds = %152
  br i1 %151, label %157, label %164

157:                                              ; preds = %148, %156
  %158 = load i32, ptr %4, align 8, !tbaa !47
  %159 = and i32 %158, 32
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %157, %152
  %162 = phi ptr [ @str.100, %152 ], [ @str.101, %157 ]
  %163 = call i32 @puts(ptr nonnull dereferenceable(1) %162)
  br label %164

164:                                              ; preds = %161, %156, %157
  %165 = load i32, ptr %68, align 8, !tbaa !47
  %166 = and i32 %165, 128
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %173, label %168

168:                                              ; preds = %164
  %169 = load i32, ptr %4, align 8, !tbaa !47
  %170 = and i32 %169, 128
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %177, label %172

172:                                              ; preds = %168
  br i1 %167, label %173, label %180

173:                                              ; preds = %164, %172
  %174 = load i32, ptr %4, align 8, !tbaa !47
  %175 = and i32 %174, 128
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %173, %168
  %178 = phi ptr [ @str.102, %168 ], [ @str.103, %173 ]
  %179 = call i32 @puts(ptr nonnull dereferenceable(1) %178)
  br label %180

180:                                              ; preds = %177, %172, %173
  %181 = load i32, ptr %68, align 8, !tbaa !47
  %182 = and i32 %181, 256
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %189, label %184

184:                                              ; preds = %180
  %185 = load i32, ptr %4, align 8, !tbaa !47
  %186 = and i32 %185, 256
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %193, label %188

188:                                              ; preds = %184
  br i1 %183, label %189, label %196

189:                                              ; preds = %180, %188
  %190 = load i32, ptr %4, align 8, !tbaa !47
  %191 = and i32 %190, 256
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %189, %184
  %194 = phi ptr [ @str.104, %184 ], [ @str.105, %189 ]
  %195 = call i32 @puts(ptr nonnull dereferenceable(1) %194)
  br label %196

196:                                              ; preds = %193, %188, %189
  %197 = load i32, ptr %68, align 8, !tbaa !47
  %198 = and i32 %197, 512
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %205, label %200

200:                                              ; preds = %196
  %201 = load i32, ptr %4, align 8, !tbaa !47
  %202 = and i32 %201, 512
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %209, label %204

204:                                              ; preds = %200
  br i1 %199, label %205, label %212

205:                                              ; preds = %196, %204
  %206 = load i32, ptr %4, align 8, !tbaa !47
  %207 = and i32 %206, 512
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %212, label %209

209:                                              ; preds = %205, %200
  %210 = phi ptr [ @str.106, %200 ], [ @str.107, %205 ]
  %211 = call i32 @puts(ptr nonnull dereferenceable(1) %210)
  br label %212

212:                                              ; preds = %209, %204, %205
  %213 = load i32, ptr %68, align 8, !tbaa !47
  %214 = and i32 %213, 1024
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %221, label %216

216:                                              ; preds = %212
  %217 = load i32, ptr %4, align 8, !tbaa !47
  %218 = and i32 %217, 1024
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %225, label %220

220:                                              ; preds = %216
  br i1 %215, label %221, label %228

221:                                              ; preds = %212, %220
  %222 = load i32, ptr %4, align 8, !tbaa !47
  %223 = and i32 %222, 1024
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %228, label %225

225:                                              ; preds = %221, %216
  %226 = phi ptr [ @str.108, %216 ], [ @str.109, %221 ]
  %227 = call i32 @puts(ptr nonnull dereferenceable(1) %226)
  br label %228

228:                                              ; preds = %225, %220, %221
  %229 = load i32, ptr %68, align 8, !tbaa !47
  %230 = and i32 %229, 2048
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %237, label %232

232:                                              ; preds = %228
  %233 = load i32, ptr %4, align 8, !tbaa !47
  %234 = and i32 %233, 2048
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %241, label %236

236:                                              ; preds = %232
  br i1 %231, label %237, label %244

237:                                              ; preds = %228, %236
  %238 = load i32, ptr %4, align 8, !tbaa !47
  %239 = and i32 %238, 2048
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %244, label %241

241:                                              ; preds = %237, %232
  %242 = phi ptr [ @str.110, %232 ], [ @str.111, %237 ]
  %243 = call i32 @puts(ptr nonnull dereferenceable(1) %242)
  br label %244

244:                                              ; preds = %241, %236, %237
  %245 = load i32, ptr %68, align 8, !tbaa !47
  %246 = and i32 %245, 4096
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %253, label %248

248:                                              ; preds = %244
  %249 = load i32, ptr %4, align 8, !tbaa !47
  %250 = and i32 %249, 4096
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %257, label %252

252:                                              ; preds = %248
  br i1 %247, label %253, label %260

253:                                              ; preds = %244, %252
  %254 = load i32, ptr %4, align 8, !tbaa !47
  %255 = and i32 %254, 4096
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %260, label %257

257:                                              ; preds = %253, %248
  %258 = phi ptr [ @str.112, %248 ], [ @str.113, %253 ]
  %259 = call i32 @puts(ptr nonnull dereferenceable(1) %258)
  br label %260

260:                                              ; preds = %257, %252, %253
  %261 = load i32, ptr %68, align 8, !tbaa !47
  %262 = and i32 %261, 8192
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %269, label %264

264:                                              ; preds = %260
  %265 = load i32, ptr %4, align 8, !tbaa !47
  %266 = and i32 %265, 8192
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %273, label %268

268:                                              ; preds = %264
  br i1 %263, label %269, label %276

269:                                              ; preds = %260, %268
  %270 = load i32, ptr %4, align 8, !tbaa !47
  %271 = and i32 %270, 8192
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %276, label %273

273:                                              ; preds = %269, %264
  %274 = phi ptr [ @str.114, %264 ], [ @str.115, %269 ]
  %275 = call i32 @puts(ptr nonnull dereferenceable(1) %274)
  br label %276

276:                                              ; preds = %273, %268, %269
  %277 = load i32, ptr %68, align 8, !tbaa !47
  %278 = and i32 %277, 16384
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %285, label %280

280:                                              ; preds = %276
  %281 = load i32, ptr %4, align 8, !tbaa !47
  %282 = and i32 %281, 16384
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %289, label %284

284:                                              ; preds = %280
  br i1 %279, label %285, label %292

285:                                              ; preds = %276, %284
  %286 = load i32, ptr %4, align 8, !tbaa !47
  %287 = and i32 %286, 16384
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %292, label %289

289:                                              ; preds = %285, %280
  %290 = phi ptr [ @str.116, %280 ], [ @str.117, %285 ]
  %291 = call i32 @puts(ptr nonnull dereferenceable(1) %290)
  br label %292

292:                                              ; preds = %289, %284, %285
  %293 = load i32, ptr %68, align 8, !tbaa !47
  %294 = and i32 %293, 32768
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %301, label %296

296:                                              ; preds = %292
  %297 = load i32, ptr %4, align 8, !tbaa !47
  %298 = and i32 %297, 32768
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %305, label %300

300:                                              ; preds = %296
  br i1 %295, label %301, label %308

301:                                              ; preds = %292, %300
  %302 = load i32, ptr %4, align 8, !tbaa !47
  %303 = and i32 %302, 32768
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %308, label %305

305:                                              ; preds = %301, %296
  %306 = phi ptr [ @str.118, %296 ], [ @str.119, %301 ]
  %307 = call i32 @puts(ptr nonnull dereferenceable(1) %306)
  br label %308

308:                                              ; preds = %305, %300, %301
  %309 = load i32, ptr %68, align 8, !tbaa !47
  %310 = and i32 %309, 65536
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %317, label %312

312:                                              ; preds = %308
  %313 = load i32, ptr %4, align 8, !tbaa !47
  %314 = and i32 %313, 65536
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %321, label %316

316:                                              ; preds = %312
  br i1 %311, label %317, label %324

317:                                              ; preds = %308, %316
  %318 = load i32, ptr %4, align 8, !tbaa !47
  %319 = and i32 %318, 65536
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %324, label %321

321:                                              ; preds = %317, %312
  %322 = phi ptr [ @str.120, %312 ], [ @str.121, %317 ]
  %323 = call i32 @puts(ptr nonnull dereferenceable(1) %322)
  br label %324

324:                                              ; preds = %321, %316, %317
  %325 = load i32, ptr %68, align 8, !tbaa !47
  %326 = and i32 %325, 262144
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %333, label %328

328:                                              ; preds = %324
  %329 = load i32, ptr %4, align 8, !tbaa !47
  %330 = and i32 %329, 262144
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %337, label %332

332:                                              ; preds = %328
  br i1 %327, label %333, label %340

333:                                              ; preds = %324, %332
  %334 = load i32, ptr %4, align 8, !tbaa !47
  %335 = and i32 %334, 262144
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %340, label %337

337:                                              ; preds = %333, %328
  %338 = phi ptr [ @str.122, %328 ], [ @str.123, %333 ]
  %339 = call i32 @puts(ptr nonnull dereferenceable(1) %338)
  br label %340

340:                                              ; preds = %337, %332, %333
  %341 = load i32, ptr %68, align 8, !tbaa !47
  %342 = and i32 %341, 524288
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %349, label %344

344:                                              ; preds = %340
  %345 = load i32, ptr %4, align 8, !tbaa !47
  %346 = and i32 %345, 524288
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %353, label %348

348:                                              ; preds = %344
  br i1 %343, label %349, label %356

349:                                              ; preds = %340, %348
  %350 = load i32, ptr %4, align 8, !tbaa !47
  %351 = and i32 %350, 524288
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %356, label %353

353:                                              ; preds = %349, %344
  %354 = phi ptr [ @str.124, %344 ], [ @str.125, %349 ]
  %355 = call i32 @puts(ptr nonnull dereferenceable(1) %354)
  br label %356

356:                                              ; preds = %353, %348, %349
  %357 = load i32, ptr %68, align 8, !tbaa !47
  %358 = and i32 %357, 1048576
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %365, label %360

360:                                              ; preds = %356
  %361 = load i32, ptr %4, align 8, !tbaa !47
  %362 = and i32 %361, 1048576
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %369, label %364

364:                                              ; preds = %360
  br i1 %359, label %365, label %372

365:                                              ; preds = %356, %364
  %366 = load i32, ptr %4, align 8, !tbaa !47
  %367 = and i32 %366, 1048576
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %372, label %369

369:                                              ; preds = %365, %360
  %370 = phi ptr [ @str.126, %360 ], [ @str.127, %365 ]
  %371 = call i32 @puts(ptr nonnull dereferenceable(1) %370)
  br label %372

372:                                              ; preds = %369, %364, %365
  %373 = load i32, ptr %68, align 8, !tbaa !47
  %374 = and i32 %373, 4194304
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %381, label %376

376:                                              ; preds = %372
  %377 = load i32, ptr %4, align 8, !tbaa !47
  %378 = and i32 %377, 4194304
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %385, label %380

380:                                              ; preds = %376
  br i1 %375, label %381, label %388

381:                                              ; preds = %372, %380
  %382 = load i32, ptr %4, align 8, !tbaa !47
  %383 = and i32 %382, 4194304
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %388, label %385

385:                                              ; preds = %381, %376
  %386 = phi ptr [ @str.128, %376 ], [ @str.129, %381 ]
  %387 = call i32 @puts(ptr nonnull dereferenceable(1) %386)
  br label %388

388:                                              ; preds = %385, %380, %381
  %389 = load i32, ptr %68, align 8, !tbaa !47
  %390 = and i32 %389, 8388608
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %397, label %392

392:                                              ; preds = %388
  %393 = load i32, ptr %4, align 8, !tbaa !47
  %394 = and i32 %393, 8388608
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %401, label %396

396:                                              ; preds = %392
  br i1 %391, label %397, label %404

397:                                              ; preds = %388, %396
  %398 = load i32, ptr %4, align 8, !tbaa !47
  %399 = and i32 %398, 8388608
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %404, label %401

401:                                              ; preds = %397, %392
  %402 = phi ptr [ @str.130, %392 ], [ @str.131, %397 ]
  %403 = call i32 @puts(ptr nonnull dereferenceable(1) %402)
  br label %404

404:                                              ; preds = %401, %396, %397
  %405 = load i32, ptr %68, align 8, !tbaa !47
  %406 = and i32 %405, 16777216
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %413, label %408

408:                                              ; preds = %404
  %409 = load i32, ptr %4, align 8, !tbaa !47
  %410 = and i32 %409, 16777216
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %417, label %412

412:                                              ; preds = %408
  br i1 %407, label %413, label %420

413:                                              ; preds = %404, %412
  %414 = load i32, ptr %4, align 8, !tbaa !47
  %415 = and i32 %414, 16777216
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %420, label %417

417:                                              ; preds = %413, %408
  %418 = phi ptr [ @str.132, %408 ], [ @str.133, %413 ]
  %419 = call i32 @puts(ptr nonnull dereferenceable(1) %418)
  br label %420

420:                                              ; preds = %417, %412, %413
  %421 = load i32, ptr %68, align 8, !tbaa !47
  %422 = and i32 %421, 33554432
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %429, label %424

424:                                              ; preds = %420
  %425 = load i32, ptr %4, align 8, !tbaa !47
  %426 = and i32 %425, 33554432
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %433, label %428

428:                                              ; preds = %424
  br i1 %423, label %429, label %436

429:                                              ; preds = %420, %428
  %430 = load i32, ptr %4, align 8, !tbaa !47
  %431 = and i32 %430, 33554432
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %436, label %433

433:                                              ; preds = %429, %424
  %434 = phi ptr [ @str.134, %424 ], [ @str.135, %429 ]
  %435 = call i32 @puts(ptr nonnull dereferenceable(1) %434)
  br label %436

436:                                              ; preds = %433, %428, %429
  %437 = load i32, ptr %68, align 8, !tbaa !47
  %438 = and i32 %437, 67108864
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %445, label %440

440:                                              ; preds = %436
  %441 = load i32, ptr %4, align 8, !tbaa !47
  %442 = and i32 %441, 67108864
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %449, label %444

444:                                              ; preds = %440
  br i1 %439, label %445, label %452

445:                                              ; preds = %436, %444
  %446 = load i32, ptr %4, align 8, !tbaa !47
  %447 = and i32 %446, 67108864
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %452, label %449

449:                                              ; preds = %445, %440
  %450 = phi ptr [ @str.136, %440 ], [ @str.137, %445 ]
  %451 = call i32 @puts(ptr nonnull dereferenceable(1) %450)
  br label %452

452:                                              ; preds = %449, %444, %445
  %453 = load i32, ptr %68, align 8, !tbaa !47
  %454 = and i32 %453, 134217728
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %461, label %456

456:                                              ; preds = %452
  %457 = load i32, ptr %4, align 8, !tbaa !47
  %458 = and i32 %457, 134217728
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %465, label %460

460:                                              ; preds = %456
  br i1 %455, label %461, label %468

461:                                              ; preds = %452, %460
  %462 = load i32, ptr %4, align 8, !tbaa !47
  %463 = and i32 %462, 134217728
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %468, label %465

465:                                              ; preds = %461, %456
  %466 = phi ptr [ @str.138, %456 ], [ @str.139, %461 ]
  %467 = call i32 @puts(ptr nonnull dereferenceable(1) %466)
  br label %468

468:                                              ; preds = %465, %460, %461
  %469 = load i32, ptr %68, align 8, !tbaa !47
  %470 = and i32 %469, 268435456
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %477, label %472

472:                                              ; preds = %468
  %473 = load i32, ptr %4, align 8, !tbaa !47
  %474 = and i32 %473, 268435456
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %481, label %476

476:                                              ; preds = %472
  br i1 %471, label %477, label %484

477:                                              ; preds = %468, %476
  %478 = load i32, ptr %4, align 8, !tbaa !47
  %479 = and i32 %478, 268435456
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %484, label %481

481:                                              ; preds = %477, %472
  %482 = phi ptr [ @str.140, %472 ], [ @str.141, %477 ]
  %483 = call i32 @puts(ptr nonnull dereferenceable(1) %482)
  br label %484

484:                                              ; preds = %481, %476, %477
  %485 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 20
  %486 = load i32, ptr %485, align 8, !tbaa !70
  %487 = and i32 %486, 1
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %494, label %489

489:                                              ; preds = %484
  %490 = load i32, ptr %34, align 8, !tbaa !70
  %491 = and i32 %490, 1
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %498, label %493

493:                                              ; preds = %489
  br i1 %488, label %494, label %501

494:                                              ; preds = %484, %493
  %495 = load i32, ptr %34, align 8, !tbaa !70
  %496 = and i32 %495, 1
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %501, label %498

498:                                              ; preds = %494, %489
  %499 = phi ptr [ @str.142, %489 ], [ @str.143, %494 ]
  %500 = call i32 @puts(ptr nonnull dereferenceable(1) %499)
  br label %501

501:                                              ; preds = %498, %493, %494
  %502 = load i32, ptr %485, align 8, !tbaa !70
  %503 = and i32 %502, 2
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %510, label %505

505:                                              ; preds = %501
  %506 = load i32, ptr %34, align 8, !tbaa !70
  %507 = and i32 %506, 2
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %514, label %509

509:                                              ; preds = %505
  br i1 %504, label %510, label %517

510:                                              ; preds = %501, %509
  %511 = load i32, ptr %34, align 8, !tbaa !70
  %512 = and i32 %511, 2
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %517, label %514

514:                                              ; preds = %510, %505
  %515 = phi ptr [ @str.144, %505 ], [ @str.145, %510 ]
  %516 = call i32 @puts(ptr nonnull dereferenceable(1) %515)
  br label %517

517:                                              ; preds = %514, %509, %510
  %518 = load i32, ptr %485, align 8, !tbaa !70
  %519 = and i32 %518, 4
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %526, label %521

521:                                              ; preds = %517
  %522 = load i32, ptr %34, align 8, !tbaa !70
  %523 = and i32 %522, 4
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %530, label %525

525:                                              ; preds = %521
  br i1 %520, label %526, label %533

526:                                              ; preds = %517, %525
  %527 = load i32, ptr %34, align 8, !tbaa !70
  %528 = and i32 %527, 4
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %533, label %530

530:                                              ; preds = %526, %521
  %531 = phi ptr [ @str.146, %521 ], [ @str.147, %526 ]
  %532 = call i32 @puts(ptr nonnull dereferenceable(1) %531)
  br label %533

533:                                              ; preds = %530, %525, %526
  %534 = load i32, ptr %485, align 8, !tbaa !70
  %535 = and i32 %534, 8
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %542, label %537

537:                                              ; preds = %533
  %538 = load i32, ptr %34, align 8, !tbaa !70
  %539 = and i32 %538, 8
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %546, label %541

541:                                              ; preds = %537
  br i1 %536, label %542, label %549

542:                                              ; preds = %533, %541
  %543 = load i32, ptr %34, align 8, !tbaa !70
  %544 = and i32 %543, 8
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %549, label %546

546:                                              ; preds = %542, %537
  %547 = phi ptr [ @str.148, %537 ], [ @str.149, %542 ]
  %548 = call i32 @puts(ptr nonnull dereferenceable(1) %547)
  br label %549

549:                                              ; preds = %546, %541, %542
  %550 = load i32, ptr %485, align 8, !tbaa !70
  %551 = and i32 %550, 16
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %558, label %553

553:                                              ; preds = %549
  %554 = load i32, ptr %34, align 8, !tbaa !70
  %555 = and i32 %554, 16
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %562, label %557

557:                                              ; preds = %553
  br i1 %552, label %558, label %565

558:                                              ; preds = %549, %557
  %559 = load i32, ptr %34, align 8, !tbaa !70
  %560 = and i32 %559, 16
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %565, label %562

562:                                              ; preds = %558, %553
  %563 = phi ptr [ @str.150, %553 ], [ @str.151, %558 ]
  %564 = call i32 @puts(ptr nonnull dereferenceable(1) %563)
  br label %565

565:                                              ; preds = %562, %557, %558
  %566 = load i32, ptr %485, align 8, !tbaa !70
  %567 = and i32 %566, 32
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %574, label %569

569:                                              ; preds = %565
  %570 = load i32, ptr %34, align 8, !tbaa !70
  %571 = and i32 %570, 32
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %578, label %573

573:                                              ; preds = %569
  br i1 %568, label %574, label %581

574:                                              ; preds = %565, %573
  %575 = load i32, ptr %34, align 8, !tbaa !70
  %576 = and i32 %575, 32
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %581, label %578

578:                                              ; preds = %574, %569
  %579 = phi ptr [ @str.152, %569 ], [ @str.153, %574 ]
  %580 = call i32 @puts(ptr nonnull dereferenceable(1) %579)
  br label %581

581:                                              ; preds = %578, %573, %574
  %582 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 18
  %583 = load float, ptr %582, align 8, !tbaa !65
  %584 = load float, ptr %27, align 8, !tbaa !65
  %585 = fcmp une float %583, %584
  br i1 %585, label %586, label %589

586:                                              ; preds = %581
  %587 = fpext float %583 to double
  %588 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.67, double noundef %587)
  br label %589

589:                                              ; preds = %586, %581
  %590 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 21
  %591 = load i32, ptr %590, align 4, !tbaa !61
  %592 = load i32, ptr %23, align 4, !tbaa !61
  %593 = icmp eq i32 %591, %592
  br i1 %593, label %596, label %594

594:                                              ; preds = %589
  %595 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.68, i32 noundef %591)
  br label %596

596:                                              ; preds = %594, %589
  %597 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 22
  %598 = load i32, ptr %597, align 8, !tbaa !62
  %599 = load i32, ptr %24, align 8, !tbaa !62
  %600 = icmp eq i32 %598, %599
  br i1 %600, label %603, label %601

601:                                              ; preds = %596
  %602 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.69, i32 noundef %598)
  br label %603

603:                                              ; preds = %601, %596
  %604 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 23
  %605 = load float, ptr %604, align 4, !tbaa !63
  %606 = load float, ptr %25, align 4, !tbaa !63
  %607 = fcmp une float %605, %606
  br i1 %607, label %608, label %611

608:                                              ; preds = %603
  %609 = fpext float %605 to double
  %610 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.70, double noundef %609)
  br label %611

611:                                              ; preds = %608, %603
  %612 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 24
  %613 = load float, ptr %612, align 8, !tbaa !64
  %614 = load float, ptr %26, align 8, !tbaa !64
  %615 = fcmp une float %613, %614
  br i1 %615, label %616, label %619

616:                                              ; preds = %611
  %617 = fpext float %613 to double
  %618 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.71, double noundef %617)
  br label %619

619:                                              ; preds = %616, %611
  %620 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 26
  %621 = load float, ptr %620, align 8, !tbaa !51
  %622 = load float, ptr %8, align 8, !tbaa !51
  %623 = fcmp une float %621, %622
  br i1 %623, label %624, label %627

624:                                              ; preds = %619
  %625 = fpext float %621 to double
  %626 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.72, double noundef %625)
  br label %627

627:                                              ; preds = %624, %619
  %628 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 28
  %629 = load i32, ptr %628, align 8, !tbaa !54
  %630 = load i32, ptr %11, align 8, !tbaa !54
  %631 = icmp eq i32 %629, %630
  br i1 %631, label %634, label %632

632:                                              ; preds = %627
  %633 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.73, i32 noundef %629)
  br label %634

634:                                              ; preds = %632, %627
  %635 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 29
  %636 = load float, ptr %635, align 4, !tbaa !55
  %637 = load float, ptr %12, align 4, !tbaa !55
  %638 = fcmp une float %636, %637
  br i1 %638, label %639, label %642

639:                                              ; preds = %634
  %640 = fpext float %636 to double
  %641 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.74, double noundef %640)
  br label %642

642:                                              ; preds = %639, %634
  %643 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 38
  %644 = load float, ptr %643, align 4, !tbaa !52
  %645 = load float, ptr %9, align 4, !tbaa !52
  %646 = fcmp une float %644, %645
  br i1 %646, label %647, label %650

647:                                              ; preds = %642
  %648 = fpext float %644 to double
  %649 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, double noundef %648)
  br label %650

650:                                              ; preds = %647, %642
  %651 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 39
  %652 = load float, ptr %651, align 8, !tbaa !53
  %653 = load float, ptr %10, align 8, !tbaa !53
  %654 = fcmp une float %652, %653
  br i1 %654, label %655, label %658

655:                                              ; preds = %650
  %656 = fpext float %652 to double
  %657 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, double noundef %656)
  br label %658

658:                                              ; preds = %655, %650
  %659 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 40
  %660 = load float, ptr %659, align 4, !tbaa !56
  %661 = load float, ptr %13, align 4, !tbaa !56
  %662 = fcmp une float %660, %661
  br i1 %662, label %663, label %666

663:                                              ; preds = %658
  %664 = fpext float %660 to double
  %665 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, double noundef %664)
  br label %666

666:                                              ; preds = %663, %658
  %667 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 42
  %668 = load float, ptr %667, align 4, !tbaa !66
  %669 = load float, ptr %30, align 4, !tbaa !66
  %670 = fcmp une float %668, %669
  br i1 %670, label %671, label %674

671:                                              ; preds = %666
  %672 = fpext float %668 to double
  %673 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.78, double noundef %672)
  br label %674

674:                                              ; preds = %671, %666
  %675 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 43
  %676 = load i32, ptr %675, align 8, !tbaa !67
  %677 = load i32, ptr %31, align 8, !tbaa !67
  %678 = icmp eq i32 %676, %677
  br i1 %678, label %681, label %679

679:                                              ; preds = %674
  %680 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.79, i32 noundef %676)
  br label %681

681:                                              ; preds = %679, %674
  %682 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 51
  %683 = load float, ptr %682, align 8, !tbaa !60
  %684 = load float, ptr %35, align 8, !tbaa !60
  %685 = fcmp une float %683, %684
  br i1 %685, label %686, label %689

686:                                              ; preds = %681
  %687 = fpext float %683 to double
  %688 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %687)
  br label %689

689:                                              ; preds = %686, %681
  %690 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 51, i64 1
  %691 = load float, ptr %690, align 4, !tbaa !60
  %692 = load float, ptr %36, align 4, !tbaa !60
  %693 = fcmp une float %691, %692
  br i1 %693, label %694, label %697

694:                                              ; preds = %689
  %695 = fpext float %691 to double
  %696 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.81, double noundef %695)
  br label %697

697:                                              ; preds = %694, %689
  %698 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 51, i64 2
  %699 = load float, ptr %698, align 8, !tbaa !60
  %700 = load float, ptr %37, align 8, !tbaa !60
  %701 = fcmp une float %699, %700
  br i1 %701, label %702, label %705

702:                                              ; preds = %697
  %703 = fpext float %699 to double
  %704 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.82, double noundef %703)
  br label %705

705:                                              ; preds = %702, %697
  %706 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 52
  %707 = load float, ptr %706, align 4, !tbaa !60
  %708 = load float, ptr %38, align 4, !tbaa !60
  %709 = fcmp une float %707, %708
  br i1 %709, label %710, label %713

710:                                              ; preds = %705
  %711 = fpext float %707 to double
  %712 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.83, double noundef %711)
  br label %713

713:                                              ; preds = %710, %705
  %714 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 52, i64 1
  %715 = load float, ptr %714, align 4, !tbaa !60
  %716 = load float, ptr %39, align 8, !tbaa !60
  %717 = fcmp une float %715, %716
  br i1 %717, label %718, label %721

718:                                              ; preds = %713
  %719 = fpext float %715 to double
  %720 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.84, double noundef %719)
  br label %721

721:                                              ; preds = %718, %713
  %722 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 52, i64 2
  %723 = load float, ptr %722, align 4, !tbaa !60
  %724 = load float, ptr %40, align 4, !tbaa !60
  %725 = fcmp une float %723, %724
  br i1 %725, label %726, label %729

726:                                              ; preds = %721
  %727 = fpext float %723 to double
  %728 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.85, double noundef %727)
  br label %729

729:                                              ; preds = %726, %721
  %730 = call i32 @putchar(i32 10)
  call void @llvm.lifetime.end.p0(i64 2056, ptr nonnull %2) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @BKE_brush_sculpt_reset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 12
  store i16 0, ptr %2, align 4, !tbaa !46
  %3 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 16
  store i32 0, ptr %3, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 13
  store i16 30, ptr %4, align 2, !tbaa !48
  %5 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 14
  store float 1.000000e+00, ptr %5, align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 15
  store i32 35, ptr %6, align 4, !tbaa !50
  %7 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 26
  store float 5.000000e-01, ptr %7, align 8, !tbaa !51
  %8 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 38
  store float 0.000000e+00, ptr %8, align 4, !tbaa !52
  %9 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 39
  store float 5.000000e-01, ptr %9, align 8, !tbaa !53
  %10 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 28
  store i32 0, ptr %10, align 8, !tbaa !54
  %11 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 29
  store float 0.000000e+00, ptr %11, align 4, !tbaa !55
  %12 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 40
  store float 5.000000e-01, ptr %12, align 4, !tbaa !56
  %13 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 1, i32 2
  store float 5.000000e-01, ptr %13, align 8, !tbaa !57
  %14 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 11
  store float 0.000000e+00, ptr %14, align 8, !tbaa !58
  %15 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 50
  store float 0x3FC99999A0000000, ptr %15, align 4, !tbaa !59
  store i32 4, ptr %3, align 8, !tbaa !47
  %16 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 25
  store float 1.000000e+00, ptr %16, align 4, !tbaa !60
  %17 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 25, i64 1
  store float 1.000000e+00, ptr %17, align 4, !tbaa !60
  %18 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 25, i64 2
  store float 1.000000e+00, ptr %18, align 4, !tbaa !60
  %19 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 27
  store float 0.000000e+00, ptr %19, align 4, !tbaa !60
  %20 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 27, i64 1
  store float 0.000000e+00, ptr %20, align 4, !tbaa !60
  %21 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 27, i64 2
  store float 0.000000e+00, ptr %21, align 4, !tbaa !60
  store i32 263172, ptr %3, align 8, !tbaa !47
  %22 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 21
  store i32 10, ptr %22, align 4, !tbaa !61
  %23 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 22
  store i32 75, ptr %23, align 8, !tbaa !62
  %24 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 23
  store float 0x3FECCCCCC0000000, ptr %24, align 4, !tbaa !63
  %25 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 24
  store float 0x3FB99999A0000000, ptr %25, align 8, !tbaa !64
  %26 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 18
  store float 0.000000e+00, ptr %26, align 8, !tbaa !65
  %27 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 3
  tail call void @default_mtex(ptr noundef nonnull %27) #12
  %28 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 4
  tail call void @default_mtex(ptr noundef nonnull %28) #12
  %29 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 42
  store float 0.000000e+00, ptr %29, align 4, !tbaa !66
  %30 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 43
  store i32 33, ptr %30, align 8, !tbaa !67
  %31 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 44
  store i32 33, ptr %31, align 4, !tbaa !68
  %32 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 45
  store i32 33, ptr %32, align 8, !tbaa !69
  %33 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 20
  store i32 0, ptr %33, align 8, !tbaa !70
  %34 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 51
  store float 1.000000e+00, ptr %34, align 8, !tbaa !60
  %35 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 51, i64 1
  store float 0x3FD8F5C280000000, ptr %35, align 4, !tbaa !60
  %36 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 51, i64 2
  store float 0x3FD8F5C280000000, ptr %36, align 8, !tbaa !60
  %37 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 52
  store float 0x3FD8F5C280000000, ptr %37, align 4, !tbaa !60
  %38 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 52, i64 1
  store float 0x3FD8F5C280000000, ptr %38, align 4, !tbaa !60
  %39 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 52, i64 2
  store float 1.000000e+00, ptr %39, align 4, !tbaa !60
  %40 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 53
  store float 2.560000e+02, ptr %40, align 8, !tbaa !60
  %41 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 53, i64 1
  store float 2.560000e+02, ptr %41, align 4, !tbaa !60
  %42 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 54
  store float 2.560000e+02, ptr %42, align 8, !tbaa !60
  %43 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 54, i64 1
  store float 2.560000e+02, ptr %43, align 4, !tbaa !60
  %44 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !72
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %1
  %48 = tail call ptr @curvemapping_add(i32 noundef 1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #12
  store ptr %48, ptr %44, align 8, !tbaa !72
  br label %49

49:                                               ; preds = %1, %47
  %50 = load ptr, ptr %44, align 8, !tbaa !72
  %51 = getelementptr inbounds %struct.CurveMapping, ptr %50, i64 0, i32 6
  %52 = getelementptr inbounds %struct.CurveMapping, ptr %50, i64 0, i32 6, i64 0, i32 1
  %53 = load i16, ptr %52, align 2, !tbaa !73
  %54 = and i16 %53, -2
  store i16 %54, ptr %52, align 2, !tbaa !73
  %55 = getelementptr inbounds %struct.CurveMapping, ptr %50, i64 0, i32 2
  store i32 2, ptr %55, align 8, !tbaa !75
  %56 = getelementptr inbounds %struct.CurveMapping, ptr %50, i64 0, i32 5
  tail call void @curvemap_reset(ptr noundef nonnull %51, ptr noundef nonnull %56, i32 noundef 2, i32 noundef 0) #12
  %57 = load ptr, ptr %44, align 8, !tbaa !72
  tail call void @curvemapping_changed(ptr noundef %57, i8 noundef zeroext 0) #12
  %58 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 34
  %59 = load i8, ptr %58, align 8, !tbaa !71
  switch i8 %59, label %79 [
    i8 8, label %60
    i8 16, label %63
    i8 9, label %66
    i8 7, label %67
    i8 4, label %68
    i8 11, label %69
    i8 3, label %70
    i8 10, label %71
    i8 14, label %72
    i8 2, label %73
    i8 5, label %76
    i8 13, label %76
    i8 12, label %76
  ]

60:                                               ; preds = %49
  %61 = load i32, ptr %3, align 8, !tbaa !47
  %62 = or i32 %61, 134217728
  store i32 %62, ptr %3, align 8, !tbaa !47
  br label %79

63:                                               ; preds = %49
  %64 = load i32, ptr %3, align 8, !tbaa !47
  %65 = or i32 %64, 512
  store i32 %65, ptr %3, align 8, !tbaa !47
  store float 2.500000e-01, ptr %7, align 8, !tbaa !51
  br label %79

66:                                               ; preds = %49
  store float 1.000000e+00, ptr %35, align 4, !tbaa !60
  store float 2.500000e-01, ptr %37, align 4, !tbaa !60
  store float 1.000000e+00, ptr %38, align 4, !tbaa !60
  br label %79

67:                                               ; preds = %49
  store float 1.000000e+00, ptr %35, align 4, !tbaa !60
  store float 2.500000e-01, ptr %37, align 4, !tbaa !60
  store float 1.000000e+00, ptr %38, align 4, !tbaa !60
  br label %79

68:                                               ; preds = %49
  store float 7.500000e-01, ptr %34, align 8, !tbaa !60
  store float 7.500000e-01, ptr %35, align 4, !tbaa !60
  store float 7.500000e-01, ptr %36, align 8, !tbaa !60
  store float 2.500000e-01, ptr %37, align 4, !tbaa !60
  store float 2.500000e-01, ptr %38, align 4, !tbaa !60
  store float 2.500000e-01, ptr %39, align 4, !tbaa !60
  br label %79

69:                                               ; preds = %49
  store float 2.500000e-01, ptr %34, align 8, !tbaa !60
  store float 1.000000e+00, ptr %35, align 4, !tbaa !60
  store float 2.500000e-01, ptr %36, align 8, !tbaa !60
  br label %79

70:                                               ; preds = %49
  store float 7.500000e-01, ptr %34, align 8, !tbaa !60
  store float 7.500000e-01, ptr %35, align 4, !tbaa !60
  store float 7.500000e-01, ptr %36, align 8, !tbaa !60
  store float 2.500000e-01, ptr %37, align 4, !tbaa !60
  store float 2.500000e-01, ptr %38, align 4, !tbaa !60
  store float 2.500000e-01, ptr %39, align 4, !tbaa !60
  br label %79

71:                                               ; preds = %49
  store float 1.000000e+00, ptr %35, align 4, !tbaa !60
  store float 2.500000e-01, ptr %37, align 4, !tbaa !60
  store float 1.000000e+00, ptr %38, align 4, !tbaa !60
  br label %79

72:                                               ; preds = %49
  store float 1.000000e+00, ptr %7, align 8, !tbaa !51
  br label %79

73:                                               ; preds = %49
  %74 = load i32, ptr %3, align 8, !tbaa !47
  %75 = and i32 %74, -262145
  store i32 %75, ptr %3, align 8, !tbaa !47
  store i32 5, ptr %22, align 4, !tbaa !61
  store float 7.500000e-01, ptr %34, align 8, !tbaa !60
  store float 7.500000e-01, ptr %35, align 4, !tbaa !60
  store float 7.500000e-01, ptr %36, align 8, !tbaa !60
  br label %79

76:                                               ; preds = %49, %49, %49
  store i32 75, ptr %6, align 4, !tbaa !50
  %77 = load i32, ptr %3, align 8, !tbaa !47
  %78 = and i32 %77, -263173
  store i32 %78, ptr %3, align 8, !tbaa !47
  store float 2.500000e-01, ptr %34, align 8, !tbaa !60
  store float 1.000000e+00, ptr %35, align 4, !tbaa !60
  store float 2.500000e-01, ptr %36, align 8, !tbaa !60
  br label %79

79:                                               ; preds = %49, %76, %73, %72, %71, %70, %69, %68, %67, %66, %63, %60
  ret void
}

declare ptr @curvemapping_add(i32 noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @curvemap_reset(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @curvemapping_changed(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @BKE_brush_texture_set_nr(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 3, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !78
  %5 = load ptr, ptr @G, align 8, !tbaa !85
  %6 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 18
  %7 = add nsw i32 %1, -1
  %8 = tail call ptr @BLI_findlink(ptr noundef nonnull %6, i32 noundef %7) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = icmp eq ptr %4, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %10
  %13 = tail call ptr @BKE_texture_copy(ptr noundef nonnull %4) #12
  br label %17

14:                                               ; preds = %10
  %15 = load ptr, ptr @G, align 8, !tbaa !85
  %16 = tail call ptr @add_texture(ptr noundef %15, ptr noundef nonnull @.str.87) #12
  br label %17

17:                                               ; preds = %14, %12
  %18 = phi ptr [ %13, %12 ], [ %16, %14 ]
  %19 = getelementptr inbounds %struct.ID, ptr %18, i64 0, i32 6
  %20 = load i32, ptr %19, align 4, !tbaa !114
  %21 = add nsw i32 %20, -1
  store i32 %21, ptr %19, align 4, !tbaa !114
  br label %22

22:                                               ; preds = %17, %2
  %23 = phi ptr [ %18, %17 ], [ %8, %2 ]
  %24 = icmp eq ptr %23, %4
  br i1 %24, label %33, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %3, align 8, !tbaa !78
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.ID, ptr %26, i64 0, i32 6
  %30 = load i32, ptr %29, align 4, !tbaa !115
  %31 = add nsw i32 %30, -1
  store i32 %31, ptr %29, align 4, !tbaa !115
  br label %32

32:                                               ; preds = %25, %28
  store ptr %23, ptr %3, align 8, !tbaa !78
  tail call void @id_us_plus(ptr noundef %23) #12
  br label %33

33:                                               ; preds = %22, %32
  %34 = phi i32 [ 1, %32 ], [ 0, %22 ]
  ret i32 %34
}

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @BKE_texture_copy(ptr noundef) local_unnamed_addr #1

declare ptr @add_texture(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @BKE_brush_texture_delete(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 3, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !78
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !115
  %8 = add nsw i32 %7, -1
  store i32 %8, ptr %6, align 4, !tbaa !115
  br label %9

9:                                                ; preds = %5, %1
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @BKE_brush_clone_image_set_nr(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp sgt i32 %1, 0
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %23

6:                                                ; preds = %2
  %7 = load ptr, ptr @G, align 8, !tbaa !85
  %8 = getelementptr inbounds %struct.Main, ptr %7, i64 0, i32 19
  %9 = add nsw i32 %1, -1
  %10 = tail call ptr @BLI_findlink(ptr noundef nonnull %8, i32 noundef %9) #12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !89
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ID, ptr %14, i64 0, i32 6
  %18 = load i32, ptr %17, align 4, !tbaa !118
  %19 = add nsw i32 %18, -1
  store i32 %19, ptr %17, align 4, !tbaa !118
  store ptr null, ptr %13, align 8, !tbaa !89
  br label %20

20:                                               ; preds = %12, %16
  store ptr %10, ptr %13, align 8, !tbaa !89
  tail call void @id_us_plus(ptr noundef nonnull %10) #12
  %21 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 1, i32 1
  %22 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 1, i32 1, i64 1
  store float 0.000000e+00, ptr %22, align 4, !tbaa !60
  store float 0.000000e+00, ptr %21, align 8, !tbaa !60
  br i1 %11, label %23, label %24

23:                                               ; preds = %6, %20, %2
  br label %24

24:                                               ; preds = %20, %23
  %25 = phi i32 [ 1, %20 ], [ 0, %23 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @BKE_brush_clone_image_delete(ptr noundef %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !89
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !118
  %10 = add nsw i32 %9, -1
  store i32 %10, ptr %8, align 4, !tbaa !118
  store ptr null, ptr %4, align 8, !tbaa !89
  br label %11

11:                                               ; preds = %1, %3, %7
  %12 = phi i32 [ 1, %7 ], [ 0, %3 ], [ 0, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define dso_local float @BKE_brush_sample_tex_3D(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca float, align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !90
  %12 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store float 1.000000e+00, ptr %7, align 4, !tbaa !60
  %13 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 3, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !120
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %6
  store float 1.000000e+00, ptr %7, align 4, !tbaa !60
  br label %155

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 3, i32 20
  %19 = load i8, ptr %18, align 4, !tbaa !121
  switch i8 %19, label %77 [
    i8 2, label %20
    i8 5, label %26
  ]

20:                                               ; preds = %17
  %21 = getelementptr inbounds float, ptr %3, i64 1
  %22 = getelementptr inbounds float, ptr %3, i64 2
  %23 = getelementptr inbounds float, ptr %3, i64 3
  %24 = call i32 @externtex(ptr noundef nonnull %12, ptr noundef %2, ptr noundef nonnull %7, ptr noundef %3, ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %23, i32 noundef %4, ptr noundef %5) #12
  %25 = trunc i32 %24 to i8
  br label %155

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 3, i32 13
  %28 = load float, ptr %27, align 4, !tbaa !122
  %29 = load float, ptr %2, align 4, !tbaa !60
  %30 = getelementptr inbounds float, ptr %2, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #12
  %32 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 53
  %33 = load float, ptr %32, align 8, !tbaa !60
  %34 = fsub float %29, %33
  %35 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 53, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !60
  %37 = fsub float %31, %36
  %38 = fcmp olt float %28, 0xBF50624DE0000000
  %39 = fcmp ogt float %28, 0x3F50624DE0000000
  %40 = or i1 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %26
  %42 = tail call float @atan2f(float noundef %37, float noundef %34) #12
  %43 = fsub float %42, %28
  %44 = fmul float %37, %37
  %45 = tail call float @llvm.fmuladd.f32(float %34, float %34, float %44)
  %46 = tail call float @sqrtf(float noundef %45) #12
  %47 = tail call float @cosf(float noundef %43) #12
  %48 = fmul float %46, %47
  %49 = tail call float @sinf(float noundef %43) #12
  %50 = fmul float %46, %49
  br label %51

51:                                               ; preds = %26, %41
  %52 = phi float [ %50, %41 ], [ %37, %26 ]
  %53 = phi float [ %48, %41 ], [ %34, %26 ]
  %54 = tail call float @llvm.fabs.f32(float %53)
  %55 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 54
  %56 = load float, ptr %55, align 8, !tbaa !60
  %57 = fcmp ogt float %54, %56
  br i1 %57, label %63, label %58

58:                                               ; preds = %51
  %59 = tail call float @llvm.fabs.f32(float %52)
  %60 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 54, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !60
  %62 = fcmp ogt float %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %58, %51
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  br label %74

64:                                               ; preds = %58
  %65 = fdiv float %53, %56
  %66 = fdiv float %52, %61
  store float %65, ptr %8, align 4, !tbaa !60
  %67 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  store float %66, ptr %67, align 4, !tbaa !60
  %68 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  store float 0.000000e+00, ptr %68, align 4, !tbaa !60
  %69 = getelementptr inbounds float, ptr %3, i64 1
  %70 = getelementptr inbounds float, ptr %3, i64 2
  %71 = getelementptr inbounds float, ptr %3, i64 3
  %72 = call i32 @externtex(ptr noundef nonnull %12, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef %3, ptr noundef nonnull %69, ptr noundef nonnull %70, ptr noundef nonnull %71, i32 noundef %4, ptr noundef %5) #12
  %73 = trunc i32 %72 to i8
  br label %74

74:                                               ; preds = %64, %63
  %75 = phi i1 [ false, %63 ], [ true, %64 ]
  %76 = phi i8 [ 0, %63 ], [ %73, %64 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #12
  br i1 %75, label %155, label %175

77:                                               ; preds = %17
  %78 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 3, i32 13
  %79 = load float, ptr %78, align 4, !tbaa !122
  %80 = fneg float %79
  %81 = load float, ptr %2, align 4, !tbaa !60
  %82 = getelementptr inbounds float, ptr %2, i64 1
  %83 = load float, ptr %82, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #12
  switch i8 %19, label %125 [
    i8 0, label %84
    i8 1, label %97
    i8 4, label %112
  ]

84:                                               ; preds = %77
  %85 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 73, i32 8
  %86 = load float, ptr %85, align 4, !tbaa !123
  %87 = fsub float %86, %79
  %88 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 73, i32 17
  %89 = load float, ptr %88, align 4, !tbaa !60
  %90 = fsub float %81, %89
  %91 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 73, i32 17, i64 1
  %92 = load float, ptr %91, align 4, !tbaa !60
  %93 = fsub float %83, %92
  %94 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 73, i32 21
  %95 = load float, ptr %94, align 8, !tbaa !125
  %96 = fdiv float 1.000000e+00, %95
  br label %125

97:                                               ; preds = %77
  %98 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 73, i32 6
  %99 = load i32, ptr %98, align 8, !tbaa !126
  %100 = and i32 %99, 1
  %101 = icmp eq i32 %100, 0
  %102 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 73
  %103 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 15
  %104 = select i1 %101, ptr %103, ptr %102
  %105 = load i32, ptr %104, align 4, !tbaa !127
  %106 = sitofp i32 %105 to float
  %107 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !128
  %108 = fmul float %107, %106
  %109 = fptosi float %108 to i32
  %110 = sitofp i32 %109 to float
  %111 = fdiv float 1.000000e+00, %110
  br label %125

112:                                              ; preds = %77
  %113 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 73, i32 8
  %114 = load float, ptr %113, align 4, !tbaa !123
  %115 = fsub float %114, %79
  %116 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 73, i32 17
  %117 = load float, ptr %116, align 4, !tbaa !60
  %118 = fsub float %81, %117
  %119 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 73, i32 17, i64 1
  %120 = load float, ptr %119, align 4, !tbaa !60
  %121 = fsub float %83, %120
  %122 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 73, i32 21
  %123 = load float, ptr %122, align 8, !tbaa !125
  %124 = fdiv float 1.000000e+00, %123
  br label %125

125:                                              ; preds = %77, %97, %112, %84
  %126 = phi float [ %87, %84 ], [ %80, %97 ], [ %115, %112 ], [ %80, %77 ]
  %127 = phi float [ %90, %84 ], [ %81, %97 ], [ %118, %112 ], [ 0.000000e+00, %77 ]
  %128 = phi float [ %93, %84 ], [ %83, %97 ], [ %121, %112 ], [ 0.000000e+00, %77 ]
  %129 = phi float [ %96, %84 ], [ %111, %97 ], [ %124, %112 ], [ 1.000000e+00, %77 ]
  %130 = fmul float %127, %129
  %131 = fmul float %128, %129
  %132 = fcmp ogt float %126, 0x3F50624DE0000000
  %133 = fcmp olt float %126, 0xBF50624DE0000000
  %134 = or i1 %132, %133
  br i1 %134, label %135, label %145

135:                                              ; preds = %125
  %136 = tail call float @atan2f(float noundef %131, float noundef %130) #12
  %137 = fadd float %126, %136
  %138 = fmul float %131, %131
  %139 = tail call float @llvm.fmuladd.f32(float %130, float %130, float %138)
  %140 = tail call float @sqrtf(float noundef %139) #12
  %141 = tail call float @cosf(float noundef %137) #12
  %142 = fmul float %140, %141
  %143 = tail call float @sinf(float noundef %137) #12
  %144 = fmul float %140, %143
  br label %145

145:                                              ; preds = %125, %135
  %146 = phi float [ %142, %135 ], [ %130, %125 ]
  %147 = phi float [ %144, %135 ], [ %131, %125 ]
  store float %146, ptr %9, align 4, !tbaa !60
  %148 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  store float %147, ptr %148, align 4, !tbaa !60
  %149 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  store float 0.000000e+00, ptr %149, align 4, !tbaa !60
  %150 = getelementptr inbounds float, ptr %3, i64 1
  %151 = getelementptr inbounds float, ptr %3, i64 2
  %152 = getelementptr inbounds float, ptr %3, i64 3
  %153 = call i32 @externtex(ptr noundef nonnull %12, ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef %3, ptr noundef nonnull %150, ptr noundef nonnull %151, ptr noundef nonnull %152, i32 noundef %4, ptr noundef %5) #12
  %154 = trunc i32 %153 to i8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #12
  br label %155

155:                                              ; preds = %20, %74, %145, %16
  %156 = phi i8 [ %25, %20 ], [ %76, %74 ], [ %154, %145 ], [ 0, %16 ]
  %157 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 42
  %158 = load float, ptr %157, align 4, !tbaa !66
  %159 = load float, ptr %7, align 4, !tbaa !60
  %160 = fadd float %158, %159
  store float %160, ptr %7, align 4, !tbaa !60
  %161 = icmp eq i8 %156, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %155
  store float %160, ptr %3, align 4, !tbaa !60
  %163 = getelementptr inbounds float, ptr %3, i64 1
  store float %160, ptr %163, align 4, !tbaa !60
  %164 = getelementptr inbounds float, ptr %3, i64 2
  store float %160, ptr %164, align 4, !tbaa !60
  %165 = getelementptr inbounds float, ptr %3, i64 3
  store float 1.000000e+00, ptr %165, align 4, !tbaa !60
  br label %173

166:                                              ; preds = %155
  %167 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 73, i32 19
  %168 = load i32, ptr %167, align 4, !tbaa !132
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 73, i32 20
  %172 = load ptr, ptr %171, align 8, !tbaa !133
  call void @IMB_colormanagement_colorspace_to_scene_linear_v3(ptr noundef %3, ptr noundef %172) #12
  br label %173

173:                                              ; preds = %166, %170, %162
  %174 = load float, ptr %7, align 4, !tbaa !60
  br label %175

175:                                              ; preds = %74, %173
  %176 = phi float [ %174, %173 ], [ 0.000000e+00, %74 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  ret float %176
}

declare i32 @externtex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_brush_size_get(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  %5 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 73, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !126
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 73
  %10 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 15
  %11 = select i1 %8, ptr %10, ptr %9
  %12 = load i32, ptr %11, align 4, !tbaa !127
  %13 = sitofp i32 %12 to float
  %14 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !128
  %15 = fmul float %14, %13
  %16 = fptosi float %15 to i32
  ret i32 %16
}

declare void @IMB_colormanagement_colorspace_to_scene_linear_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local float @BKE_brush_sample_masktex(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [4 x float], align 16
  %7 = alloca float, align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !90
  %12 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  %13 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 4, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !120
  %15 = icmp eq ptr %14, null
  br i1 %15, label %167, label %16

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 4, i32 20
  %18 = load i8, ptr %17, align 4, !tbaa !121
  %19 = icmp eq i8 %18, 5
  %20 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 4, i32 13
  %21 = load float, ptr %20, align 4, !tbaa !122
  br i1 %19, label %22, label %67

22:                                               ; preds = %16
  %23 = load float, ptr %2, align 4, !tbaa !60
  %24 = getelementptr inbounds float, ptr %2, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #12
  %26 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 55
  %27 = load float, ptr %26, align 8, !tbaa !60
  %28 = fsub float %23, %27
  %29 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 55, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !60
  %31 = fsub float %25, %30
  %32 = fcmp olt float %21, 0xBF50624DE0000000
  %33 = fcmp ogt float %21, 0x3F50624DE0000000
  %34 = or i1 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %22
  %36 = tail call float @atan2f(float noundef %31, float noundef %28) #12
  %37 = fsub float %36, %21
  %38 = fmul float %31, %31
  %39 = tail call float @llvm.fmuladd.f32(float %28, float %28, float %38)
  %40 = tail call float @sqrtf(float noundef %39) #12
  %41 = tail call float @cosf(float noundef %37) #12
  %42 = fmul float %40, %41
  %43 = tail call float @sinf(float noundef %37) #12
  %44 = fmul float %40, %43
  br label %45

45:                                               ; preds = %22, %35
  %46 = phi float [ %44, %35 ], [ %31, %22 ]
  %47 = phi float [ %42, %35 ], [ %28, %22 ]
  %48 = tail call float @llvm.fabs.f32(float %47)
  %49 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 56
  %50 = load float, ptr %49, align 8, !tbaa !60
  %51 = fcmp ogt float %48, %50
  br i1 %51, label %57, label %52

52:                                               ; preds = %45
  %53 = tail call float @llvm.fabs.f32(float %46)
  %54 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 56, i64 1
  %55 = load float, ptr %54, align 4, !tbaa !60
  %56 = fcmp ogt float %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %52, %45
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #12
  br label %167

58:                                               ; preds = %52
  %59 = fdiv float %47, %50
  %60 = fdiv float %46, %55
  store float %59, ptr %8, align 4, !tbaa !60
  %61 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  store float %60, ptr %61, align 4, !tbaa !60
  %62 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  store float 0.000000e+00, ptr %62, align 4, !tbaa !60
  %63 = getelementptr inbounds float, ptr %6, i64 1
  %64 = getelementptr inbounds float, ptr %6, i64 2
  %65 = getelementptr inbounds float, ptr %6, i64 3
  %66 = call i32 @externtex(ptr noundef nonnull %12, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %63, ptr noundef nonnull %64, ptr noundef nonnull %65, i32 noundef %3, ptr noundef %4) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #12
  br label %142

67:                                               ; preds = %16
  %68 = fneg float %21
  %69 = load float, ptr %2, align 4, !tbaa !60
  %70 = getelementptr inbounds float, ptr %2, i64 1
  %71 = load float, ptr %70, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #12
  switch i8 %18, label %113 [
    i8 0, label %72
    i8 1, label %85
    i8 4, label %100
  ]

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 73, i32 8
  %74 = load float, ptr %73, align 4, !tbaa !123
  %75 = fsub float %74, %21
  %76 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 73, i32 18
  %77 = load float, ptr %76, align 4, !tbaa !60
  %78 = fsub float %69, %77
  %79 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 73, i32 18, i64 1
  %80 = load float, ptr %79, align 4, !tbaa !60
  %81 = fsub float %71, %80
  %82 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 73, i32 21
  %83 = load float, ptr %82, align 8, !tbaa !125
  %84 = fdiv float 1.000000e+00, %83
  br label %113

85:                                               ; preds = %67
  %86 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 73, i32 6
  %87 = load i32, ptr %86, align 8, !tbaa !126
  %88 = and i32 %87, 1
  %89 = icmp eq i32 %88, 0
  %90 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 73
  %91 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 15
  %92 = select i1 %89, ptr %91, ptr %90
  %93 = load i32, ptr %92, align 4, !tbaa !127
  %94 = sitofp i32 %93 to float
  %95 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !128
  %96 = fmul float %95, %94
  %97 = fptosi float %96 to i32
  %98 = sitofp i32 %97 to float
  %99 = fdiv float 1.000000e+00, %98
  br label %113

100:                                              ; preds = %67
  %101 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 73, i32 8
  %102 = load float, ptr %101, align 4, !tbaa !123
  %103 = fsub float %102, %21
  %104 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 73, i32 18
  %105 = load float, ptr %104, align 4, !tbaa !60
  %106 = fsub float %69, %105
  %107 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 73, i32 18, i64 1
  %108 = load float, ptr %107, align 4, !tbaa !60
  %109 = fsub float %71, %108
  %110 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 73, i32 21
  %111 = load float, ptr %110, align 8, !tbaa !125
  %112 = fdiv float 1.000000e+00, %111
  br label %113

113:                                              ; preds = %67, %85, %100, %72
  %114 = phi float [ %75, %72 ], [ %68, %85 ], [ %103, %100 ], [ %68, %67 ]
  %115 = phi float [ %78, %72 ], [ %69, %85 ], [ %106, %100 ], [ 0.000000e+00, %67 ]
  %116 = phi float [ %81, %72 ], [ %71, %85 ], [ %109, %100 ], [ 0.000000e+00, %67 ]
  %117 = phi float [ %84, %72 ], [ %99, %85 ], [ %112, %100 ], [ 1.000000e+00, %67 ]
  %118 = fmul float %115, %117
  %119 = fmul float %116, %117
  %120 = fcmp ogt float %114, 0x3F50624DE0000000
  %121 = fcmp olt float %114, 0xBF50624DE0000000
  %122 = or i1 %120, %121
  br i1 %122, label %123, label %133

123:                                              ; preds = %113
  %124 = tail call float @atan2f(float noundef %119, float noundef %118) #12
  %125 = fadd float %114, %124
  %126 = fmul float %119, %119
  %127 = tail call float @llvm.fmuladd.f32(float %118, float %118, float %126)
  %128 = tail call float @sqrtf(float noundef %127) #12
  %129 = tail call float @cosf(float noundef %125) #12
  %130 = fmul float %128, %129
  %131 = tail call float @sinf(float noundef %125) #12
  %132 = fmul float %128, %131
  br label %133

133:                                              ; preds = %113, %123
  %134 = phi float [ %130, %123 ], [ %118, %113 ]
  %135 = phi float [ %132, %123 ], [ %119, %113 ]
  store float %134, ptr %9, align 4, !tbaa !60
  %136 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  store float %135, ptr %136, align 4, !tbaa !60
  %137 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  store float 0.000000e+00, ptr %137, align 4, !tbaa !60
  %138 = getelementptr inbounds float, ptr %6, i64 1
  %139 = getelementptr inbounds float, ptr %6, i64 2
  %140 = getelementptr inbounds float, ptr %6, i64 3
  %141 = call i32 @externtex(ptr noundef nonnull %12, ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %138, ptr noundef nonnull %139, ptr noundef nonnull %140, i32 noundef %3, ptr noundef %4) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #12
  br label %142

142:                                              ; preds = %58, %133
  %143 = load float, ptr %7, align 4, !tbaa !60
  %144 = fcmp olt float %143, 0.000000e+00
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  store float 0.000000e+00, ptr %7, align 4, !tbaa !60
  br label %149

146:                                              ; preds = %142
  %147 = fcmp ogt float %143, 1.000000e+00
  br i1 %147, label %148, label %149

148:                                              ; preds = %146
  store float 1.000000e+00, ptr %7, align 4, !tbaa !60
  br label %149

149:                                              ; preds = %146, %148, %145
  %150 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 17
  %151 = load i32, ptr %150, align 4, !tbaa !134
  switch i32 %151, label %165 [
    i32 4, label %152
    i32 2, label %159
  ]

152:                                              ; preds = %149
  %153 = load float, ptr %7, align 4, !tbaa !60
  %154 = fsub float 1.000000e+00, %153
  %155 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 73, i32 16
  %156 = load float, ptr %155, align 8, !tbaa !135
  %157 = fcmp olt float %154, %156
  %158 = select i1 %157, float 1.000000e+00, float 0.000000e+00
  store float %158, ptr %7, align 4, !tbaa !60
  br label %165

159:                                              ; preds = %149
  %160 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 73, i32 16
  %161 = load float, ptr %160, align 8, !tbaa !135
  %162 = load float, ptr %7, align 4, !tbaa !60
  %163 = fsub float 1.000000e+00, %161
  %164 = call float @llvm.fmuladd.f32(float %162, float %163, float %161)
  store float %164, ptr %7, align 4, !tbaa !60
  br label %165

165:                                              ; preds = %149, %159, %152
  %166 = load float, ptr %7, align 4, !tbaa !60
  br label %167

167:                                              ; preds = %57, %5, %165
  %168 = phi float [ %166, %165 ], [ 1.000000e+00, %5 ], [ 0.000000e+00, %57 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  ret float %168
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local nonnull ptr @BKE_brush_color_get(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  %5 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 73, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !126
  %7 = and i32 %6, 64
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 73, i32 4
  %10 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 25
  %11 = select i1 %8, ptr %10, ptr %9
  ret ptr %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local nonnull ptr @BKE_brush_secondary_color_get(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  %5 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 73, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !126
  %7 = and i32 %6, 64
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 73, i32 5
  %10 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 27
  %11 = select i1 %8, ptr %10, ptr %9
  ret ptr %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_brush_color_set(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !90
  %6 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 73, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !126
  %8 = and i32 %7, 64
  %9 = icmp eq i32 %8, 0
  %10 = load float, ptr %2, align 4, !tbaa !60
  %11 = getelementptr inbounds float, ptr %2, i64 1
  %12 = getelementptr inbounds float, ptr %2, i64 2
  br i1 %9, label %19, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 73, i32 4
  store float %10, ptr %14, align 4, !tbaa !60
  %15 = load float, ptr %11, align 4, !tbaa !60
  %16 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 73, i32 4, i64 1
  store float %15, ptr %16, align 4, !tbaa !60
  %17 = load float, ptr %12, align 4, !tbaa !60
  %18 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 73, i32 4, i64 2
  store float %17, ptr %18, align 4, !tbaa !60
  br label %25

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 25
  store float %10, ptr %20, align 4, !tbaa !60
  %21 = load float, ptr %11, align 4, !tbaa !60
  %22 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 25, i64 1
  store float %21, ptr %22, align 4, !tbaa !60
  %23 = load float, ptr %12, align 4, !tbaa !60
  %24 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 25, i64 2
  store float %23, ptr %24, align 4, !tbaa !60
  br label %25

25:                                               ; preds = %19, %13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_brush_size_set(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !90
  %6 = sitofp i32 %2 to float
  %7 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !128
  %8 = fdiv float %6, %7
  %9 = fptosi float %8 to i32
  %10 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 73, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !126
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 73
  store i32 %9, ptr %15, align 8, !tbaa !136
  br label %18

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 15
  store i32 %9, ptr %17, align 4, !tbaa !50
  br label %18

18:                                               ; preds = %16, %14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_brush_use_locked_size(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  %5 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 73, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !137
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = and i32 %6, 4
  br label %15

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 16
  %13 = load i32, ptr %12, align 8, !tbaa !47
  %14 = and i32 %13, 1048576
  br label %15

15:                                               ; preds = %11, %9
  %16 = phi i32 [ %10, %9 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_brush_use_size_pressure(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  %5 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 73, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !137
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 16
  %11 = load i32, ptr %10, align 8, !tbaa !47
  br label %12

12:                                               ; preds = %2, %9
  %13 = phi i32 [ %11, %9 ], [ %6, %2 ]
  %14 = and i32 %13, 8
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_brush_use_alpha_pressure(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  %5 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 73, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !137
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = and i32 %6, 16
  br label %15

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 16
  %13 = load i32, ptr %12, align 8, !tbaa !47
  %14 = and i32 %13, 4
  br label %15

15:                                               ; preds = %11, %9
  %16 = phi i32 [ %10, %9 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_brush_unprojected_radius_set(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, float noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !90
  %6 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 73, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !126
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 46
  %11 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 73, i32 1
  %12 = select i1 %9, ptr %10, ptr %11
  store float %2, ptr %12, align 4, !tbaa !60
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BKE_brush_unprojected_radius_get(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  %5 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 73, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !126
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 73, i32 1
  %10 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 46
  %11 = select i1 %8, ptr %10, ptr %9
  %12 = load float, ptr %11, align 4, !tbaa !60
  ret float %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_brush_alpha_set(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, float noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !90
  %6 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 73, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !126
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 26
  %11 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 73, i32 2
  %12 = select i1 %9, ptr %10, ptr %11
  store float %2, ptr %12, align 8, !tbaa !60
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BKE_brush_alpha_get(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  %5 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 73, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !126
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 73, i32 2
  %10 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 26
  %11 = select i1 %8, ptr %10, ptr %9
  %12 = load float, ptr %11, align 8, !tbaa !60
  ret float %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BKE_brush_weight_get(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  %5 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 73, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !126
  %7 = and i32 %6, 32
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 73, i32 3
  %10 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 14
  %11 = select i1 %8, ptr %10, ptr %9
  %12 = load float, ptr %11, align 4, !tbaa !60
  ret float %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_brush_weight_set(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, float noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !90
  %6 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 73, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !126
  %8 = and i32 %7, 32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 73, i32 3
  store float %2, ptr %11, align 4, !tbaa !143
  br label %14

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 14
  store float %2, ptr %13, align 8, !tbaa !49
  br label %14

14:                                               ; preds = %12, %10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_brush_scale_unprojected_radius(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 {
  %4 = sitofp i32 %1 to float
  %5 = icmp eq i32 %2, 0
  %6 = sitofp i32 %2 to float
  %7 = select i1 %5, float 1.000000e+00, float %6
  %8 = fdiv float %4, %7
  %9 = load float, ptr %0, align 4, !tbaa !60
  %10 = fmul float %8, %9
  store float %10, ptr %0, align 4, !tbaa !60
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_brush_scale_size(ptr nocapture noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #9 {
  %4 = fcmp une float %2, 0.000000e+00
  %5 = select i1 %4, float %1, float 1.000000e+00
  %6 = fdiv float %1, %5
  %7 = load i32, ptr %0, align 4, !tbaa !127
  %8 = sitofp i32 %7 to float
  %9 = fmul float %6, %8
  %10 = fptosi float %9 to i32
  store i32 %10, ptr %0, align 4, !tbaa !127
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_brush_jitter_pos(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  br label %5

5:                                                ; preds = %5, %4
  %6 = load ptr, ptr @brush_rng, align 8, !tbaa !34
  %7 = tail call float @BLI_rng_get_float(ptr noundef %6) #12
  %8 = fadd float %7, -5.000000e-01
  %9 = load ptr, ptr @brush_rng, align 8, !tbaa !34
  %10 = tail call float @BLI_rng_get_float(ptr noundef %9) #12
  %11 = fadd float %10, -5.000000e-01
  %12 = fmul float %11, %11
  %13 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %12)
  %14 = fcmp ogt float %13, 2.500000e-01
  br i1 %14, label %5, label %15, !llvm.loop !144

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 16
  %17 = load i32, ptr %16, align 8, !tbaa !47
  %18 = and i32 %17, 1073741824
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 19
  %22 = load i32, ptr %21, align 4, !tbaa !145
  br label %40

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %25 = load ptr, ptr %24, align 8, !tbaa !90
  %26 = getelementptr inbounds %struct.ToolSettings, ptr %25, i64 0, i32 73, i32 6
  %27 = load i32, ptr %26, align 8, !tbaa !126
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  %30 = getelementptr inbounds %struct.ToolSettings, ptr %25, i64 0, i32 73
  %31 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 15
  %32 = select i1 %29, ptr %31, ptr %30
  %33 = load i32, ptr %32, align 4, !tbaa !127
  %34 = sitofp i32 %33 to float
  %35 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !128
  %36 = fmul float %35, %34
  %37 = fptosi float %36 to i32
  %38 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 18
  %39 = load float, ptr %38, align 8, !tbaa !65
  br label %40

40:                                               ; preds = %23, %20
  %41 = phi float [ 1.000000e+00, %20 ], [ %39, %23 ]
  %42 = phi i32 [ %22, %20 ], [ %37, %23 ]
  %43 = shl nsw i32 %42, 1
  %44 = load float, ptr %2, align 4, !tbaa !60
  %45 = fmul float %8, 2.000000e+00
  %46 = sitofp i32 %43 to float
  %47 = fmul float %45, %46
  %48 = tail call float @llvm.fmuladd.f32(float %47, float %41, float %44)
  store float %48, ptr %3, align 4, !tbaa !60
  %49 = getelementptr inbounds float, ptr %2, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !60
  %51 = fmul float %11, 2.000000e+00
  %52 = fmul float %51, %46
  %53 = tail call float @llvm.fmuladd.f32(float %52, float %41, float %50)
  %54 = getelementptr inbounds float, ptr %3, i64 1
  store float %53, ptr %54, align 4, !tbaa !60
  ret void
}

declare float @BLI_rng_get_float(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_brush_randomize_texture_coordinates(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq i8 %1, 0
  %4 = load ptr, ptr @brush_rng, align 8, !tbaa !34
  %5 = tail call float @BLI_rng_get_float(ptr noundef %4) #12
  %6 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 21
  %7 = load float, ptr %6, align 8, !tbaa !125
  %8 = fmul float %5, %7
  br i1 %3, label %16, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 18
  store float %8, ptr %10, align 4, !tbaa !60
  %11 = load ptr, ptr @brush_rng, align 8, !tbaa !34
  %12 = tail call float @BLI_rng_get_float(ptr noundef %11) #12
  %13 = load float, ptr %6, align 8, !tbaa !125
  %14 = fmul float %12, %13
  %15 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 18, i64 1
  store float %14, ptr %15, align 4, !tbaa !60
  br label %23

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 17
  store float %8, ptr %17, align 4, !tbaa !60
  %18 = load ptr, ptr @brush_rng, align 8, !tbaa !34
  %19 = tail call float @BLI_rng_get_float(ptr noundef %18) #12
  %20 = load float, ptr %6, align 8, !tbaa !125
  %21 = fmul float %19, %20
  %22 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 17, i64 1
  store float %21, ptr %22, align 4, !tbaa !60
  br label %23

23:                                               ; preds = %16, %9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local float @BKE_brush_curve_strength_clamp(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = fcmp ult float %1, %2
  br i1 %4, label %5, label %14

5:                                                ; preds = %3
  %6 = fdiv float %1, %2
  %7 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = tail call float @curvemapping_evaluateF(ptr noundef %8, i32 noundef 0, float noundef %6) #12
  %10 = fcmp olt float %9, 0.000000e+00
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = fcmp ogt float %9, 1.000000e+00
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %13, %11, %5, %3
  %15 = phi float [ 0.000000e+00, %3 ], [ 1.000000e+00, %13 ], [ %9, %11 ], [ 0.000000e+00, %5 ]
  ret float %15
}

declare float @curvemapping_evaluateF(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local float @BKE_brush_curve_strength(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = fcmp ult float %1, %2
  %5 = fdiv float %1, %2
  %6 = select i1 %4, float %5, float 1.000000e+00
  %7 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = tail call float @curvemapping_evaluateF(ptr noundef %8, i32 noundef 0, float noundef %6) #12
  ret float %9
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_brush_gen_texture_cache(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca float, align 4
  %5 = alloca [4 x float], align 16
  %6 = alloca [3 x float], align 4
  %7 = icmp eq i8 %2, 0
  %8 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 4
  %9 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 3
  %10 = select i1 %7, ptr %9, ptr %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  %11 = shl i32 %1, 1
  %12 = getelementptr inbounds %struct.MTex, ptr %10, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !120
  %14 = icmp eq ptr %13, null
  br i1 %14, label %69, label %15

15:                                               ; preds = %3
  %16 = sitofp i32 %11 to double
  %17 = fdiv double 2.000000e+00, %16
  %18 = fptrunc double %17 to float
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %20 = sext i32 %11 to i64
  %21 = shl nsw i64 %20, 2
  %22 = mul i64 %21, %20
  %23 = tail call ptr %19(i64 noundef %22, ptr noundef nonnull @.str.88) #12
  %24 = icmp sgt i32 %1, 0
  br i1 %24, label %25, label %68

25:                                               ; preds = %15
  %26 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %27 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %28 = getelementptr inbounds float, ptr %5, i64 1
  %29 = getelementptr inbounds float, ptr %5, i64 2
  %30 = getelementptr inbounds float, ptr %5, i64 3
  %31 = tail call i32 @llvm.smax.i32(i32 %11, i32 1)
  %32 = tail call i32 @llvm.smax.i32(i32 %11, i32 1)
  %33 = zext nneg i32 %32 to i64
  %34 = zext nneg i32 %31 to i64
  br label %35

35:                                               ; preds = %25, %64
  %36 = phi i64 [ 0, %25 ], [ %65, %64 ]
  %37 = phi float [ -1.000000e+00, %25 ], [ %66, %64 ]
  %38 = trunc i64 %36 to i32
  %39 = mul i32 %11, %38
  br label %40

40:                                               ; preds = %35, %40
  %41 = phi i64 [ 0, %35 ], [ %61, %40 ]
  %42 = phi float [ -1.000000e+00, %35 ], [ %62, %40 ]
  store float %42, ptr %6, align 4, !tbaa !60
  store float %37, ptr %26, align 4, !tbaa !60
  store float 0.000000e+00, ptr %27, align 4, !tbaa !60
  %43 = call i32 @externtex(ptr noundef nonnull %10, ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %28, ptr noundef nonnull %29, ptr noundef nonnull %30, i32 noundef 0, ptr noundef null) #12
  %44 = load float, ptr %4, align 4, !tbaa !60
  %45 = fmul float %44, 2.550000e+02
  %46 = fptoui float %45 to i8
  %47 = trunc i64 %41 to i32
  %48 = add i32 %39, %47
  %49 = shl nsw i32 %48, 2
  %50 = or disjoint i32 %49, 3
  %51 = zext nneg i32 %50 to i64
  %52 = getelementptr inbounds i8, ptr %23, i64 %51
  store i8 %46, ptr %52, align 1, !tbaa !146
  %53 = or disjoint i32 %49, 2
  %54 = zext nneg i32 %53 to i64
  %55 = getelementptr inbounds i8, ptr %23, i64 %54
  store i8 %46, ptr %55, align 1, !tbaa !146
  %56 = or disjoint i32 %49, 1
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds i8, ptr %23, i64 %57
  store i8 %46, ptr %58, align 1, !tbaa !146
  %59 = zext nneg i32 %49 to i64
  %60 = getelementptr inbounds i8, ptr %23, i64 %59
  store i8 %46, ptr %60, align 1, !tbaa !146
  %61 = add nuw nsw i64 %41, 1
  %62 = fadd float %42, %18
  %63 = icmp eq i64 %61, %34
  br i1 %63, label %64, label %40, !llvm.loop !147

64:                                               ; preds = %40
  %65 = add nuw nsw i64 %36, 1
  %66 = fadd float %37, %18
  %67 = icmp eq i64 %65, %33
  br i1 %67, label %68, label %35, !llvm.loop !148

68:                                               ; preds = %64, %15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  br label %69

69:                                               ; preds = %68, %3
  %70 = phi ptr [ %23, %68 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret ptr %70
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_brush_gen_radial_control_imbuf(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca float, align 4
  %4 = alloca [4 x float], align 16
  %5 = alloca [3 x float], align 4
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %7 = tail call ptr %6(i64 noundef 2480, ptr noundef nonnull @.str.89) #12
  %8 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  tail call void @curvemapping_initialize(ptr noundef %9) #12
  %10 = icmp eq i8 %1, 0
  %11 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 4
  %12 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 3
  %13 = select i1 %10, ptr %12, ptr %11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  %14 = getelementptr inbounds %struct.MTex, ptr %13, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !120
  %16 = icmp eq ptr %15, null
  br i1 %16, label %59, label %17

17:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %19 = tail call ptr %18(i64 noundef 65536, ptr noundef nonnull @.str.88) #12
  %20 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %21 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %22 = getelementptr inbounds float, ptr %4, i64 1
  %23 = getelementptr inbounds float, ptr %4, i64 2
  %24 = getelementptr inbounds float, ptr %4, i64 3
  br label %25

25:                                               ; preds = %54, %17
  %26 = phi i64 [ 0, %17 ], [ %55, %54 ]
  %27 = phi float [ -1.000000e+00, %17 ], [ %56, %54 ]
  %28 = trunc i64 %26 to i32
  %29 = shl i32 %28, 9
  br label %30

30:                                               ; preds = %30, %25
  %31 = phi i64 [ 0, %25 ], [ %51, %30 ]
  %32 = phi float [ -1.000000e+00, %25 ], [ %52, %30 ]
  store float %32, ptr %5, align 4, !tbaa !60
  store float %27, ptr %20, align 4, !tbaa !60
  store float 0.000000e+00, ptr %21, align 4, !tbaa !60
  %33 = call i32 @externtex(ptr noundef nonnull %13, ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %22, ptr noundef nonnull %23, ptr noundef nonnull %24, i32 noundef 0, ptr noundef null) #12
  %34 = load float, ptr %3, align 4, !tbaa !60
  %35 = fmul float %34, 2.550000e+02
  %36 = fptoui float %35 to i8
  %37 = trunc i64 %31 to i32
  %38 = shl i32 %37, 2
  %39 = add i32 %38, %29
  %40 = or disjoint i32 %39, 3
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds i8, ptr %19, i64 %41
  store i8 %36, ptr %42, align 1, !tbaa !146
  %43 = or disjoint i32 %39, 2
  %44 = zext nneg i32 %43 to i64
  %45 = getelementptr inbounds i8, ptr %19, i64 %44
  store i8 %36, ptr %45, align 1, !tbaa !146
  %46 = or disjoint i32 %39, 1
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds i8, ptr %19, i64 %47
  store i8 %36, ptr %48, align 1, !tbaa !146
  %49 = zext nneg i32 %39 to i64
  %50 = getelementptr inbounds i8, ptr %19, i64 %49
  store i8 %36, ptr %50, align 1, !tbaa !146
  %51 = add nuw nsw i64 %31, 1
  %52 = fadd float %32, 1.562500e-02
  %53 = icmp eq i64 %51, 128
  br i1 %53, label %54, label %30, !llvm.loop !147

54:                                               ; preds = %30
  %55 = add nuw nsw i64 %26, 1
  %56 = fadd float %27, 1.562500e-02
  %57 = icmp eq i64 %55, 128
  br i1 %57, label %58, label %25, !llvm.loop !148

58:                                               ; preds = %54
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  br label %59

59:                                               ; preds = %2, %58
  %60 = phi ptr [ %19, %58 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %61 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %62 = call ptr %61(i64 noundef 65536, ptr noundef nonnull @.str.90) #12
  %63 = getelementptr inbounds %struct.ImBuf, ptr %7, i64 0, i32 9
  store ptr %62, ptr %63, align 8, !tbaa !149
  %64 = getelementptr inbounds %struct.ImBuf, ptr %7, i64 0, i32 3
  store i32 128, ptr %64, align 4, !tbaa !152
  %65 = getelementptr inbounds %struct.ImBuf, ptr %7, i64 0, i32 2
  store i32 128, ptr %65, align 8, !tbaa !153
  br label %66

66:                                               ; preds = %59, %97
  %67 = phi i64 [ 0, %59 ], [ %98, %97 ]
  %68 = trunc i64 %67 to i32
  %69 = add i32 %68, -64
  %70 = sitofp i32 %69 to float
  %71 = fmul float %70, %70
  %72 = shl nuw nsw i64 %67, 7
  br label %73

73:                                               ; preds = %66, %90
  %74 = phi i64 [ 0, %66 ], [ %95, %90 ]
  %75 = trunc i64 %74 to i32
  %76 = add i32 %75, -64
  %77 = sitofp i32 %76 to float
  %78 = fmul float %77, %77
  %79 = fadd float %71, %78
  %80 = call float @sqrtf(float noundef %79) #12
  %81 = fcmp ult float %80, 6.400000e+01
  br i1 %81, label %82, label %90

82:                                               ; preds = %73
  %83 = fmul float %80, 1.562500e-02
  %84 = load ptr, ptr %8, align 8, !tbaa !72
  %85 = call float @curvemapping_evaluateF(ptr noundef %84, i32 noundef 0, float noundef %83) #12
  %86 = fcmp olt float %85, 0.000000e+00
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = fcmp ogt float %85, 1.000000e+00
  br i1 %88, label %89, label %90

89:                                               ; preds = %87
  br label %90

90:                                               ; preds = %73, %82, %87, %89
  %91 = phi float [ 0.000000e+00, %73 ], [ 1.000000e+00, %89 ], [ %85, %87 ], [ 0.000000e+00, %82 ]
  %92 = load ptr, ptr %63, align 8, !tbaa !149
  %93 = getelementptr float, ptr %92, i64 %74
  %94 = getelementptr float, ptr %93, i64 %72
  store float %91, ptr %94, align 4, !tbaa !60
  %95 = add nuw nsw i64 %74, 1
  %96 = icmp eq i64 %95, 128
  br i1 %96, label %97, label %73, !llvm.loop !154

97:                                               ; preds = %90
  %98 = add nuw nsw i64 %67, 1
  %99 = icmp eq i64 %98, 128
  br i1 %99, label %100, label %66, !llvm.loop !155

100:                                              ; preds = %97
  %101 = icmp eq ptr %60, null
  br i1 %101, label %132, label %102

102:                                              ; preds = %100
  %103 = load ptr, ptr %63, align 8, !tbaa !149
  br label %104

104:                                              ; preds = %102, %127
  %105 = phi i64 [ 0, %102 ], [ %128, %127 ]
  %106 = shl nuw nsw i64 %105, 7
  br label %107

107:                                              ; preds = %104, %107
  %108 = phi i64 [ 0, %104 ], [ %125, %107 ]
  %109 = add nuw nsw i64 %108, %106
  %110 = getelementptr inbounds i32, ptr %60, i64 %109
  %111 = load i32, ptr %110, align 4, !tbaa !127
  %112 = lshr i32 %111, 8
  %113 = lshr i32 %111, 16
  %114 = and i32 %111, 255
  %115 = and i32 %112, 255
  %116 = add nuw nsw i32 %115, %114
  %117 = and i32 %113, 255
  %118 = add nuw nsw i32 %116, %117
  %119 = sitofp i32 %118 to float
  %120 = fdiv float %119, 3.000000e+00
  %121 = fdiv float %120, 2.550000e+02
  %122 = getelementptr inbounds float, ptr %103, i64 %109
  %123 = load float, ptr %122, align 4, !tbaa !60
  %124 = fmul float %123, %121
  store float %124, ptr %122, align 4, !tbaa !60
  %125 = add nuw nsw i64 %108, 1
  %126 = icmp eq i64 %125, 128
  br i1 %126, label %127, label %107, !llvm.loop !156

127:                                              ; preds = %107
  %128 = add nuw nsw i64 %105, 1
  %129 = icmp eq i64 %128, 128
  br i1 %129, label %130, label %104, !llvm.loop !157

130:                                              ; preds = %127
  %131 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %131(ptr noundef nonnull %60) #12
  br label %132

132:                                              ; preds = %130, %100
  ret ptr %7
}

declare void @curvemapping_initialize(ptr noundef) local_unnamed_addr #1

declare void @default_mtex(ptr noundef) local_unnamed_addr #1

declare void @id_lib_extern(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }

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
!38 = !{!39, !41, i64 98}
!39 = !{!"Brush", !40, i64 0, !43, i64 120, !35, i64 144, !45, i64 152, !45, i64 464, !35, i64 776, !35, i64 784, !35, i64 792, !35, i64 800, !35, i64 808, !36, i64 816, !44, i64 1840, !41, i64 1844, !41, i64 1846, !44, i64 1848, !42, i64 1852, !42, i64 1856, !42, i64 1860, !44, i64 1864, !42, i64 1868, !42, i64 1872, !42, i64 1876, !42, i64 1880, !44, i64 1884, !44, i64 1888, !36, i64 1892, !44, i64 1904, !36, i64 1908, !42, i64 1920, !44, i64 1924, !44, i64 1928, !42, i64 1932, !42, i64 1936, !42, i64 1940, !36, i64 1944, !36, i64 1945, !36, i64 1946, !36, i64 1947, !44, i64 1948, !44, i64 1952, !44, i64 1956, !44, i64 1960, !44, i64 1964, !42, i64 1968, !42, i64 1972, !42, i64 1976, !44, i64 1980, !44, i64 1984, !42, i64 1988, !42, i64 1992, !44, i64 1996, !36, i64 2000, !36, i64 2012, !36, i64 2024, !36, i64 2032, !36, i64 2040, !36, i64 2048}
!40 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !41, i64 98, !42, i64 100, !42, i64 104, !42, i64 108, !35, i64 112}
!41 = !{!"short", !36, i64 0}
!42 = !{!"int", !36, i64 0}
!43 = !{!"BrushClone", !35, i64 0, !36, i64 8, !44, i64 16, !44, i64 20}
!44 = !{!"float", !36, i64 0}
!45 = !{!"MTex", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 88, !36, i64 89, !36, i64 90, !36, i64 91, !36, i64 92, !36, i64 104, !44, i64 116, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !41, i64 128, !41, i64 130, !36, i64 132, !36, i64 133, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !44, i64 192, !44, i64 196, !44, i64 200, !44, i64 204, !44, i64 208, !44, i64 212, !44, i64 216, !44, i64 220, !44, i64 224, !44, i64 228, !44, i64 232, !44, i64 236, !44, i64 240, !44, i64 244, !44, i64 248, !44, i64 252, !44, i64 256, !44, i64 260, !44, i64 264, !44, i64 268, !44, i64 272, !44, i64 276, !44, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !44, i64 308}
!46 = !{!39, !41, i64 1844}
!47 = !{!39, !42, i64 1856}
!48 = !{!39, !41, i64 1846}
!49 = !{!39, !44, i64 1848}
!50 = !{!39, !42, i64 1852}
!51 = !{!39, !44, i64 1904}
!52 = !{!39, !44, i64 1948}
!53 = !{!39, !44, i64 1952}
!54 = !{!39, !42, i64 1920}
!55 = !{!39, !44, i64 1924}
!56 = !{!39, !44, i64 1956}
!57 = !{!39, !44, i64 136}
!58 = !{!39, !44, i64 1840}
!59 = !{!39, !44, i64 1996}
!60 = !{!44, !44, i64 0}
!61 = !{!39, !42, i64 1876}
!62 = !{!39, !42, i64 1880}
!63 = !{!39, !44, i64 1884}
!64 = !{!39, !44, i64 1888}
!65 = !{!39, !44, i64 1864}
!66 = !{!39, !44, i64 1964}
!67 = !{!39, !42, i64 1968}
!68 = !{!39, !42, i64 1972}
!69 = !{!39, !42, i64 1976}
!70 = !{!39, !42, i64 1872}
!71 = !{!39, !36, i64 1944}
!72 = !{!39, !35, i64 144}
!73 = !{!74, !41, i64 2}
!74 = !{!"CurveMap", !41, i64 0, !41, i64 2, !44, i64 4, !44, i64 8, !44, i64 12, !36, i64 16, !36, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !36, i64 56, !36, i64 64}
!75 = !{!76, !42, i64 8}
!76 = !{!"CurveMapping", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !77, i64 16, !77, i64 32, !36, i64 48, !36, i64 336, !36, i64 348, !36, i64 360, !36, i64 372}
!77 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!78 = !{!39, !35, i64 168}
!79 = !{!39, !35, i64 480}
!80 = !{!39, !35, i64 808}
!81 = !{!39, !35, i64 784}
!82 = !{!39, !35, i64 792}
!83 = !{!39, !42, i64 100}
!84 = !{!39, !35, i64 800}
!85 = !{!86, !35, i64 0}
!86 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !87, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !36, i64 2090, !41, i64 2092, !42, i64 2096, !42, i64 2100, !36, i64 2104, !42, i64 2108, !42, i64 2112, !36, i64 2116}
!87 = !{!"ListBase", !35, i64 0, !35, i64 8}
!88 = !{!39, !35, i64 24}
!89 = !{!39, !35, i64 120}
!90 = !{!91, !35, i64 264}
!91 = !{!"Scene", !40, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !87, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !42, i64 232, !42, i64 236, !42, i64 240, !41, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !92, i64 280, !100, i64 4264, !87, i64 4296, !87, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !41, i64 4376, !41, i64 4378, !42, i64 4380, !87, i64 4384, !101, i64 4400, !102, i64 4416, !105, i64 4600, !35, i64 4608, !106, i64 4616, !35, i64 4640, !107, i64 4648, !107, i64 4656, !94, i64 4664, !95, i64 4824, !108, i64 4888, !35, i64 4952}
!92 = !{!"RenderData", !93, i64 0, !35, i64 248, !35, i64 256, !96, i64 264, !97, i64 328, !42, i64 400, !42, i64 404, !42, i64 408, !44, i64 412, !42, i64 416, !42, i64 420, !42, i64 424, !42, i64 428, !41, i64 432, !41, i64 434, !44, i64 436, !44, i64 440, !44, i64 444, !44, i64 448, !44, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !42, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !42, i64 484, !42, i64 488, !41, i64 492, !41, i64 494, !42, i64 496, !42, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !36, i64 514, !36, i64 515, !42, i64 516, !42, i64 520, !42, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !77, i64 544, !77, i64 560, !98, i64 576, !87, i64 592, !41, i64 608, !41, i64 610, !44, i64 612, !44, i64 616, !44, i64 620, !44, i64 624, !42, i64 628, !44, i64 632, !44, i64 636, !44, i64 640, !44, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !44, i64 660, !44, i64 664, !41, i64 668, !41, i64 670, !44, i64 672, !44, i64 676, !36, i64 680, !42, i64 1704, !41, i64 1708, !41, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !42, i64 2520, !41, i64 2524, !41, i64 2526, !44, i64 2528, !44, i64 2532, !41, i64 2536, !41, i64 2538, !44, i64 2540, !41, i64 2544, !41, i64 2546, !42, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !44, i64 2560, !44, i64 2564, !35, i64 2568, !42, i64 2576, !44, i64 2580, !36, i64 2584, !99, i64 2616, !42, i64 3976, !42, i64 3980}
!93 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !41, i64 8, !41, i64 10, !44, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !94, i64 24, !95, i64 184}
!94 = !{!"ColorManagedViewSettings", !42, i64 0, !42, i64 4, !36, i64 8, !36, i64 72, !44, i64 136, !44, i64 140, !35, i64 144, !35, i64 152}
!95 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!96 = !{!"QuicktimeCodecSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !41, i64 48, !41, i64 50, !42, i64 52, !42, i64 56, !42, i64 60}
!97 = !{!"FFMpegCodecData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !44, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !42, i64 48, !42, i64 52, !42, i64 56, !42, i64 60, !35, i64 64}
!98 = !{!"rcti", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!99 = !{!"BakeData", !93, i64 0, !36, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !44, i64 1280, !44, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!100 = !{!"AudioData", !42, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !42, i64 16, !41, i64 20, !41, i64 22, !44, i64 24, !44, i64 28}
!101 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!102 = !{!"GameData", !101, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !36, i64 34, !103, i64 40, !41, i64 64, !41, i64 66, !44, i64 68, !104, i64 72, !44, i64 128, !44, i64 132, !42, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180}
!103 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !44, i64 8, !44, i64 12, !35, i64 16}
!104 = !{!"RecastData", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !42, i64 40, !44, i64 44, !44, i64 48, !41, i64 52, !41, i64 54}
!105 = !{!"UnitSettings", !44, i64 0, !36, i64 4, !36, i64 5, !41, i64 6}
!106 = !{!"PhysicsSettings", !36, i64 0, !42, i64 12, !42, i64 16, !42, i64 20}
!107 = !{!"long", !36, i64 0}
!108 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!109 = !{!91, !35, i64 24}
!110 = distinct !{!110, !111, !112}
!111 = !{!"llvm.loop.mustprogress"}
!112 = !{!"llvm.loop.unroll.disable"}
!113 = distinct !{!113, !111, !112}
!114 = !{!40, !42, i64 100}
!115 = !{!116, !42, i64 100}
!116 = !{!"Tex", !40, i64 0, !35, i64 120, !44, i64 128, !44, i64 132, !44, i64 136, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !44, i64 192, !44, i64 196, !44, i64 200, !44, i64 204, !44, i64 208, !44, i64 212, !41, i64 216, !41, i64 218, !41, i64 220, !41, i64 222, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !44, i64 236, !44, i64 240, !44, i64 244, !44, i64 248, !42, i64 252, !42, i64 256, !41, i64 260, !41, i64 262, !41, i64 264, !41, i64 266, !42, i64 268, !42, i64 272, !42, i64 276, !42, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !117, i64 296, !35, i64 336, !35, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !36, i64 408, !36, i64 409}
!117 = !{!"ImageUser", !35, i64 0, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !41, i64 28, !41, i64 30, !41, i64 32, !41, i64 34, !42, i64 36}
!118 = !{!119, !42, i64 100}
!119 = !{!"Image", !40, i64 0, !36, i64 120, !35, i64 1144, !35, i64 1152, !35, i64 1160, !35, i64 1168, !36, i64 1176, !41, i64 1240, !41, i64 1242, !41, i64 1244, !41, i64 1246, !41, i64 1248, !41, i64 1250, !42, i64 1252, !41, i64 1256, !41, i64 1258, !41, i64 1260, !41, i64 1262, !41, i64 1264, !41, i64 1266, !42, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !44, i64 1296, !42, i64 1300, !41, i64 1304, !41, i64 1306, !42, i64 1308, !42, i64 1312, !36, i64 1316, !36, i64 1317, !41, i64 1318, !36, i64 1320, !44, i64 1336, !44, i64 1340, !108, i64 1344, !36, i64 1408, !36, i64 1409, !36, i64 1416}
!120 = !{!45, !35, i64 16}
!121 = !{!45, !36, i64 132}
!122 = !{!45, !44, i64 116}
!123 = !{!124, !44, i64 52}
!124 = !{!"UnifiedPaintSettings", !42, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !36, i64 16, !36, i64 28, !42, i64 40, !36, i64 44, !44, i64 52, !42, i64 56, !42, i64 60, !36, i64 64, !36, i64 65, !44, i64 72, !36, i64 76, !42, i64 84, !44, i64 88, !36, i64 92, !36, i64 100, !42, i64 108, !35, i64 112, !44, i64 120, !42, i64 124}
!125 = !{!124, !44, i64 120}
!126 = !{!124, !42, i64 40}
!127 = !{!42, !42, i64 0}
!128 = !{!129, !44, i64 10908}
!129 = !{!"UserDef", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !42, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !42, i64 8484, !42, i64 8488, !42, i64 8492, !41, i64 8496, !41, i64 8498, !42, i64 8500, !42, i64 8504, !42, i64 8508, !42, i64 8512, !42, i64 8516, !42, i64 8520, !42, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !87, i64 8536, !87, i64 8552, !87, i64 8568, !87, i64 8584, !87, i64 8600, !87, i64 8616, !87, i64 8632, !36, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !36, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !42, i64 8912, !42, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !44, i64 8956, !44, i64 8960, !42, i64 8964, !41, i64 8968, !41, i64 8970, !44, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !130, i64 8984, !36, i64 9760, !36, i64 9772, !41, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !42, i64 10896, !42, i64 10900, !44, i64 10904, !44, i64 10908, !42, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !131, i64 10928}
!130 = !{!"ColorBand", !41, i64 0, !41, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!131 = !{!"WalkNavigation", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !41, i64 24, !36, i64 26}
!132 = !{!124, !42, i64 108}
!133 = !{!124, !35, i64 112}
!134 = !{!39, !42, i64 1860}
!135 = !{!124, !44, i64 88}
!136 = !{!124, !42, i64 0}
!137 = !{!138, !42, i64 520}
!138 = !{!"ToolSettings", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !44, i64 32, !44, i64 36, !44, i64 40, !41, i64 44, !41, i64 46, !36, i64 48, !36, i64 49, !36, i64 50, !36, i64 51, !44, i64 52, !41, i64 56, !36, i64 58, !36, i64 59, !139, i64 64, !141, i64 168, !44, i64 336, !44, i64 340, !41, i64 344, !41, i64 346, !36, i64 348, !36, i64 349, !41, i64 350, !44, i64 352, !44, i64 356, !44, i64 360, !44, i64 364, !44, i64 368, !44, i64 372, !44, i64 376, !44, i64 380, !44, i64 384, !44, i64 388, !41, i64 392, !36, i64 394, !36, i64 395, !36, i64 396, !36, i64 399, !35, i64 400, !36, i64 408, !36, i64 409, !36, i64 410, !36, i64 411, !36, i64 412, !36, i64 413, !36, i64 421, !36, i64 429, !36, i64 430, !36, i64 431, !36, i64 432, !36, i64 433, !41, i64 434, !41, i64 436, !41, i64 438, !41, i64 440, !36, i64 442, !36, i64 443, !36, i64 444, !36, i64 445, !36, i64 446, !36, i64 447, !42, i64 448, !42, i64 452, !42, i64 456, !42, i64 460, !41, i64 464, !41, i64 466, !42, i64 468, !44, i64 472, !44, i64 476, !124, i64 480, !142, i64 608}
!139 = !{!"ImagePaintSettings", !140, i64 0, !41, i64 40, !41, i64 42, !41, i64 44, !41, i64 46, !36, i64 48, !42, i64 52, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !36, i64 88, !44, i64 100}
!140 = !{!"Paint", !35, i64 0, !35, i64 8, !35, i64 16, !36, i64 24, !42, i64 28, !42, i64 32, !42, i64 36}
!141 = !{!"ParticleEditSettings", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !36, i64 8, !35, i64 120, !44, i64 128, !44, i64 132, !42, i64 136, !42, i64 140, !42, i64 144, !42, i64 148, !35, i64 152, !35, i64 160}
!142 = !{!"MeshStatVis", !36, i64 0, !36, i64 1, !36, i64 3, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !36, i64 20, !36, i64 21, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36}
!143 = !{!124, !44, i64 12}
!144 = distinct !{!144, !111, !112}
!145 = !{!39, !42, i64 1868}
!146 = !{!36, !36, i64 0}
!147 = distinct !{!147, !111, !112}
!148 = distinct !{!148, !111, !112}
!149 = !{!150, !35, i64 48}
!150 = !{!"ImBuf", !35, i64 0, !35, i64 8, !42, i64 16, !42, i64 20, !36, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !35, i64 40, !35, i64 48, !36, i64 56, !42, i64 72, !42, i64 76, !42, i64 80, !42, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !44, i64 112, !36, i64 120, !42, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !35, i64 296, !35, i64 304, !42, i64 312, !36, i64 316, !36, i64 1340, !35, i64 2368, !42, i64 2376, !35, i64 2384, !42, i64 2392, !42, i64 2396, !35, i64 2400, !35, i64 2408, !35, i64 2416, !35, i64 2424, !42, i64 2432, !98, i64 2436, !151, i64 2456}
!151 = !{!"DDSData", !42, i64 0, !42, i64 4, !35, i64 8, !42, i64 16}
!152 = !{!150, !42, i64 20}
!153 = !{!150, !42, i64 16}
!154 = distinct !{!154, !111, !112}
!155 = distinct !{!155, !111, !112}
!156 = distinct !{!156, !111, !112}
!157 = distinct !{!157, !111, !112}
