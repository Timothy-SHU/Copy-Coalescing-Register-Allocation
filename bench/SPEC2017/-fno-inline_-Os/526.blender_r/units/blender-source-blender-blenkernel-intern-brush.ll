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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_brush_system_init() local_unnamed_addr #0 {
  %1 = tail call ptr @BLI_rng_new(i32 noundef 0) #14
  store ptr %1, ptr @brush_rng, align 8, !tbaa !34
  tail call void @BLI_rng_srandom(ptr noundef %1, i32 noundef 31415682) #14
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_rng_new(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_rng_srandom(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_brush_system_exit() local_unnamed_addr #0 {
  %1 = load ptr, ptr @brush_rng, align 8, !tbaa !34
  tail call void @BLI_rng_free(ptr noundef %1) #14
  ret void
}

; Function Attrs: optsize
declare void @BLI_rng_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_brush_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 21058, ptr noundef %1) #14
  %4 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 5
  %5 = load i16, ptr %4, align 2, !tbaa !38
  %6 = or i16 %5, 512
  store i16 %6, ptr %4, align 2, !tbaa !38
  tail call fastcc void @brush_defaults(ptr noundef %3) #15
  %7 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 34
  store i8 1, ptr %7, align 8, !tbaa !46
  tail call void @BKE_brush_curve_preset(ptr noundef %3, i32 noundef 2) #15
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @brush_defaults(ptr noundef %0) unnamed_addr #0 !PGOFuncName !47 {
  %2 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 12
  store i16 0, ptr %2, align 4, !tbaa !48
  %3 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 16
  %4 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 13
  store i16 30, ptr %4, align 2, !tbaa !49
  %5 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 14
  store float 1.000000e+00, ptr %5, align 8, !tbaa !50
  %6 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 15
  store i32 35, ptr %6, align 4, !tbaa !51
  %7 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 38
  store <2 x float> <float 0.000000e+00, float 5.000000e-01>, ptr %7, align 4, !tbaa !52
  %8 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 28
  store i32 0, ptr %8, align 8, !tbaa !53
  %9 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 29
  store float 0.000000e+00, ptr %9, align 4, !tbaa !54
  %10 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 40
  store float 5.000000e-01, ptr %10, align 4, !tbaa !55
  %11 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 1, i32 2
  store float 5.000000e-01, ptr %11, align 8, !tbaa !56
  %12 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 11
  store float 0.000000e+00, ptr %12, align 8, !tbaa !57
  %13 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 50
  store float 0x3FC99999A0000000, ptr %13, align 4, !tbaa !58
  store i32 4, ptr %3, align 8, !tbaa !59
  %14 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 25
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 5.000000e-01>, ptr %14, align 4, !tbaa !52
  %15 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 27
  tail call fastcc void @zero_v3(ptr noundef nonnull %15) #15
  %16 = load i32, ptr %3, align 8, !tbaa !59
  %17 = or i32 %16, 263168
  store i32 %17, ptr %3, align 8, !tbaa !59
  %18 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 21
  store i32 10, ptr %18, align 4, !tbaa !60
  %19 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 22
  store i32 75, ptr %19, align 8, !tbaa !61
  %20 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 23
  store <2 x float> <float 0x3FECCCCCC0000000, float 0x3FB99999A0000000>, ptr %20, align 4, !tbaa !52
  %21 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 18
  store float 0.000000e+00, ptr %21, align 8, !tbaa !62
  %22 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 3
  tail call void @default_mtex(ptr noundef nonnull %22) #14
  %23 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 4
  tail call void @default_mtex(ptr noundef nonnull %23) #14
  %24 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 42
  store float 0.000000e+00, ptr %24, align 4, !tbaa !63
  %25 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 43
  store i32 33, ptr %25, align 8, !tbaa !64
  %26 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 44
  store i32 33, ptr %26, align 4, !tbaa !65
  %27 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 45
  store i32 33, ptr %27, align 8, !tbaa !66
  %28 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 20
  store i32 0, ptr %28, align 8, !tbaa !67
  %29 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 51
  store <4 x float> <float 1.000000e+00, float 0x3FD8F5C280000000, float 0x3FD8F5C280000000, float 0x3FD8F5C280000000>, ptr %29, align 8, !tbaa !52
  %30 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 52, i64 1
  store <4 x float> <float 0x3FD8F5C280000000, float 1.000000e+00, float 2.560000e+02, float 2.560000e+02>, ptr %30, align 4, !tbaa !52
  %31 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 54
  store <2 x float> <float 2.560000e+02, float 2.560000e+02>, ptr %31, align 8, !tbaa !52
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_brush_curve_preset(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call ptr @curvemapping_add(i32 noundef 1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #14
  store ptr %7, ptr %3, align 8, !tbaa !68
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi ptr [ %7, %6 ], [ %4, %2 ]
  %10 = getelementptr inbounds %struct.CurveMapping, ptr %9, i64 0, i32 6
  %11 = getelementptr inbounds %struct.CurveMapping, ptr %9, i64 0, i32 6, i64 0, i32 1
  %12 = load i16, ptr %11, align 2, !tbaa !69
  %13 = and i16 %12, -2
  store i16 %13, ptr %11, align 2, !tbaa !69
  %14 = getelementptr inbounds %struct.CurveMapping, ptr %9, i64 0, i32 2
  store i32 %1, ptr %14, align 8, !tbaa !71
  %15 = getelementptr inbounds %struct.CurveMapping, ptr %9, i64 0, i32 5
  tail call void @curvemap_reset(ptr noundef nonnull %10, ptr noundef nonnull %15, i32 noundef %1, i32 noundef 0) #14
  %16 = load ptr, ptr %3, align 8, !tbaa !68
  tail call void @curvemapping_changed(ptr noundef %16, i8 noundef zeroext 0) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_brush_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_libblock_copy(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 3, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @id_us_plus(ptr noundef nonnull %4) #14
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 4, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !75
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @id_us_plus(ptr noundef nonnull %9) #14
  br label %12

12:                                               ; preds = %11, %7
  %13 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !76
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @id_us_plus(ptr noundef nonnull %14) #14
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !77
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = tail call ptr @IMB_dupImBuf(ptr noundef nonnull %19) #14
  %23 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 6
  store ptr %22, ptr %23, align 8, !tbaa !77
  br label %24

24:                                               ; preds = %21, %17
  %25 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 7
  store ptr null, ptr %25, align 8, !tbaa !78
  %26 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !68
  %28 = tail call ptr @curvemapping_copy(ptr noundef %27) #14
  %29 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 2
  store ptr %28, ptr %29, align 8, !tbaa !68
  %30 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 5
  %31 = load i16, ptr %30, align 2, !tbaa !38
  %32 = and i16 %31, 512
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = or disjoint i16 %31, 512
  store i16 %35, ptr %30, align 2, !tbaa !38
  %36 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 6
  %37 = load i32, ptr %36, align 4, !tbaa !79
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %36, align 4, !tbaa !79
  br label %39

39:                                               ; preds = %34, %24
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @BKE_libblock_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @IMB_dupImBuf(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @curvemapping_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_brush_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 3, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !74
  tail call void @id_us_min(ptr noundef %3) #14
  %4 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 4, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  tail call void @id_us_min(ptr noundef %5) #14
  %6 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !76
  tail call void @id_us_min(ptr noundef %7) #14
  %8 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !77
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  tail call void @IMB_freeImBuf(ptr noundef nonnull %9) #14
  br label %12

12:                                               ; preds = %11, %1
  %13 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 7
  tail call void @BKE_previewimg_free(ptr noundef nonnull %13) #14
  %14 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !68
  tail call void @curvemapping_free(ptr noundef %15) #14
  %16 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !80
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %20(ptr noundef nonnull %17) #14
  br label %21

21:                                               ; preds = %19, %12
  ret void
}

; Function Attrs: optsize
declare void @id_us_min(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_previewimg_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @curvemapping_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_brush_make_local(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @G, align 8, !tbaa !81
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !84
  %5 = icmp eq ptr %4, null
  br i1 %5, label %84, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !85
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef nonnull %8) #14
  tail call fastcc void @extern_local_brush(ptr noundef nonnull %0) #15
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %84, label %15

15:                                               ; preds = %11, %34
  %16 = phi ptr [ %37, %34 ], [ %13, %11 ]
  %17 = phi i8 [ %36, %34 ], [ 0, %11 ]
  %18 = phi i8 [ %35, %34 ], [ 0, %11 ]
  %19 = icmp eq i8 %17, 0
  %20 = icmp eq i8 %18, 0
  %21 = select i1 %19, i1 true, i1 %20
  br i1 %21, label %22, label %53

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.Scene, ptr %16, i64 0, i32 20
  %24 = load ptr, ptr %23, align 8, !tbaa !86
  %25 = getelementptr inbounds %struct.ToolSettings, ptr %24, i64 0, i32 17
  %26 = tail call ptr @BKE_paint_brush(ptr noundef nonnull %25) #14
  %27 = icmp eq ptr %26, %0
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.ID, ptr %16, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !105
  %31 = icmp eq ptr %30, null
  %32 = select i1 %31, i8 1, i8 %18
  %33 = select i1 %31, i8 %17, i8 1
  br label %34

34:                                               ; preds = %28, %22
  %35 = phi i8 [ %18, %22 ], [ %32, %28 ]
  %36 = phi i8 [ %17, %22 ], [ %33, %28 ]
  %37 = load ptr, ptr %16, align 8, !tbaa !34
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %15, !llvm.loop !106

39:                                               ; preds = %34
  %40 = icmp ne i8 %35, 0
  %41 = icmp eq i8 %36, 0
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef %0) #14
  tail call fastcc void @extern_local_brush(ptr noundef %0) #15
  %44 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 5
  %45 = load i16, ptr %44, align 2, !tbaa !38
  %46 = and i16 %45, 512
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %84

48:                                               ; preds = %43
  %49 = or disjoint i16 %45, 512
  store i16 %49, ptr %44, align 2, !tbaa !38
  %50 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  %51 = load i32, ptr %50, align 4, !tbaa !79
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %50, align 4, !tbaa !79
  br label %84

53:                                               ; preds = %15, %39
  %54 = phi i8 [ %36, %39 ], [ %17, %15 ]
  %55 = phi i1 [ %40, %39 ], [ true, %15 ]
  %56 = icmp ne i8 %54, 0
  %57 = select i1 %55, i1 %56, i1 false
  br i1 %57, label %58, label %84

58:                                               ; preds = %53
  %59 = tail call ptr @BKE_brush_copy(ptr noundef %0) #15
  %60 = getelementptr inbounds %struct.ID, ptr %59, i64 0, i32 6
  store i32 1, ptr %60, align 4, !tbaa !79
  %61 = getelementptr inbounds %struct.ID, ptr %59, i64 0, i32 5
  %62 = load i16, ptr %61, align 2, !tbaa !38
  %63 = or i16 %62, 512
  store i16 %63, ptr %61, align 2, !tbaa !38
  %64 = load ptr, ptr %3, align 8, !tbaa !84
  tail call void @BKE_id_lib_local_paths(ptr noundef %2, ptr noundef %64, ptr noundef %59) #14
  %65 = load ptr, ptr %12, align 8, !tbaa !34
  %66 = icmp eq ptr %65, null
  br i1 %66, label %84, label %67

67:                                               ; preds = %58, %81
  %68 = phi ptr [ %82, %81 ], [ %65, %58 ]
  %69 = getelementptr inbounds %struct.Scene, ptr %68, i64 0, i32 20
  %70 = load ptr, ptr %69, align 8, !tbaa !86
  %71 = getelementptr inbounds %struct.ToolSettings, ptr %70, i64 0, i32 17
  %72 = tail call ptr @BKE_paint_brush(ptr noundef nonnull %71) #14
  %73 = icmp eq ptr %72, %0
  br i1 %73, label %74, label %81

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.ID, ptr %68, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !105
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load ptr, ptr %69, align 8, !tbaa !86
  %80 = getelementptr inbounds %struct.ToolSettings, ptr %79, i64 0, i32 17
  tail call void @BKE_paint_brush_set(ptr noundef nonnull %80, ptr noundef %59) #14
  br label %81

81:                                               ; preds = %67, %78, %74
  %82 = load ptr, ptr %68, align 8, !tbaa !34
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %67, !llvm.loop !108

84:                                               ; preds = %81, %11, %58, %48, %43, %53, %1
  ret void
}

; Function Attrs: optsize
declare void @id_clear_lib_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @extern_local_brush(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !109 {
  %2 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 3, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !74
  tail call void @id_lib_extern(ptr noundef %3) #14
  %4 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 4, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  tail call void @id_lib_extern(ptr noundef %5) #14
  %6 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !85
  tail call void @id_lib_extern(ptr noundef %7) #14
  %8 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !76
  tail call void @id_lib_extern(ptr noundef %9) #14
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_paint_brush(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_id_lib_local_paths(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_paint_brush_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_brush_debug_print_state(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.Brush, align 8
  call void @llvm.lifetime.start.p0(i64 2056, ptr nonnull %2) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2056) %2, i8 0, i64 2056, i1 false)
  call fastcc void @brush_defaults(ptr noundef nonnull %2) #15
  %3 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 11
  %4 = load float, ptr %3, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 11
  %6 = load float, ptr %5, align 8, !tbaa !57
  %7 = fcmp une float %4, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = fpext float %4 to double
  %10 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %9) #15
  br label %11

11:                                               ; preds = %8, %1
  %12 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 12
  %13 = load i16, ptr %12, align 4, !tbaa !48
  %14 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 12
  %15 = load i16, ptr %14, align 4, !tbaa !48
  %16 = icmp eq i16 %13, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = sext i16 %13 to i32
  %19 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %18) #15
  br label %20

20:                                               ; preds = %17, %11
  %21 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 15
  %22 = load i32, ptr %21, align 4, !tbaa !51
  %23 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 15
  %24 = load i32, ptr %23, align 4, !tbaa !51
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %22) #15
  br label %28

28:                                               ; preds = %26, %20
  %29 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 16
  %30 = load i32, ptr %29, align 8, !tbaa !59
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  %33 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 16
  %34 = load i32, ptr %33, align 8, !tbaa !59
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %32, label %38, label %37

37:                                               ; preds = %28
  br i1 %36, label %39, label %42

38:                                               ; preds = %28
  br i1 %36, label %42, label %39

39:                                               ; preds = %38, %37
  %40 = phi ptr [ @str, %37 ], [ @str.91, %38 ]
  %41 = call i32 @puts(ptr nonnull dereferenceable(1) %40)
  br label %42

42:                                               ; preds = %39, %37, %38
  %43 = load i32, ptr %29, align 8, !tbaa !59
  %44 = and i32 %43, 2
  %45 = icmp eq i32 %44, 0
  %46 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 16
  %47 = load i32, ptr %46, align 8, !tbaa !59
  %48 = and i32 %47, 2
  %49 = icmp eq i32 %48, 0
  br i1 %45, label %51, label %50

50:                                               ; preds = %42
  br i1 %49, label %52, label %55

51:                                               ; preds = %42
  br i1 %49, label %55, label %52

52:                                               ; preds = %51, %50
  %53 = phi ptr [ @str.92, %50 ], [ @str.93, %51 ]
  %54 = call i32 @puts(ptr nonnull dereferenceable(1) %53)
  br label %55

55:                                               ; preds = %52, %50, %51
  %56 = load i32, ptr %29, align 8, !tbaa !59
  %57 = and i32 %56, 4
  %58 = icmp eq i32 %57, 0
  %59 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 16
  %60 = load i32, ptr %59, align 8, !tbaa !59
  %61 = and i32 %60, 4
  %62 = icmp eq i32 %61, 0
  br i1 %58, label %64, label %63

63:                                               ; preds = %55
  br i1 %62, label %65, label %68

64:                                               ; preds = %55
  br i1 %62, label %68, label %65

65:                                               ; preds = %64, %63
  %66 = phi ptr [ @str.94, %63 ], [ @str.95, %64 ]
  %67 = call i32 @puts(ptr nonnull dereferenceable(1) %66)
  br label %68

68:                                               ; preds = %65, %63, %64
  %69 = load i32, ptr %29, align 8, !tbaa !59
  %70 = and i32 %69, 8
  %71 = icmp eq i32 %70, 0
  %72 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 16
  %73 = load i32, ptr %72, align 8, !tbaa !59
  %74 = and i32 %73, 8
  %75 = icmp eq i32 %74, 0
  br i1 %71, label %77, label %76

76:                                               ; preds = %68
  br i1 %75, label %78, label %81

77:                                               ; preds = %68
  br i1 %75, label %81, label %78

78:                                               ; preds = %77, %76
  %79 = phi ptr [ @str.96, %76 ], [ @str.97, %77 ]
  %80 = call i32 @puts(ptr nonnull dereferenceable(1) %79)
  br label %81

81:                                               ; preds = %78, %76, %77
  %82 = load i32, ptr %29, align 8, !tbaa !59
  %83 = and i32 %82, 16
  %84 = icmp eq i32 %83, 0
  %85 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 16
  %86 = load i32, ptr %85, align 8, !tbaa !59
  %87 = and i32 %86, 16
  %88 = icmp eq i32 %87, 0
  br i1 %84, label %90, label %89

89:                                               ; preds = %81
  br i1 %88, label %91, label %94

90:                                               ; preds = %81
  br i1 %88, label %94, label %91

91:                                               ; preds = %90, %89
  %92 = phi ptr [ @str.98, %89 ], [ @str.99, %90 ]
  %93 = call i32 @puts(ptr nonnull dereferenceable(1) %92)
  br label %94

94:                                               ; preds = %91, %89, %90
  %95 = load i32, ptr %29, align 8, !tbaa !59
  %96 = and i32 %95, 32
  %97 = icmp eq i32 %96, 0
  %98 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 16
  %99 = load i32, ptr %98, align 8, !tbaa !59
  %100 = and i32 %99, 32
  %101 = icmp eq i32 %100, 0
  br i1 %97, label %103, label %102

102:                                              ; preds = %94
  br i1 %101, label %104, label %107

103:                                              ; preds = %94
  br i1 %101, label %107, label %104

104:                                              ; preds = %103, %102
  %105 = phi ptr [ @str.100, %102 ], [ @str.101, %103 ]
  %106 = call i32 @puts(ptr nonnull dereferenceable(1) %105)
  br label %107

107:                                              ; preds = %104, %102, %103
  %108 = load i32, ptr %29, align 8, !tbaa !59
  %109 = and i32 %108, 128
  %110 = icmp eq i32 %109, 0
  %111 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 16
  %112 = load i32, ptr %111, align 8, !tbaa !59
  %113 = and i32 %112, 128
  %114 = icmp eq i32 %113, 0
  br i1 %110, label %116, label %115

115:                                              ; preds = %107
  br i1 %114, label %117, label %120

116:                                              ; preds = %107
  br i1 %114, label %120, label %117

117:                                              ; preds = %116, %115
  %118 = phi ptr [ @str.102, %115 ], [ @str.103, %116 ]
  %119 = call i32 @puts(ptr nonnull dereferenceable(1) %118)
  br label %120

120:                                              ; preds = %117, %115, %116
  %121 = load i32, ptr %29, align 8, !tbaa !59
  %122 = and i32 %121, 256
  %123 = icmp eq i32 %122, 0
  %124 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 16
  %125 = load i32, ptr %124, align 8, !tbaa !59
  %126 = and i32 %125, 256
  %127 = icmp eq i32 %126, 0
  br i1 %123, label %129, label %128

128:                                              ; preds = %120
  br i1 %127, label %130, label %133

129:                                              ; preds = %120
  br i1 %127, label %133, label %130

130:                                              ; preds = %129, %128
  %131 = phi ptr [ @str.104, %128 ], [ @str.105, %129 ]
  %132 = call i32 @puts(ptr nonnull dereferenceable(1) %131)
  br label %133

133:                                              ; preds = %130, %128, %129
  %134 = load i32, ptr %29, align 8, !tbaa !59
  %135 = and i32 %134, 512
  %136 = icmp eq i32 %135, 0
  %137 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 16
  %138 = load i32, ptr %137, align 8, !tbaa !59
  %139 = and i32 %138, 512
  %140 = icmp eq i32 %139, 0
  br i1 %136, label %142, label %141

141:                                              ; preds = %133
  br i1 %140, label %143, label %146

142:                                              ; preds = %133
  br i1 %140, label %146, label %143

143:                                              ; preds = %142, %141
  %144 = phi ptr [ @str.106, %141 ], [ @str.107, %142 ]
  %145 = call i32 @puts(ptr nonnull dereferenceable(1) %144)
  br label %146

146:                                              ; preds = %143, %141, %142
  %147 = load i32, ptr %29, align 8, !tbaa !59
  %148 = and i32 %147, 1024
  %149 = icmp eq i32 %148, 0
  %150 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 16
  %151 = load i32, ptr %150, align 8, !tbaa !59
  %152 = and i32 %151, 1024
  %153 = icmp eq i32 %152, 0
  br i1 %149, label %155, label %154

154:                                              ; preds = %146
  br i1 %153, label %156, label %159

155:                                              ; preds = %146
  br i1 %153, label %159, label %156

156:                                              ; preds = %155, %154
  %157 = phi ptr [ @str.108, %154 ], [ @str.109, %155 ]
  %158 = call i32 @puts(ptr nonnull dereferenceable(1) %157)
  br label %159

159:                                              ; preds = %156, %154, %155
  %160 = load i32, ptr %29, align 8, !tbaa !59
  %161 = and i32 %160, 2048
  %162 = icmp eq i32 %161, 0
  %163 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 16
  %164 = load i32, ptr %163, align 8, !tbaa !59
  %165 = and i32 %164, 2048
  %166 = icmp eq i32 %165, 0
  br i1 %162, label %168, label %167

167:                                              ; preds = %159
  br i1 %166, label %169, label %172

168:                                              ; preds = %159
  br i1 %166, label %172, label %169

169:                                              ; preds = %168, %167
  %170 = phi ptr [ @str.110, %167 ], [ @str.111, %168 ]
  %171 = call i32 @puts(ptr nonnull dereferenceable(1) %170)
  br label %172

172:                                              ; preds = %169, %167, %168
  %173 = load i32, ptr %29, align 8, !tbaa !59
  %174 = and i32 %173, 4096
  %175 = icmp eq i32 %174, 0
  %176 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 16
  %177 = load i32, ptr %176, align 8, !tbaa !59
  %178 = and i32 %177, 4096
  %179 = icmp eq i32 %178, 0
  br i1 %175, label %181, label %180

180:                                              ; preds = %172
  br i1 %179, label %182, label %185

181:                                              ; preds = %172
  br i1 %179, label %185, label %182

182:                                              ; preds = %181, %180
  %183 = phi ptr [ @str.112, %180 ], [ @str.113, %181 ]
  %184 = call i32 @puts(ptr nonnull dereferenceable(1) %183)
  br label %185

185:                                              ; preds = %182, %180, %181
  %186 = load i32, ptr %29, align 8, !tbaa !59
  %187 = and i32 %186, 8192
  %188 = icmp eq i32 %187, 0
  %189 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 16
  %190 = load i32, ptr %189, align 8, !tbaa !59
  %191 = and i32 %190, 8192
  %192 = icmp eq i32 %191, 0
  br i1 %188, label %194, label %193

193:                                              ; preds = %185
  br i1 %192, label %195, label %198

194:                                              ; preds = %185
  br i1 %192, label %198, label %195

195:                                              ; preds = %194, %193
  %196 = phi ptr [ @str.114, %193 ], [ @str.115, %194 ]
  %197 = call i32 @puts(ptr nonnull dereferenceable(1) %196)
  br label %198

198:                                              ; preds = %195, %193, %194
  %199 = load i32, ptr %29, align 8, !tbaa !59
  %200 = and i32 %199, 16384
  %201 = icmp eq i32 %200, 0
  %202 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 16
  %203 = load i32, ptr %202, align 8, !tbaa !59
  %204 = and i32 %203, 16384
  %205 = icmp eq i32 %204, 0
  br i1 %201, label %207, label %206

206:                                              ; preds = %198
  br i1 %205, label %208, label %211

207:                                              ; preds = %198
  br i1 %205, label %211, label %208

208:                                              ; preds = %207, %206
  %209 = phi ptr [ @str.116, %206 ], [ @str.117, %207 ]
  %210 = call i32 @puts(ptr nonnull dereferenceable(1) %209)
  br label %211

211:                                              ; preds = %208, %206, %207
  %212 = load i32, ptr %29, align 8, !tbaa !59
  %213 = and i32 %212, 32768
  %214 = icmp eq i32 %213, 0
  %215 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 16
  %216 = load i32, ptr %215, align 8, !tbaa !59
  %217 = and i32 %216, 32768
  %218 = icmp eq i32 %217, 0
  br i1 %214, label %220, label %219

219:                                              ; preds = %211
  br i1 %218, label %221, label %224

220:                                              ; preds = %211
  br i1 %218, label %224, label %221

221:                                              ; preds = %220, %219
  %222 = phi ptr [ @str.118, %219 ], [ @str.119, %220 ]
  %223 = call i32 @puts(ptr nonnull dereferenceable(1) %222)
  br label %224

224:                                              ; preds = %221, %219, %220
  %225 = load i32, ptr %29, align 8, !tbaa !59
  %226 = and i32 %225, 65536
  %227 = icmp eq i32 %226, 0
  %228 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 16
  %229 = load i32, ptr %228, align 8, !tbaa !59
  %230 = and i32 %229, 65536
  %231 = icmp eq i32 %230, 0
  br i1 %227, label %233, label %232

232:                                              ; preds = %224
  br i1 %231, label %234, label %237

233:                                              ; preds = %224
  br i1 %231, label %237, label %234

234:                                              ; preds = %233, %232
  %235 = phi ptr [ @str.120, %232 ], [ @str.121, %233 ]
  %236 = call i32 @puts(ptr nonnull dereferenceable(1) %235)
  br label %237

237:                                              ; preds = %234, %232, %233
  %238 = load i32, ptr %29, align 8, !tbaa !59
  %239 = and i32 %238, 262144
  %240 = icmp eq i32 %239, 0
  %241 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 16
  %242 = load i32, ptr %241, align 8, !tbaa !59
  %243 = and i32 %242, 262144
  %244 = icmp eq i32 %243, 0
  br i1 %240, label %246, label %245

245:                                              ; preds = %237
  br i1 %244, label %247, label %250

246:                                              ; preds = %237
  br i1 %244, label %250, label %247

247:                                              ; preds = %246, %245
  %248 = phi ptr [ @str.122, %245 ], [ @str.123, %246 ]
  %249 = call i32 @puts(ptr nonnull dereferenceable(1) %248)
  br label %250

250:                                              ; preds = %247, %245, %246
  %251 = load i32, ptr %29, align 8, !tbaa !59
  %252 = and i32 %251, 524288
  %253 = icmp eq i32 %252, 0
  %254 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 16
  %255 = load i32, ptr %254, align 8, !tbaa !59
  %256 = and i32 %255, 524288
  %257 = icmp eq i32 %256, 0
  br i1 %253, label %259, label %258

258:                                              ; preds = %250
  br i1 %257, label %260, label %263

259:                                              ; preds = %250
  br i1 %257, label %263, label %260

260:                                              ; preds = %259, %258
  %261 = phi ptr [ @str.124, %258 ], [ @str.125, %259 ]
  %262 = call i32 @puts(ptr nonnull dereferenceable(1) %261)
  br label %263

263:                                              ; preds = %260, %258, %259
  %264 = load i32, ptr %29, align 8, !tbaa !59
  %265 = and i32 %264, 1048576
  %266 = icmp eq i32 %265, 0
  %267 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 16
  %268 = load i32, ptr %267, align 8, !tbaa !59
  %269 = and i32 %268, 1048576
  %270 = icmp eq i32 %269, 0
  br i1 %266, label %272, label %271

271:                                              ; preds = %263
  br i1 %270, label %273, label %276

272:                                              ; preds = %263
  br i1 %270, label %276, label %273

273:                                              ; preds = %272, %271
  %274 = phi ptr [ @str.126, %271 ], [ @str.127, %272 ]
  %275 = call i32 @puts(ptr nonnull dereferenceable(1) %274)
  br label %276

276:                                              ; preds = %273, %271, %272
  %277 = load i32, ptr %29, align 8, !tbaa !59
  %278 = and i32 %277, 4194304
  %279 = icmp eq i32 %278, 0
  %280 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 16
  %281 = load i32, ptr %280, align 8, !tbaa !59
  %282 = and i32 %281, 4194304
  %283 = icmp eq i32 %282, 0
  br i1 %279, label %285, label %284

284:                                              ; preds = %276
  br i1 %283, label %286, label %289

285:                                              ; preds = %276
  br i1 %283, label %289, label %286

286:                                              ; preds = %285, %284
  %287 = phi ptr [ @str.128, %284 ], [ @str.129, %285 ]
  %288 = call i32 @puts(ptr nonnull dereferenceable(1) %287)
  br label %289

289:                                              ; preds = %286, %284, %285
  %290 = load i32, ptr %29, align 8, !tbaa !59
  %291 = and i32 %290, 8388608
  %292 = icmp eq i32 %291, 0
  %293 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 16
  %294 = load i32, ptr %293, align 8, !tbaa !59
  %295 = and i32 %294, 8388608
  %296 = icmp eq i32 %295, 0
  br i1 %292, label %298, label %297

297:                                              ; preds = %289
  br i1 %296, label %299, label %302

298:                                              ; preds = %289
  br i1 %296, label %302, label %299

299:                                              ; preds = %298, %297
  %300 = phi ptr [ @str.130, %297 ], [ @str.131, %298 ]
  %301 = call i32 @puts(ptr nonnull dereferenceable(1) %300)
  br label %302

302:                                              ; preds = %299, %297, %298
  %303 = load i32, ptr %29, align 8, !tbaa !59
  %304 = and i32 %303, 16777216
  %305 = icmp eq i32 %304, 0
  %306 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 16
  %307 = load i32, ptr %306, align 8, !tbaa !59
  %308 = and i32 %307, 16777216
  %309 = icmp eq i32 %308, 0
  br i1 %305, label %311, label %310

310:                                              ; preds = %302
  br i1 %309, label %312, label %315

311:                                              ; preds = %302
  br i1 %309, label %315, label %312

312:                                              ; preds = %311, %310
  %313 = phi ptr [ @str.132, %310 ], [ @str.133, %311 ]
  %314 = call i32 @puts(ptr nonnull dereferenceable(1) %313)
  br label %315

315:                                              ; preds = %312, %310, %311
  %316 = load i32, ptr %29, align 8, !tbaa !59
  %317 = and i32 %316, 33554432
  %318 = icmp eq i32 %317, 0
  %319 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 16
  %320 = load i32, ptr %319, align 8, !tbaa !59
  %321 = and i32 %320, 33554432
  %322 = icmp eq i32 %321, 0
  br i1 %318, label %324, label %323

323:                                              ; preds = %315
  br i1 %322, label %325, label %328

324:                                              ; preds = %315
  br i1 %322, label %328, label %325

325:                                              ; preds = %324, %323
  %326 = phi ptr [ @str.134, %323 ], [ @str.135, %324 ]
  %327 = call i32 @puts(ptr nonnull dereferenceable(1) %326)
  br label %328

328:                                              ; preds = %325, %323, %324
  %329 = load i32, ptr %29, align 8, !tbaa !59
  %330 = and i32 %329, 67108864
  %331 = icmp eq i32 %330, 0
  %332 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 16
  %333 = load i32, ptr %332, align 8, !tbaa !59
  %334 = and i32 %333, 67108864
  %335 = icmp eq i32 %334, 0
  br i1 %331, label %337, label %336

336:                                              ; preds = %328
  br i1 %335, label %338, label %341

337:                                              ; preds = %328
  br i1 %335, label %341, label %338

338:                                              ; preds = %337, %336
  %339 = phi ptr [ @str.136, %336 ], [ @str.137, %337 ]
  %340 = call i32 @puts(ptr nonnull dereferenceable(1) %339)
  br label %341

341:                                              ; preds = %338, %336, %337
  %342 = load i32, ptr %29, align 8, !tbaa !59
  %343 = and i32 %342, 134217728
  %344 = icmp eq i32 %343, 0
  %345 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 16
  %346 = load i32, ptr %345, align 8, !tbaa !59
  %347 = and i32 %346, 134217728
  %348 = icmp eq i32 %347, 0
  br i1 %344, label %350, label %349

349:                                              ; preds = %341
  br i1 %348, label %351, label %354

350:                                              ; preds = %341
  br i1 %348, label %354, label %351

351:                                              ; preds = %350, %349
  %352 = phi ptr [ @str.138, %349 ], [ @str.139, %350 ]
  %353 = call i32 @puts(ptr nonnull dereferenceable(1) %352)
  br label %354

354:                                              ; preds = %351, %349, %350
  %355 = load i32, ptr %29, align 8, !tbaa !59
  %356 = and i32 %355, 268435456
  %357 = icmp eq i32 %356, 0
  %358 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 16
  %359 = load i32, ptr %358, align 8, !tbaa !59
  %360 = and i32 %359, 268435456
  %361 = icmp eq i32 %360, 0
  br i1 %357, label %363, label %362

362:                                              ; preds = %354
  br i1 %361, label %364, label %367

363:                                              ; preds = %354
  br i1 %361, label %367, label %364

364:                                              ; preds = %363, %362
  %365 = phi ptr [ @str.140, %362 ], [ @str.141, %363 ]
  %366 = call i32 @puts(ptr nonnull dereferenceable(1) %365)
  br label %367

367:                                              ; preds = %364, %362, %363
  %368 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 20
  %369 = load i32, ptr %368, align 8, !tbaa !67
  %370 = and i32 %369, 1
  %371 = icmp eq i32 %370, 0
  %372 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 20
  %373 = load i32, ptr %372, align 8, !tbaa !67
  %374 = and i32 %373, 1
  %375 = icmp eq i32 %374, 0
  br i1 %371, label %377, label %376

376:                                              ; preds = %367
  br i1 %375, label %378, label %381

377:                                              ; preds = %367
  br i1 %375, label %381, label %378

378:                                              ; preds = %377, %376
  %379 = phi ptr [ @str.142, %376 ], [ @str.143, %377 ]
  %380 = call i32 @puts(ptr nonnull dereferenceable(1) %379)
  br label %381

381:                                              ; preds = %378, %376, %377
  %382 = load i32, ptr %368, align 8, !tbaa !67
  %383 = and i32 %382, 2
  %384 = icmp eq i32 %383, 0
  %385 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 20
  %386 = load i32, ptr %385, align 8, !tbaa !67
  %387 = and i32 %386, 2
  %388 = icmp eq i32 %387, 0
  br i1 %384, label %390, label %389

389:                                              ; preds = %381
  br i1 %388, label %391, label %394

390:                                              ; preds = %381
  br i1 %388, label %394, label %391

391:                                              ; preds = %390, %389
  %392 = phi ptr [ @str.144, %389 ], [ @str.145, %390 ]
  %393 = call i32 @puts(ptr nonnull dereferenceable(1) %392)
  br label %394

394:                                              ; preds = %391, %389, %390
  %395 = load i32, ptr %368, align 8, !tbaa !67
  %396 = and i32 %395, 4
  %397 = icmp eq i32 %396, 0
  %398 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 20
  %399 = load i32, ptr %398, align 8, !tbaa !67
  %400 = and i32 %399, 4
  %401 = icmp eq i32 %400, 0
  br i1 %397, label %403, label %402

402:                                              ; preds = %394
  br i1 %401, label %404, label %407

403:                                              ; preds = %394
  br i1 %401, label %407, label %404

404:                                              ; preds = %403, %402
  %405 = phi ptr [ @str.146, %402 ], [ @str.147, %403 ]
  %406 = call i32 @puts(ptr nonnull dereferenceable(1) %405)
  br label %407

407:                                              ; preds = %404, %402, %403
  %408 = load i32, ptr %368, align 8, !tbaa !67
  %409 = and i32 %408, 8
  %410 = icmp eq i32 %409, 0
  %411 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 20
  %412 = load i32, ptr %411, align 8, !tbaa !67
  %413 = and i32 %412, 8
  %414 = icmp eq i32 %413, 0
  br i1 %410, label %416, label %415

415:                                              ; preds = %407
  br i1 %414, label %417, label %420

416:                                              ; preds = %407
  br i1 %414, label %420, label %417

417:                                              ; preds = %416, %415
  %418 = phi ptr [ @str.148, %415 ], [ @str.149, %416 ]
  %419 = call i32 @puts(ptr nonnull dereferenceable(1) %418)
  br label %420

420:                                              ; preds = %417, %415, %416
  %421 = load i32, ptr %368, align 8, !tbaa !67
  %422 = and i32 %421, 16
  %423 = icmp eq i32 %422, 0
  %424 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 20
  %425 = load i32, ptr %424, align 8, !tbaa !67
  %426 = and i32 %425, 16
  %427 = icmp eq i32 %426, 0
  br i1 %423, label %429, label %428

428:                                              ; preds = %420
  br i1 %427, label %430, label %433

429:                                              ; preds = %420
  br i1 %427, label %433, label %430

430:                                              ; preds = %429, %428
  %431 = phi ptr [ @str.150, %428 ], [ @str.151, %429 ]
  %432 = call i32 @puts(ptr nonnull dereferenceable(1) %431)
  br label %433

433:                                              ; preds = %430, %428, %429
  %434 = load i32, ptr %368, align 8, !tbaa !67
  %435 = and i32 %434, 32
  %436 = icmp eq i32 %435, 0
  %437 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 20
  %438 = load i32, ptr %437, align 8, !tbaa !67
  %439 = and i32 %438, 32
  %440 = icmp eq i32 %439, 0
  br i1 %436, label %442, label %441

441:                                              ; preds = %433
  br i1 %440, label %443, label %446

442:                                              ; preds = %433
  br i1 %440, label %446, label %443

443:                                              ; preds = %442, %441
  %444 = phi ptr [ @str.152, %441 ], [ @str.153, %442 ]
  %445 = call i32 @puts(ptr nonnull dereferenceable(1) %444)
  br label %446

446:                                              ; preds = %443, %441, %442
  %447 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 18
  %448 = load float, ptr %447, align 8, !tbaa !62
  %449 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 18
  %450 = load float, ptr %449, align 8, !tbaa !62
  %451 = fcmp une float %448, %450
  br i1 %451, label %452, label %455

452:                                              ; preds = %446
  %453 = fpext float %448 to double
  %454 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.67, double noundef %453) #15
  br label %455

455:                                              ; preds = %452, %446
  %456 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 21
  %457 = load i32, ptr %456, align 4, !tbaa !60
  %458 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 21
  %459 = load i32, ptr %458, align 4, !tbaa !60
  %460 = icmp eq i32 %457, %459
  br i1 %460, label %463, label %461

461:                                              ; preds = %455
  %462 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.68, i32 noundef %457) #15
  br label %463

463:                                              ; preds = %461, %455
  %464 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 22
  %465 = load i32, ptr %464, align 8, !tbaa !61
  %466 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 22
  %467 = load i32, ptr %466, align 8, !tbaa !61
  %468 = icmp eq i32 %465, %467
  br i1 %468, label %471, label %469

469:                                              ; preds = %463
  %470 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.69, i32 noundef %465) #15
  br label %471

471:                                              ; preds = %469, %463
  %472 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 23
  %473 = load float, ptr %472, align 4, !tbaa !110
  %474 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 23
  %475 = load float, ptr %474, align 4, !tbaa !110
  %476 = fcmp une float %473, %475
  br i1 %476, label %477, label %480

477:                                              ; preds = %471
  %478 = fpext float %473 to double
  %479 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.70, double noundef %478) #15
  br label %480

480:                                              ; preds = %477, %471
  %481 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 24
  %482 = load float, ptr %481, align 8, !tbaa !111
  %483 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 24
  %484 = load float, ptr %483, align 8, !tbaa !111
  %485 = fcmp une float %482, %484
  br i1 %485, label %486, label %489

486:                                              ; preds = %480
  %487 = fpext float %482 to double
  %488 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.71, double noundef %487) #15
  br label %489

489:                                              ; preds = %486, %480
  %490 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 26
  %491 = load float, ptr %490, align 8, !tbaa !112
  %492 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 26
  %493 = load float, ptr %492, align 8, !tbaa !112
  %494 = fcmp une float %491, %493
  br i1 %494, label %495, label %498

495:                                              ; preds = %489
  %496 = fpext float %491 to double
  %497 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.72, double noundef %496) #15
  br label %498

498:                                              ; preds = %495, %489
  %499 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 28
  %500 = load i32, ptr %499, align 8, !tbaa !53
  %501 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 28
  %502 = load i32, ptr %501, align 8, !tbaa !53
  %503 = icmp eq i32 %500, %502
  br i1 %503, label %506, label %504

504:                                              ; preds = %498
  %505 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.73, i32 noundef %500) #15
  br label %506

506:                                              ; preds = %504, %498
  %507 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 29
  %508 = load float, ptr %507, align 4, !tbaa !54
  %509 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 29
  %510 = load float, ptr %509, align 4, !tbaa !54
  %511 = fcmp une float %508, %510
  br i1 %511, label %512, label %515

512:                                              ; preds = %506
  %513 = fpext float %508 to double
  %514 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.74, double noundef %513) #15
  br label %515

515:                                              ; preds = %512, %506
  %516 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 38
  %517 = load float, ptr %516, align 4, !tbaa !113
  %518 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 38
  %519 = load float, ptr %518, align 4, !tbaa !113
  %520 = fcmp une float %517, %519
  br i1 %520, label %521, label %524

521:                                              ; preds = %515
  %522 = fpext float %517 to double
  %523 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, double noundef %522) #15
  br label %524

524:                                              ; preds = %521, %515
  %525 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 39
  %526 = load float, ptr %525, align 8, !tbaa !114
  %527 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 39
  %528 = load float, ptr %527, align 8, !tbaa !114
  %529 = fcmp une float %526, %528
  br i1 %529, label %530, label %533

530:                                              ; preds = %524
  %531 = fpext float %526 to double
  %532 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, double noundef %531) #15
  br label %533

533:                                              ; preds = %530, %524
  %534 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 40
  %535 = load float, ptr %534, align 4, !tbaa !55
  %536 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 40
  %537 = load float, ptr %536, align 4, !tbaa !55
  %538 = fcmp une float %535, %537
  br i1 %538, label %539, label %542

539:                                              ; preds = %533
  %540 = fpext float %535 to double
  %541 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, double noundef %540) #15
  br label %542

542:                                              ; preds = %539, %533
  %543 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 42
  %544 = load float, ptr %543, align 4, !tbaa !63
  %545 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 42
  %546 = load float, ptr %545, align 4, !tbaa !63
  %547 = fcmp une float %544, %546
  br i1 %547, label %548, label %551

548:                                              ; preds = %542
  %549 = fpext float %544 to double
  %550 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.78, double noundef %549) #15
  br label %551

551:                                              ; preds = %548, %542
  %552 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 43
  %553 = load i32, ptr %552, align 8, !tbaa !64
  %554 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 43
  %555 = load i32, ptr %554, align 8, !tbaa !64
  %556 = icmp eq i32 %553, %555
  br i1 %556, label %559, label %557

557:                                              ; preds = %551
  %558 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.79, i32 noundef %553) #15
  br label %559

559:                                              ; preds = %557, %551
  %560 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 51
  %561 = load float, ptr %560, align 8, !tbaa !52
  %562 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 51
  %563 = load float, ptr %562, align 8, !tbaa !52
  %564 = fcmp une float %561, %563
  br i1 %564, label %565, label %568

565:                                              ; preds = %559
  %566 = fpext float %561 to double
  %567 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %566) #15
  br label %568

568:                                              ; preds = %565, %559
  %569 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 51, i64 1
  %570 = load float, ptr %569, align 4, !tbaa !52
  %571 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 51, i64 1
  %572 = load float, ptr %571, align 4, !tbaa !52
  %573 = fcmp une float %570, %572
  br i1 %573, label %574, label %577

574:                                              ; preds = %568
  %575 = fpext float %570 to double
  %576 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.81, double noundef %575) #15
  br label %577

577:                                              ; preds = %574, %568
  %578 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 51, i64 2
  %579 = load float, ptr %578, align 8, !tbaa !52
  %580 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 51, i64 2
  %581 = load float, ptr %580, align 8, !tbaa !52
  %582 = fcmp une float %579, %581
  br i1 %582, label %583, label %586

583:                                              ; preds = %577
  %584 = fpext float %579 to double
  %585 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.82, double noundef %584) #15
  br label %586

586:                                              ; preds = %583, %577
  %587 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 52
  %588 = load float, ptr %587, align 4, !tbaa !52
  %589 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 52
  %590 = load float, ptr %589, align 4, !tbaa !52
  %591 = fcmp une float %588, %590
  br i1 %591, label %592, label %595

592:                                              ; preds = %586
  %593 = fpext float %588 to double
  %594 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.83, double noundef %593) #15
  br label %595

595:                                              ; preds = %592, %586
  %596 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 52, i64 1
  %597 = load float, ptr %596, align 4, !tbaa !52
  %598 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 52, i64 1
  %599 = load float, ptr %598, align 8, !tbaa !52
  %600 = fcmp une float %597, %599
  br i1 %600, label %601, label %604

601:                                              ; preds = %595
  %602 = fpext float %597 to double
  %603 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.84, double noundef %602) #15
  br label %604

604:                                              ; preds = %601, %595
  %605 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 52, i64 2
  %606 = load float, ptr %605, align 4, !tbaa !52
  %607 = getelementptr inbounds %struct.Brush, ptr %2, i64 0, i32 52, i64 2
  %608 = load float, ptr %607, align 4, !tbaa !52
  %609 = fcmp une float %606, %608
  br i1 %609, label %610, label %613

610:                                              ; preds = %604
  %611 = fpext float %606 to double
  %612 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.85, double noundef %611) #15
  br label %613

613:                                              ; preds = %610, %604
  %614 = call i32 @putchar(i32 10)
  call void @llvm.lifetime.end.p0(i64 2056, ptr nonnull %2) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_brush_sculpt_reset(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @brush_defaults(ptr noundef %0) #15
  tail call void @BKE_brush_curve_preset(ptr noundef %0, i32 noundef 2) #15
  %2 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 34
  %3 = load i8, ptr %2, align 8, !tbaa !46
  switch i8 %3, label %47 [
    i8 8, label %4
    i8 16, label %8
    i8 9, label %13
    i8 7, label %16
    i8 4, label %19
    i8 11, label %22
    i8 3, label %25
    i8 10, label %28
    i8 14, label %31
    i8 2, label %33
    i8 5, label %40
    i8 13, label %40
    i8 12, label %40
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 16
  %6 = load i32, ptr %5, align 8, !tbaa !59
  %7 = or i32 %6, 134217728
  store i32 %7, ptr %5, align 8, !tbaa !59
  br label %47

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 16
  %10 = load i32, ptr %9, align 8, !tbaa !59
  %11 = or i32 %10, 512
  store i32 %11, ptr %9, align 8, !tbaa !59
  %12 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 26
  store float 2.500000e-01, ptr %12, align 8, !tbaa !112
  br label %47

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 51, i64 1
  store float 1.000000e+00, ptr %14, align 4, !tbaa !52
  %15 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 52
  store <2 x float> <float 2.500000e-01, float 1.000000e+00>, ptr %15, align 4, !tbaa !52
  br label %47

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 51, i64 1
  store float 1.000000e+00, ptr %17, align 4, !tbaa !52
  %18 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 52
  store <2 x float> <float 2.500000e-01, float 1.000000e+00>, ptr %18, align 4, !tbaa !52
  br label %47

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 51
  store <4 x float> <float 7.500000e-01, float 7.500000e-01, float 7.500000e-01, float 2.500000e-01>, ptr %20, align 8, !tbaa !52
  %21 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 52, i64 1
  store <2 x float> <float 2.500000e-01, float 2.500000e-01>, ptr %21, align 4, !tbaa !52
  br label %47

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 51
  store <2 x float> <float 2.500000e-01, float 1.000000e+00>, ptr %23, align 8, !tbaa !52
  %24 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 51, i64 2
  store float 2.500000e-01, ptr %24, align 8, !tbaa !52
  br label %47

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 51
  store <4 x float> <float 7.500000e-01, float 7.500000e-01, float 7.500000e-01, float 2.500000e-01>, ptr %26, align 8, !tbaa !52
  %27 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 52, i64 1
  store <2 x float> <float 2.500000e-01, float 2.500000e-01>, ptr %27, align 4, !tbaa !52
  br label %47

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 51, i64 1
  store float 1.000000e+00, ptr %29, align 4, !tbaa !52
  %30 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 52
  store <2 x float> <float 2.500000e-01, float 1.000000e+00>, ptr %30, align 4, !tbaa !52
  br label %47

31:                                               ; preds = %1
  %32 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 26
  store float 1.000000e+00, ptr %32, align 8, !tbaa !112
  br label %47

33:                                               ; preds = %1
  %34 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 16
  %35 = load i32, ptr %34, align 8, !tbaa !59
  %36 = and i32 %35, -262145
  store i32 %36, ptr %34, align 8, !tbaa !59
  %37 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 21
  store i32 5, ptr %37, align 4, !tbaa !60
  %38 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 51
  store <2 x float> <float 7.500000e-01, float 7.500000e-01>, ptr %38, align 8, !tbaa !52
  %39 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 51, i64 2
  store float 7.500000e-01, ptr %39, align 8, !tbaa !52
  br label %47

40:                                               ; preds = %1, %1, %1
  %41 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 15
  store i32 75, ptr %41, align 4, !tbaa !51
  %42 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 16
  %43 = load i32, ptr %42, align 8, !tbaa !59
  %44 = and i32 %43, -263173
  store i32 %44, ptr %42, align 8, !tbaa !59
  %45 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 51
  store <2 x float> <float 2.500000e-01, float 1.000000e+00>, ptr %45, align 8, !tbaa !52
  %46 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 51, i64 2
  store float 2.500000e-01, ptr %46, align 8, !tbaa !52
  br label %47

47:                                               ; preds = %1, %40, %33, %31, %28, %25, %22, %19, %16, %13, %8, %4
  ret void
}

; Function Attrs: optsize
declare ptr @curvemapping_add(i32 noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @curvemap_reset(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @curvemapping_changed(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @BKE_brush_texture_set_nr(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 3, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = load ptr, ptr @G, align 8, !tbaa !81
  %6 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 18
  %7 = add nsw i32 %1, -1
  %8 = tail call ptr @BLI_findlink(ptr noundef nonnull %6, i32 noundef %7) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = icmp eq ptr %4, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %10
  %13 = tail call ptr @BKE_texture_copy(ptr noundef nonnull %4) #14
  br label %17

14:                                               ; preds = %10
  %15 = load ptr, ptr @G, align 8, !tbaa !81
  %16 = tail call ptr @add_texture(ptr noundef %15, ptr noundef nonnull @.str.87) #14
  br label %17

17:                                               ; preds = %14, %12
  %18 = phi ptr [ %13, %12 ], [ %16, %14 ]
  %19 = getelementptr inbounds %struct.ID, ptr %18, i64 0, i32 6
  %20 = load i32, ptr %19, align 4, !tbaa !115
  %21 = add nsw i32 %20, -1
  store i32 %21, ptr %19, align 4, !tbaa !115
  br label %22

22:                                               ; preds = %17, %2
  %23 = phi ptr [ %18, %17 ], [ %8, %2 ]
  %24 = icmp eq ptr %23, %4
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @BKE_brush_texture_delete(ptr noundef nonnull %0) #15
  store ptr %23, ptr %3, align 8, !tbaa !74
  tail call void @id_us_plus(ptr noundef nonnull %23) #14
  br label %27

27:                                               ; preds = %22, %25
  %28 = phi i32 [ 1, %25 ], [ 0, %22 ]
  ret i32 %28
}

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_texture_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @add_texture(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @BKE_brush_texture_delete(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 3, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !74
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !116
  %8 = add nsw i32 %7, -1
  store i32 %8, ptr %6, align 4, !tbaa !116
  br label %9

9:                                                ; preds = %5, %1
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @BKE_brush_clone_image_set_nr(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp sgt i32 %1, 0
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = load ptr, ptr @G, align 8, !tbaa !81
  %8 = getelementptr inbounds %struct.Main, ptr %7, i64 0, i32 19
  %9 = add nsw i32 %1, -1
  %10 = tail call ptr @BLI_findlink(ptr noundef nonnull %8, i32 noundef %9) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %6
  %13 = tail call i32 @BKE_brush_clone_image_delete(ptr noundef nonnull %0) #15, !range !119
  %14 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 1
  store ptr %10, ptr %14, align 8, !tbaa !85
  tail call void @id_us_plus(ptr noundef nonnull %10) #14
  %15 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 1, i32 1
  store <2 x float> zeroinitializer, ptr %15, align 8, !tbaa !52
  br label %16

16:                                               ; preds = %6, %2, %12
  %17 = phi i32 [ 1, %12 ], [ 0, %2 ], [ 0, %6 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @BKE_brush_clone_image_delete(ptr noundef %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !85
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !120
  %10 = add nsw i32 %9, -1
  store i32 %10, ptr %8, align 4, !tbaa !120
  store ptr null, ptr %4, align 8, !tbaa !85
  br label %11

11:                                               ; preds = %1, %3, %7
  %12 = phi i32 [ 1, %7 ], [ 0, %3 ], [ 0, %1 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @BKE_brush_sample_tex_3D(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca float, align 4
  %8 = alloca [3 x float], align 8
  %9 = alloca [3 x float], align 8
  %10 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !86
  %12 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store float 1.000000e+00, ptr %7, align 4, !tbaa !52
  %13 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 3, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !122
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 42
  %18 = load float, ptr %17, align 4, !tbaa !63
  %19 = fadd float %18, 1.000000e+00
  br label %145

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 3, i32 20
  %22 = load i8, ptr %21, align 4, !tbaa !123
  switch i8 %22, label %76 [
    i8 2, label %23
    i8 5, label %28
  ]

23:                                               ; preds = %20
  %24 = getelementptr inbounds float, ptr %3, i64 1
  %25 = getelementptr inbounds float, ptr %3, i64 2
  %26 = getelementptr inbounds float, ptr %3, i64 3
  %27 = call i32 @externtex(ptr noundef nonnull %12, ptr noundef %2, ptr noundef nonnull %7, ptr noundef %3, ptr noundef nonnull %24, ptr noundef nonnull %25, ptr noundef nonnull %26, i32 noundef %4, ptr noundef %5) #14
  br label %137

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 3, i32 13
  %30 = load float, ptr %29, align 4, !tbaa !124
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #16
  %31 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 53
  %32 = load <2 x float>, ptr %2, align 4, !tbaa !52
  %33 = load <2 x float>, ptr %31, align 8, !tbaa !52
  %34 = fsub <2 x float> %32, %33
  %35 = fcmp olt float %30, 0xBF50624DE0000000
  %36 = fcmp ogt float %30, 0x3F50624DE0000000
  %37 = or i1 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %28
  %39 = extractelement <2 x float> %34, i64 0
  %40 = extractelement <2 x float> %34, i64 1
  %41 = tail call float @atan2f(float noundef %40, float noundef %39) #14
  %42 = fsub float %41, %30
  %43 = fmul float %40, %40
  %44 = tail call float @llvm.fmuladd.f32(float %39, float %39, float %43)
  %45 = tail call float @llvm.sqrt.f32(float %44)
  %46 = tail call float @cosf(float noundef %42) #14
  %47 = tail call float @sinf(float noundef %42) #14
  %48 = insertelement <2 x float> poison, float %45, i64 0
  %49 = shufflevector <2 x float> %48, <2 x float> poison, <2 x i32> zeroinitializer
  %50 = insertelement <2 x float> poison, float %46, i64 0
  %51 = insertelement <2 x float> %50, float %47, i64 1
  %52 = fmul <2 x float> %49, %51
  br label %53

53:                                               ; preds = %28, %38
  %54 = phi <2 x float> [ %52, %38 ], [ %34, %28 ]
  %55 = extractelement <2 x float> %54, i64 0
  %56 = tail call float @llvm.fabs.f32(float %55)
  %57 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 54
  %58 = load float, ptr %57, align 8, !tbaa !52
  %59 = fcmp ogt float %56, %58
  br i1 %59, label %75, label %60

60:                                               ; preds = %53
  %61 = extractelement <2 x float> %54, i64 1
  %62 = tail call float @llvm.fabs.f32(float %61)
  %63 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 54, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !52
  %65 = fcmp ogt float %62, %64
  br i1 %65, label %75, label %66

66:                                               ; preds = %60
  %67 = insertelement <2 x float> poison, float %58, i64 0
  %68 = insertelement <2 x float> %67, float %64, i64 1
  %69 = fdiv <2 x float> %54, %68
  store <2 x float> %69, ptr %8, align 8, !tbaa !52
  %70 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  store float 0.000000e+00, ptr %70, align 8, !tbaa !52
  %71 = getelementptr inbounds float, ptr %3, i64 1
  %72 = getelementptr inbounds float, ptr %3, i64 2
  %73 = getelementptr inbounds float, ptr %3, i64 3
  %74 = call i32 @externtex(ptr noundef nonnull %12, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef %3, ptr noundef nonnull %71, ptr noundef nonnull %72, ptr noundef nonnull %73, i32 noundef %4, ptr noundef %5) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #16
  br label %137

75:                                               ; preds = %53, %60
  tail call fastcc void @zero_v4(ptr noundef %3) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #16
  br label %158

76:                                               ; preds = %20
  %77 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 3, i32 13
  %78 = load float, ptr %77, align 4, !tbaa !124
  %79 = fneg float %78
  %80 = load <2 x float>, ptr %2, align 4, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #16
  switch i8 %22, label %105 [
    i8 0, label %81
    i8 1, label %91
    i8 4, label %95
  ]

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 73, i32 8
  %83 = load float, ptr %82, align 4, !tbaa !125
  %84 = fsub float %83, %78
  %85 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 73, i32 17
  %86 = load <2 x float>, ptr %85, align 4, !tbaa !52
  %87 = fsub <2 x float> %80, %86
  %88 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 73, i32 21
  %89 = load float, ptr %88, align 8, !tbaa !127
  %90 = fdiv float 1.000000e+00, %89
  br label %105

91:                                               ; preds = %76
  %92 = tail call i32 @BKE_brush_size_get(ptr noundef nonnull %0, ptr noundef nonnull %1) #15
  %93 = sitofp i32 %92 to float
  %94 = fdiv float 1.000000e+00, %93
  br label %105

95:                                               ; preds = %76
  %96 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 73, i32 8
  %97 = load float, ptr %96, align 4, !tbaa !125
  %98 = fsub float %97, %78
  %99 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 73, i32 17
  %100 = load <2 x float>, ptr %99, align 4, !tbaa !52
  %101 = fsub <2 x float> %80, %100
  %102 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 73, i32 21
  %103 = load float, ptr %102, align 8, !tbaa !127
  %104 = fdiv float 1.000000e+00, %103
  br label %105

105:                                              ; preds = %76, %91, %95, %81
  %106 = phi float [ %84, %81 ], [ %79, %91 ], [ %98, %95 ], [ %79, %76 ]
  %107 = phi float [ %90, %81 ], [ %94, %91 ], [ %104, %95 ], [ 1.000000e+00, %76 ]
  %108 = phi <2 x float> [ %87, %81 ], [ %80, %91 ], [ %101, %95 ], [ zeroinitializer, %76 ]
  %109 = insertelement <2 x float> poison, float %107, i64 0
  %110 = shufflevector <2 x float> %109, <2 x float> poison, <2 x i32> zeroinitializer
  %111 = fmul <2 x float> %108, %110
  %112 = fcmp ogt float %106, 0x3F50624DE0000000
  %113 = fcmp olt float %106, 0xBF50624DE0000000
  %114 = or i1 %112, %113
  br i1 %114, label %115, label %130

115:                                              ; preds = %105
  %116 = extractelement <2 x float> %111, i64 0
  %117 = extractelement <2 x float> %111, i64 1
  %118 = tail call float @atan2f(float noundef %117, float noundef %116) #14
  %119 = fadd float %106, %118
  %120 = fmul float %117, %117
  %121 = tail call float @llvm.fmuladd.f32(float %116, float %116, float %120)
  %122 = tail call float @llvm.sqrt.f32(float %121)
  %123 = tail call float @cosf(float noundef %119) #14
  %124 = tail call float @sinf(float noundef %119) #14
  %125 = insertelement <2 x float> poison, float %122, i64 0
  %126 = shufflevector <2 x float> %125, <2 x float> poison, <2 x i32> zeroinitializer
  %127 = insertelement <2 x float> poison, float %123, i64 0
  %128 = insertelement <2 x float> %127, float %124, i64 1
  %129 = fmul <2 x float> %126, %128
  br label %130

130:                                              ; preds = %105, %115
  %131 = phi <2 x float> [ %129, %115 ], [ %111, %105 ]
  store <2 x float> %131, ptr %9, align 8, !tbaa !52
  %132 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  store float 0.000000e+00, ptr %132, align 8, !tbaa !52
  %133 = getelementptr inbounds float, ptr %3, i64 1
  %134 = getelementptr inbounds float, ptr %3, i64 2
  %135 = getelementptr inbounds float, ptr %3, i64 3
  %136 = call i32 @externtex(ptr noundef nonnull %12, ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef %3, ptr noundef nonnull %133, ptr noundef nonnull %134, ptr noundef nonnull %135, i32 noundef %4, ptr noundef %5) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #16
  br label %137

137:                                              ; preds = %66, %23, %130
  %138 = phi i32 [ %27, %23 ], [ %136, %130 ], [ %74, %66 ]
  %139 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 42
  %140 = load float, ptr %139, align 4, !tbaa !63
  %141 = load float, ptr %7, align 4, !tbaa !52
  %142 = fadd float %140, %141
  store float %142, ptr %7, align 4, !tbaa !52
  %143 = and i32 %138, 255
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %16, %137
  %146 = phi float [ %19, %16 ], [ %142, %137 ]
  store float %146, ptr %3, align 4, !tbaa !52
  %147 = getelementptr inbounds float, ptr %3, i64 1
  store float %146, ptr %147, align 4, !tbaa !52
  %148 = getelementptr inbounds float, ptr %3, i64 2
  store float %146, ptr %148, align 4, !tbaa !52
  %149 = getelementptr inbounds float, ptr %3, i64 3
  store float 1.000000e+00, ptr %149, align 4, !tbaa !52
  br label %158

150:                                              ; preds = %137
  %151 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 73, i32 19
  %152 = load i32, ptr %151, align 4, !tbaa !128
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 73, i32 20
  %156 = load ptr, ptr %155, align 8, !tbaa !129
  call void @IMB_colormanagement_colorspace_to_scene_linear_v3(ptr noundef %3, ptr noundef %156) #14
  %157 = load float, ptr %7, align 4, !tbaa !52
  br label %158

158:                                              ; preds = %145, %154, %150, %75
  %159 = phi float [ 0.000000e+00, %75 ], [ %142, %150 ], [ %157, %154 ], [ %146, %145 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  ret float %159
}

; Function Attrs: optsize
declare i32 @externtex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v4(ptr nocapture noundef writeonly %0) unnamed_addr #8 !PGOFuncName !130 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_brush_size_get(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !86
  %5 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 73, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !131
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 73
  %10 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 15
  %11 = select i1 %8, ptr %10, ptr %9
  %12 = load i32, ptr %11, align 4, !tbaa !132
  %13 = sitofp i32 %12 to float
  %14 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !133
  %15 = fmul float %14, %13
  %16 = fptosi float %15 to i32
  ret i32 %16
}

; Function Attrs: optsize
declare void @IMB_colormanagement_colorspace_to_scene_linear_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @BKE_brush_sample_masktex(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [4 x float], align 16
  %7 = alloca float, align 4
  %8 = alloca [3 x float], align 8
  %9 = alloca [3 x float], align 8
  %10 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !86
  %12 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  %13 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 4, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !122
  %15 = icmp eq ptr %14, null
  br i1 %15, label %148, label %16

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 4, i32 20
  %18 = load i8, ptr %17, align 4, !tbaa !123
  %19 = icmp eq i8 %18, 5
  %20 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 4, i32 13
  %21 = load float, ptr %20, align 4, !tbaa !124
  br i1 %19, label %22, label %68

22:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #16
  %23 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 55
  %24 = load <2 x float>, ptr %2, align 4, !tbaa !52
  %25 = load <2 x float>, ptr %23, align 8, !tbaa !52
  %26 = fsub <2 x float> %24, %25
  %27 = fcmp olt float %21, 0xBF50624DE0000000
  %28 = fcmp ogt float %21, 0x3F50624DE0000000
  %29 = or i1 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %22
  %31 = extractelement <2 x float> %26, i64 0
  %32 = extractelement <2 x float> %26, i64 1
  %33 = tail call float @atan2f(float noundef %32, float noundef %31) #14
  %34 = fsub float %33, %21
  %35 = fmul float %32, %32
  %36 = tail call float @llvm.fmuladd.f32(float %31, float %31, float %35)
  %37 = tail call float @llvm.sqrt.f32(float %36)
  %38 = tail call float @cosf(float noundef %34) #14
  %39 = tail call float @sinf(float noundef %34) #14
  %40 = insertelement <2 x float> poison, float %37, i64 0
  %41 = shufflevector <2 x float> %40, <2 x float> poison, <2 x i32> zeroinitializer
  %42 = insertelement <2 x float> poison, float %38, i64 0
  %43 = insertelement <2 x float> %42, float %39, i64 1
  %44 = fmul <2 x float> %41, %43
  br label %45

45:                                               ; preds = %22, %30
  %46 = phi <2 x float> [ %44, %30 ], [ %26, %22 ]
  %47 = extractelement <2 x float> %46, i64 0
  %48 = tail call float @llvm.fabs.f32(float %47)
  %49 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 56
  %50 = load float, ptr %49, align 8, !tbaa !52
  %51 = fcmp ogt float %48, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %45
  %53 = extractelement <2 x float> %46, i64 1
  %54 = tail call float @llvm.fabs.f32(float %53)
  %55 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 56, i64 1
  %56 = load float, ptr %55, align 4, !tbaa !52
  %57 = fcmp ogt float %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52, %45
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #16
  br label %148

59:                                               ; preds = %52
  %60 = insertelement <2 x float> poison, float %50, i64 0
  %61 = insertelement <2 x float> %60, float %56, i64 1
  %62 = fdiv <2 x float> %46, %61
  store <2 x float> %62, ptr %8, align 8, !tbaa !52
  %63 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  store float 0.000000e+00, ptr %63, align 8, !tbaa !52
  %64 = getelementptr inbounds float, ptr %6, i64 1
  %65 = getelementptr inbounds float, ptr %6, i64 2
  %66 = getelementptr inbounds float, ptr %6, i64 3
  %67 = call i32 @externtex(ptr noundef nonnull %12, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %64, ptr noundef nonnull %65, ptr noundef nonnull %66, i32 noundef %3, ptr noundef %4) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #16
  br label %127

68:                                               ; preds = %16
  %69 = fneg float %21
  %70 = load <2 x float>, ptr %2, align 4, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #16
  switch i8 %18, label %95 [
    i8 0, label %71
    i8 1, label %81
    i8 4, label %85
  ]

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 73, i32 8
  %73 = load float, ptr %72, align 4, !tbaa !125
  %74 = fsub float %73, %21
  %75 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 73, i32 18
  %76 = load <2 x float>, ptr %75, align 4, !tbaa !52
  %77 = fsub <2 x float> %70, %76
  %78 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 73, i32 21
  %79 = load float, ptr %78, align 8, !tbaa !127
  %80 = fdiv float 1.000000e+00, %79
  br label %95

81:                                               ; preds = %68
  %82 = tail call i32 @BKE_brush_size_get(ptr noundef nonnull %0, ptr noundef nonnull %1) #15
  %83 = sitofp i32 %82 to float
  %84 = fdiv float 1.000000e+00, %83
  br label %95

85:                                               ; preds = %68
  %86 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 73, i32 8
  %87 = load float, ptr %86, align 4, !tbaa !125
  %88 = fsub float %87, %21
  %89 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 73, i32 18
  %90 = load <2 x float>, ptr %89, align 4, !tbaa !52
  %91 = fsub <2 x float> %70, %90
  %92 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 73, i32 21
  %93 = load float, ptr %92, align 8, !tbaa !127
  %94 = fdiv float 1.000000e+00, %93
  br label %95

95:                                               ; preds = %68, %81, %85, %71
  %96 = phi float [ %74, %71 ], [ %69, %81 ], [ %88, %85 ], [ %69, %68 ]
  %97 = phi float [ %80, %71 ], [ %84, %81 ], [ %94, %85 ], [ 1.000000e+00, %68 ]
  %98 = phi <2 x float> [ %77, %71 ], [ %70, %81 ], [ %91, %85 ], [ zeroinitializer, %68 ]
  %99 = insertelement <2 x float> poison, float %97, i64 0
  %100 = shufflevector <2 x float> %99, <2 x float> poison, <2 x i32> zeroinitializer
  %101 = fmul <2 x float> %98, %100
  %102 = fcmp ogt float %96, 0x3F50624DE0000000
  %103 = fcmp olt float %96, 0xBF50624DE0000000
  %104 = or i1 %102, %103
  br i1 %104, label %105, label %120

105:                                              ; preds = %95
  %106 = extractelement <2 x float> %101, i64 0
  %107 = extractelement <2 x float> %101, i64 1
  %108 = tail call float @atan2f(float noundef %107, float noundef %106) #14
  %109 = fadd float %96, %108
  %110 = fmul float %107, %107
  %111 = tail call float @llvm.fmuladd.f32(float %106, float %106, float %110)
  %112 = tail call float @llvm.sqrt.f32(float %111)
  %113 = tail call float @cosf(float noundef %109) #14
  %114 = tail call float @sinf(float noundef %109) #14
  %115 = insertelement <2 x float> poison, float %112, i64 0
  %116 = shufflevector <2 x float> %115, <2 x float> poison, <2 x i32> zeroinitializer
  %117 = insertelement <2 x float> poison, float %113, i64 0
  %118 = insertelement <2 x float> %117, float %114, i64 1
  %119 = fmul <2 x float> %116, %118
  br label %120

120:                                              ; preds = %95, %105
  %121 = phi <2 x float> [ %119, %105 ], [ %101, %95 ]
  store <2 x float> %121, ptr %9, align 8, !tbaa !52
  %122 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  store float 0.000000e+00, ptr %122, align 8, !tbaa !52
  %123 = getelementptr inbounds float, ptr %6, i64 1
  %124 = getelementptr inbounds float, ptr %6, i64 2
  %125 = getelementptr inbounds float, ptr %6, i64 3
  %126 = call i32 @externtex(ptr noundef nonnull %12, ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %123, ptr noundef nonnull %124, ptr noundef nonnull %125, i32 noundef %3, ptr noundef %4) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #16
  br label %127

127:                                              ; preds = %59, %120
  %128 = load float, ptr %7, align 4, !tbaa !52
  %129 = fcmp olt float %128, 0.000000e+00
  br i1 %129, label %133, label %130

130:                                              ; preds = %127
  %131 = fcmp ogt float %128, 1.000000e+00
  br i1 %131, label %132, label %133

132:                                              ; preds = %130
  br label %133

133:                                              ; preds = %127, %130, %132
  %134 = phi float [ %128, %130 ], [ 1.000000e+00, %132 ], [ 0.000000e+00, %127 ]
  %135 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 17
  %136 = load i32, ptr %135, align 4, !tbaa !137
  switch i32 %136, label %148 [
    i32 4, label %137
    i32 2, label %143
  ]

137:                                              ; preds = %133
  %138 = fsub float 1.000000e+00, %134
  %139 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 73, i32 16
  %140 = load float, ptr %139, align 8, !tbaa !138
  %141 = fcmp olt float %138, %140
  %142 = select i1 %141, float 1.000000e+00, float 0.000000e+00
  br label %148

143:                                              ; preds = %133
  %144 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 73, i32 16
  %145 = load float, ptr %144, align 8, !tbaa !138
  %146 = fsub float 1.000000e+00, %145
  %147 = call float @llvm.fmuladd.f32(float %134, float %146, float %145)
  br label %148

148:                                              ; preds = %137, %143, %133, %58, %5
  %149 = phi float [ 1.000000e+00, %5 ], [ 0.000000e+00, %58 ], [ %134, %133 ], [ %147, %143 ], [ %142, %137 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  ret float %149
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local nonnull ptr @BKE_brush_color_get(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !86
  %5 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 73, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !131
  %7 = and i32 %6, 64
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 73, i32 4
  %10 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 25
  %11 = select i1 %8, ptr %10, ptr %9
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local nonnull ptr @BKE_brush_secondary_color_get(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !86
  %5 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 73, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !131
  %7 = and i32 %6, 64
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 73, i32 5
  %10 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 27
  %11 = select i1 %8, ptr %10, ptr %9
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_brush_color_set(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !86
  %6 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 73, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !131
  %8 = and i32 %7, 64
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 25
  %11 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 73, i32 4
  %12 = select i1 %9, ptr %10, ptr %11
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %12, ptr noundef %2) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !139 {
  %3 = load float, ptr %1, align 4, !tbaa !52
  store float %3, ptr %0, align 4, !tbaa !52
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !52
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !52
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !52
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_brush_size_set(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !86
  %6 = sitofp i32 %2 to float
  %7 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !133
  %8 = fdiv float %6, %7
  %9 = fptosi float %8 to i32
  %10 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 73, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !131
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 73
  store i32 %9, ptr %15, align 8, !tbaa !140
  br label %18

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 15
  store i32 %9, ptr %17, align 4, !tbaa !51
  br label %18

18:                                               ; preds = %16, %14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_brush_use_locked_size(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !86
  %5 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 73, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !141
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = and i32 %6, 4
  br label %15

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 16
  %13 = load i32, ptr %12, align 8, !tbaa !59
  %14 = and i32 %13, 1048576
  br label %15

15:                                               ; preds = %11, %9
  %16 = phi i32 [ %10, %9 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_brush_use_size_pressure(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !86
  %5 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 73, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !141
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 16
  %11 = load i32, ptr %10, align 8, !tbaa !59
  br label %12

12:                                               ; preds = %2, %9
  %13 = phi i32 [ %11, %9 ], [ %6, %2 ]
  %14 = and i32 %13, 8
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_brush_use_alpha_pressure(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !86
  %5 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 73, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !141
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = and i32 %6, 16
  br label %15

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 16
  %13 = load i32, ptr %12, align 8, !tbaa !59
  %14 = and i32 %13, 4
  br label %15

15:                                               ; preds = %11, %9
  %16 = phi i32 [ %10, %9 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_brush_unprojected_radius_set(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, float noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !86
  %6 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 73, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !131
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 46
  %11 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 73, i32 1
  %12 = select i1 %9, ptr %10, ptr %11
  store float %2, ptr %12, align 4, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BKE_brush_unprojected_radius_get(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !86
  %5 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 73, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !131
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 73, i32 1
  %10 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 46
  %11 = select i1 %8, ptr %10, ptr %9
  %12 = load float, ptr %11, align 4, !tbaa !52
  ret float %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_brush_alpha_set(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, float noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !86
  %6 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 73, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !131
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 26
  %11 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 73, i32 2
  %12 = select i1 %9, ptr %10, ptr %11
  store float %2, ptr %12, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BKE_brush_alpha_get(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !86
  %5 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 73, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !131
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 73, i32 2
  %10 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 26
  %11 = select i1 %8, ptr %10, ptr %9
  %12 = load float, ptr %11, align 8, !tbaa !52
  ret float %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BKE_brush_weight_get(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !86
  %5 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 73, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !131
  %7 = and i32 %6, 32
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 73, i32 3
  %10 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 14
  %11 = select i1 %8, ptr %10, ptr %9
  %12 = load float, ptr %11, align 4, !tbaa !52
  ret float %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_brush_weight_set(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, float noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !86
  %6 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 73, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !131
  %8 = and i32 %7, 32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 73, i32 3
  store float %2, ptr %11, align 4, !tbaa !147
  br label %14

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 14
  store float %2, ptr %13, align 8, !tbaa !50
  br label %14

14:                                               ; preds = %12, %10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_brush_scale_unprojected_radius(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 {
  %4 = sitofp i32 %1 to float
  %5 = icmp eq i32 %2, 0
  %6 = sitofp i32 %2 to float
  %7 = select i1 %5, float 1.000000e+00, float %6
  %8 = fdiv float %4, %7
  %9 = load float, ptr %0, align 4, !tbaa !52
  %10 = fmul float %8, %9
  store float %10, ptr %0, align 4, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_brush_scale_size(ptr nocapture noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #10 {
  %4 = fcmp une float %2, 0.000000e+00
  %5 = select i1 %4, float %1, float 1.000000e+00
  %6 = fdiv float %1, %5
  %7 = load i32, ptr %0, align 4, !tbaa !132
  %8 = sitofp i32 %7 to float
  %9 = fmul float %6, %8
  %10 = fptosi float %9 to i32
  store i32 %10, ptr %0, align 4, !tbaa !132
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_brush_jitter_pos(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca [2 x float], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  br label %6

6:                                                ; preds = %6, %4
  %7 = load ptr, ptr @brush_rng, align 8, !tbaa !34
  %8 = tail call float @BLI_rng_get_float(ptr noundef %7) #14
  %9 = load ptr, ptr @brush_rng, align 8, !tbaa !34
  %10 = tail call float @BLI_rng_get_float(ptr noundef %9) #14
  %11 = insertelement <2 x float> poison, float %8, i64 0
  %12 = insertelement <2 x float> %11, float %10, i64 1
  %13 = fadd <2 x float> %12, <float -5.000000e-01, float -5.000000e-01>
  store <2 x float> %13, ptr %5, align 8, !tbaa !52
  %14 = call fastcc float @len_squared_v2(ptr noundef nonnull %5) #15
  %15 = fcmp ogt float %14, 2.500000e-01
  br i1 %15, label %6, label %16, !llvm.loop !148

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 16
  %18 = load i32, ptr %17, align 8, !tbaa !59
  %19 = and i32 %18, 1073741824
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 19
  %23 = load i32, ptr %22, align 4, !tbaa !149
  br label %28

24:                                               ; preds = %16
  %25 = tail call i32 @BKE_brush_size_get(ptr noundef %0, ptr noundef nonnull %1) #15
  %26 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 18
  %27 = load float, ptr %26, align 8, !tbaa !62
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi float [ 1.000000e+00, %21 ], [ %27, %24 ]
  %30 = phi i32 [ %23, %21 ], [ %25, %24 ]
  %31 = shl nsw i32 %30, 1
  %32 = load float, ptr %2, align 4, !tbaa !52
  %33 = extractelement <2 x float> %13, i64 0
  %34 = fmul float %33, 2.000000e+00
  %35 = sitofp i32 %31 to float
  %36 = fmul float %34, %35
  %37 = tail call float @llvm.fmuladd.f32(float %36, float %29, float %32)
  store float %37, ptr %3, align 4, !tbaa !52
  %38 = getelementptr inbounds float, ptr %2, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !52
  %40 = extractelement <2 x float> %13, i64 1
  %41 = fmul float %40, 2.000000e+00
  %42 = fmul float %41, %35
  %43 = tail call float @llvm.fmuladd.f32(float %42, float %29, float %39)
  %44 = getelementptr inbounds float, ptr %3, i64 1
  store float %43, ptr %44, align 4, !tbaa !52
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret void
}

; Function Attrs: optsize
declare float @BLI_rng_get_float(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_squared_v2(ptr nocapture noundef readonly %0) unnamed_addr #11 !PGOFuncName !150 {
  %2 = load float, ptr %0, align 4, !tbaa !52
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !52
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  ret float %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_brush_randomize_texture_coordinates(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq i8 %1, 0
  %4 = load ptr, ptr @brush_rng, align 8, !tbaa !34
  %5 = tail call float @BLI_rng_get_float(ptr noundef %4) #14
  %6 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 21
  %7 = load float, ptr %6, align 8, !tbaa !127
  %8 = fmul float %5, %7
  br i1 %3, label %16, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 18
  store float %8, ptr %10, align 4, !tbaa !52
  %11 = load ptr, ptr @brush_rng, align 8, !tbaa !34
  %12 = tail call float @BLI_rng_get_float(ptr noundef %11) #14
  %13 = load float, ptr %6, align 8, !tbaa !127
  %14 = fmul float %12, %13
  %15 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 18, i64 1
  store float %14, ptr %15, align 4, !tbaa !52
  br label %23

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 17
  store float %8, ptr %17, align 4, !tbaa !52
  %18 = load ptr, ptr @brush_rng, align 8, !tbaa !34
  %19 = tail call float @BLI_rng_get_float(ptr noundef %18) #14
  %20 = load float, ptr %6, align 8, !tbaa !127
  %21 = fmul float %19, %20
  %22 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 17, i64 1
  store float %21, ptr %22, align 4, !tbaa !52
  br label %23

23:                                               ; preds = %16, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @BKE_brush_curve_strength_clamp(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = fcmp ult float %1, %2
  br i1 %4, label %5, label %14

5:                                                ; preds = %3
  %6 = fdiv float %1, %2
  %7 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !68
  %9 = tail call float @curvemapping_evaluateF(ptr noundef %8, i32 noundef 0, float noundef %6) #14
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

; Function Attrs: optsize
declare float @curvemapping_evaluateF(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @BKE_brush_curve_strength(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = fcmp ult float %1, %2
  %5 = fdiv float %1, %2
  %6 = select i1 %4, float %5, float 1.000000e+00
  %7 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !68
  %9 = tail call float @curvemapping_evaluateF(ptr noundef %8, i32 noundef 0, float noundef %6) #14
  ret float %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_brush_gen_texture_cache(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca float, align 4
  %5 = alloca [4 x float], align 16
  %6 = alloca [3 x float], align 4
  %7 = icmp eq i8 %2, 0
  %8 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 4
  %9 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 3
  %10 = select i1 %7, ptr %9, ptr %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  %11 = shl i32 %1, 1
  %12 = getelementptr inbounds %struct.MTex, ptr %10, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !122
  %14 = icmp eq ptr %13, null
  br i1 %14, label %67, label %15

15:                                               ; preds = %3
  %16 = sitofp i32 %11 to double
  %17 = fdiv double 2.000000e+00, %16
  %18 = fptrunc double %17 to float
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %20 = sext i32 %11 to i64
  %21 = shl nsw i64 %20, 2
  %22 = mul i64 %21, %20
  %23 = tail call ptr %19(i64 noundef %22, ptr noundef nonnull @.str.88) #14
  %24 = icmp sgt i32 %1, 0
  br i1 %24, label %25, label %66

25:                                               ; preds = %15
  %26 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %27 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %28 = getelementptr inbounds float, ptr %5, i64 1
  %29 = getelementptr inbounds float, ptr %5, i64 2
  %30 = getelementptr inbounds float, ptr %5, i64 3
  %31 = tail call i32 @llvm.smax.i32(i32 %11, i32 1)
  %32 = zext nneg i32 %31 to i64
  br label %33

33:                                               ; preds = %62, %25
  %34 = phi i64 [ 0, %25 ], [ %63, %62 ]
  %35 = phi float [ -1.000000e+00, %25 ], [ %64, %62 ]
  %36 = trunc i64 %34 to i32
  %37 = mul i32 %11, %36
  br label %38

38:                                               ; preds = %33, %38
  %39 = phi i64 [ 0, %33 ], [ %59, %38 ]
  %40 = phi float [ -1.000000e+00, %33 ], [ %60, %38 ]
  store float %40, ptr %6, align 4, !tbaa !52
  store float %35, ptr %26, align 4, !tbaa !52
  store float 0.000000e+00, ptr %27, align 4, !tbaa !52
  %41 = call i32 @externtex(ptr noundef nonnull %10, ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %28, ptr noundef nonnull %29, ptr noundef nonnull %30, i32 noundef 0, ptr noundef null) #14
  %42 = load float, ptr %4, align 4, !tbaa !52
  %43 = fmul float %42, 2.550000e+02
  %44 = fptoui float %43 to i8
  %45 = trunc i64 %39 to i32
  %46 = add i32 %37, %45
  %47 = shl nsw i32 %46, 2
  %48 = or disjoint i32 %47, 3
  %49 = zext nneg i32 %48 to i64
  %50 = getelementptr inbounds i8, ptr %23, i64 %49
  store i8 %44, ptr %50, align 1, !tbaa !151
  %51 = or disjoint i32 %47, 2
  %52 = zext nneg i32 %51 to i64
  %53 = getelementptr inbounds i8, ptr %23, i64 %52
  store i8 %44, ptr %53, align 1, !tbaa !151
  %54 = or disjoint i32 %47, 1
  %55 = zext nneg i32 %54 to i64
  %56 = getelementptr inbounds i8, ptr %23, i64 %55
  store i8 %44, ptr %56, align 1, !tbaa !151
  %57 = zext nneg i32 %47 to i64
  %58 = getelementptr inbounds i8, ptr %23, i64 %57
  store i8 %44, ptr %58, align 1, !tbaa !151
  %59 = add nuw nsw i64 %39, 1
  %60 = fadd float %40, %18
  %61 = icmp eq i64 %59, %32
  br i1 %61, label %62, label %38, !llvm.loop !152

62:                                               ; preds = %38
  %63 = add nuw nsw i64 %34, 1
  %64 = fadd float %35, %18
  %65 = icmp eq i64 %63, %32
  br i1 %65, label %66, label %33, !llvm.loop !153

66:                                               ; preds = %62, %15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  br label %67

67:                                               ; preds = %66, %3
  %68 = phi ptr [ %23, %66 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret ptr %68
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_brush_gen_radial_control_imbuf(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 2480, ptr noundef nonnull @.str.89) #14
  %5 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  tail call void @curvemapping_initialize(ptr noundef %6) #14
  %7 = tail call ptr @BKE_brush_gen_texture_cache(ptr noundef %0, i32 noundef 64, i8 noundef zeroext %1) #15
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %9 = tail call ptr %8(i64 noundef 65536, ptr noundef nonnull @.str.90) #14
  %10 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 9
  store ptr %9, ptr %10, align 8, !tbaa !154
  %11 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 3
  store i32 128, ptr %11, align 4, !tbaa !157
  %12 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 2
  store i32 128, ptr %12, align 8, !tbaa !158
  br label %13

13:                                               ; preds = %2, %34
  %14 = phi i64 [ 0, %2 ], [ %35, %34 ]
  %15 = trunc i64 %14 to i32
  %16 = add i32 %15, -64
  %17 = sitofp i32 %16 to float
  %18 = fmul float %17, %17
  %19 = shl nuw nsw i64 %14, 7
  br label %20

20:                                               ; preds = %13, %20
  %21 = phi i64 [ 0, %13 ], [ %32, %20 ]
  %22 = trunc i64 %21 to i32
  %23 = add i32 %22, -64
  %24 = sitofp i32 %23 to float
  %25 = fmul float %24, %24
  %26 = fadd float %18, %25
  %27 = tail call float @llvm.sqrt.f32(float %26)
  %28 = tail call float @BKE_brush_curve_strength_clamp(ptr noundef %0, float noundef %27, float noundef 6.400000e+01) #15
  %29 = load ptr, ptr %10, align 8, !tbaa !154
  %30 = getelementptr float, ptr %29, i64 %21
  %31 = getelementptr float, ptr %30, i64 %19
  store float %28, ptr %31, align 4, !tbaa !52
  %32 = add nuw nsw i64 %21, 1
  %33 = icmp eq i64 %32, 128
  br i1 %33, label %34, label %20, !llvm.loop !159

34:                                               ; preds = %20
  %35 = add nuw nsw i64 %14, 1
  %36 = icmp eq i64 %35, 128
  br i1 %36, label %37, label %13, !llvm.loop !160

37:                                               ; preds = %34
  %38 = icmp eq ptr %7, null
  br i1 %38, label %67, label %39

39:                                               ; preds = %37, %62
  %40 = phi i64 [ %63, %62 ], [ 0, %37 ]
  %41 = shl nuw nsw i64 %40, 7
  br label %42

42:                                               ; preds = %42, %39
  %43 = phi i64 [ 0, %39 ], [ %60, %42 ]
  %44 = add nuw nsw i64 %43, %41
  %45 = getelementptr inbounds i32, ptr %7, i64 %44
  %46 = load <4 x i32>, ptr %45, align 4, !tbaa !132
  %47 = lshr <4 x i32> %46, <i32 8, i32 8, i32 8, i32 8>
  %48 = lshr <4 x i32> %46, <i32 16, i32 16, i32 16, i32 16>
  %49 = and <4 x i32> %46, <i32 255, i32 255, i32 255, i32 255>
  %50 = and <4 x i32> %47, <i32 255, i32 255, i32 255, i32 255>
  %51 = add nuw nsw <4 x i32> %50, %49
  %52 = and <4 x i32> %48, <i32 255, i32 255, i32 255, i32 255>
  %53 = add nuw nsw <4 x i32> %51, %52
  %54 = sitofp <4 x i32> %53 to <4 x float>
  %55 = fdiv <4 x float> %54, <float 3.000000e+00, float 3.000000e+00, float 3.000000e+00, float 3.000000e+00>
  %56 = fdiv <4 x float> %55, <float 2.550000e+02, float 2.550000e+02, float 2.550000e+02, float 2.550000e+02>
  %57 = getelementptr inbounds float, ptr %29, i64 %44
  %58 = load <4 x float>, ptr %57, align 4, !tbaa !52
  %59 = fmul <4 x float> %58, %56
  store <4 x float> %59, ptr %57, align 4, !tbaa !52
  %60 = add nuw i64 %43, 4
  %61 = icmp eq i64 %60, 128
  br i1 %61, label %62, label %42, !llvm.loop !161

62:                                               ; preds = %42
  %63 = add nuw nsw i64 %40, 1
  %64 = icmp eq i64 %63, 128
  br i1 %64, label %65, label %39, !llvm.loop !164

65:                                               ; preds = %62
  %66 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %66(ptr noundef nonnull %7) #14
  br label %67

67:                                               ; preds = %65, %37
  ret ptr %4
}

; Function Attrs: optsize
declare void @curvemapping_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #8 !PGOFuncName !165 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !52
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !52
  ret void
}

; Function Attrs: optsize
declare void @default_mtex(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @id_lib_extern(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind optsize }
attributes #15 = { optsize }
attributes #16 = { nounwind }

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
!38 = !{!39, !41, i64 98}
!39 = !{!"Brush", !40, i64 0, !43, i64 120, !35, i64 144, !45, i64 152, !45, i64 464, !35, i64 776, !35, i64 784, !35, i64 792, !35, i64 800, !35, i64 808, !36, i64 816, !44, i64 1840, !41, i64 1844, !41, i64 1846, !44, i64 1848, !42, i64 1852, !42, i64 1856, !42, i64 1860, !44, i64 1864, !42, i64 1868, !42, i64 1872, !42, i64 1876, !42, i64 1880, !44, i64 1884, !44, i64 1888, !36, i64 1892, !44, i64 1904, !36, i64 1908, !42, i64 1920, !44, i64 1924, !44, i64 1928, !42, i64 1932, !42, i64 1936, !42, i64 1940, !36, i64 1944, !36, i64 1945, !36, i64 1946, !36, i64 1947, !44, i64 1948, !44, i64 1952, !44, i64 1956, !44, i64 1960, !44, i64 1964, !42, i64 1968, !42, i64 1972, !42, i64 1976, !44, i64 1980, !44, i64 1984, !42, i64 1988, !42, i64 1992, !44, i64 1996, !36, i64 2000, !36, i64 2012, !36, i64 2024, !36, i64 2032, !36, i64 2040, !36, i64 2048}
!40 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !41, i64 98, !42, i64 100, !42, i64 104, !42, i64 108, !35, i64 112}
!41 = !{!"short", !36, i64 0}
!42 = !{!"int", !36, i64 0}
!43 = !{!"BrushClone", !35, i64 0, !36, i64 8, !44, i64 16, !44, i64 20}
!44 = !{!"float", !36, i64 0}
!45 = !{!"MTex", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 88, !36, i64 89, !36, i64 90, !36, i64 91, !36, i64 92, !36, i64 104, !44, i64 116, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !41, i64 128, !41, i64 130, !36, i64 132, !36, i64 133, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !44, i64 192, !44, i64 196, !44, i64 200, !44, i64 204, !44, i64 208, !44, i64 212, !44, i64 216, !44, i64 220, !44, i64 224, !44, i64 228, !44, i64 232, !44, i64 236, !44, i64 240, !44, i64 244, !44, i64 248, !44, i64 252, !44, i64 256, !44, i64 260, !44, i64 264, !44, i64 268, !44, i64 272, !44, i64 276, !44, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !44, i64 308}
!46 = !{!39, !36, i64 1944}
!47 = !{!"brush.c:brush_defaults"}
!48 = !{!39, !41, i64 1844}
!49 = !{!39, !41, i64 1846}
!50 = !{!39, !44, i64 1848}
!51 = !{!39, !42, i64 1852}
!52 = !{!44, !44, i64 0}
!53 = !{!39, !42, i64 1920}
!54 = !{!39, !44, i64 1924}
!55 = !{!39, !44, i64 1956}
!56 = !{!39, !44, i64 136}
!57 = !{!39, !44, i64 1840}
!58 = !{!39, !44, i64 1996}
!59 = !{!39, !42, i64 1856}
!60 = !{!39, !42, i64 1876}
!61 = !{!39, !42, i64 1880}
!62 = !{!39, !44, i64 1864}
!63 = !{!39, !44, i64 1964}
!64 = !{!39, !42, i64 1968}
!65 = !{!39, !42, i64 1972}
!66 = !{!39, !42, i64 1976}
!67 = !{!39, !42, i64 1872}
!68 = !{!39, !35, i64 144}
!69 = !{!70, !41, i64 2}
!70 = !{!"CurveMap", !41, i64 0, !41, i64 2, !44, i64 4, !44, i64 8, !44, i64 12, !36, i64 16, !36, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !36, i64 56, !36, i64 64}
!71 = !{!72, !42, i64 8}
!72 = !{!"CurveMapping", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !73, i64 16, !73, i64 32, !36, i64 48, !36, i64 336, !36, i64 348, !36, i64 360, !36, i64 372}
!73 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!74 = !{!39, !35, i64 168}
!75 = !{!39, !35, i64 480}
!76 = !{!39, !35, i64 808}
!77 = !{!39, !35, i64 784}
!78 = !{!39, !35, i64 792}
!79 = !{!39, !42, i64 100}
!80 = !{!39, !35, i64 800}
!81 = !{!82, !35, i64 0}
!82 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !83, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !36, i64 2090, !41, i64 2092, !42, i64 2096, !42, i64 2100, !36, i64 2104, !42, i64 2108, !42, i64 2112, !36, i64 2116}
!83 = !{!"ListBase", !35, i64 0, !35, i64 8}
!84 = !{!39, !35, i64 24}
!85 = !{!39, !35, i64 120}
!86 = !{!87, !35, i64 264}
!87 = !{!"Scene", !40, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !83, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !42, i64 232, !42, i64 236, !42, i64 240, !41, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !88, i64 280, !96, i64 4264, !83, i64 4296, !83, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !41, i64 4376, !41, i64 4378, !42, i64 4380, !83, i64 4384, !97, i64 4400, !98, i64 4416, !101, i64 4600, !35, i64 4608, !102, i64 4616, !35, i64 4640, !103, i64 4648, !103, i64 4656, !90, i64 4664, !91, i64 4824, !104, i64 4888, !35, i64 4952}
!88 = !{!"RenderData", !89, i64 0, !35, i64 248, !35, i64 256, !92, i64 264, !93, i64 328, !42, i64 400, !42, i64 404, !42, i64 408, !44, i64 412, !42, i64 416, !42, i64 420, !42, i64 424, !42, i64 428, !41, i64 432, !41, i64 434, !44, i64 436, !44, i64 440, !44, i64 444, !44, i64 448, !44, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !42, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !42, i64 484, !42, i64 488, !41, i64 492, !41, i64 494, !42, i64 496, !42, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !36, i64 514, !36, i64 515, !42, i64 516, !42, i64 520, !42, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !73, i64 544, !73, i64 560, !94, i64 576, !83, i64 592, !41, i64 608, !41, i64 610, !44, i64 612, !44, i64 616, !44, i64 620, !44, i64 624, !42, i64 628, !44, i64 632, !44, i64 636, !44, i64 640, !44, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !44, i64 660, !44, i64 664, !41, i64 668, !41, i64 670, !44, i64 672, !44, i64 676, !36, i64 680, !42, i64 1704, !41, i64 1708, !41, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !42, i64 2520, !41, i64 2524, !41, i64 2526, !44, i64 2528, !44, i64 2532, !41, i64 2536, !41, i64 2538, !44, i64 2540, !41, i64 2544, !41, i64 2546, !42, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !44, i64 2560, !44, i64 2564, !35, i64 2568, !42, i64 2576, !44, i64 2580, !36, i64 2584, !95, i64 2616, !42, i64 3976, !42, i64 3980}
!89 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !41, i64 8, !41, i64 10, !44, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !90, i64 24, !91, i64 184}
!90 = !{!"ColorManagedViewSettings", !42, i64 0, !42, i64 4, !36, i64 8, !36, i64 72, !44, i64 136, !44, i64 140, !35, i64 144, !35, i64 152}
!91 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!92 = !{!"QuicktimeCodecSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !41, i64 48, !41, i64 50, !42, i64 52, !42, i64 56, !42, i64 60}
!93 = !{!"FFMpegCodecData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !44, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !42, i64 48, !42, i64 52, !42, i64 56, !42, i64 60, !35, i64 64}
!94 = !{!"rcti", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!95 = !{!"BakeData", !89, i64 0, !36, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !44, i64 1280, !44, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!96 = !{!"AudioData", !42, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !42, i64 16, !41, i64 20, !41, i64 22, !44, i64 24, !44, i64 28}
!97 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!98 = !{!"GameData", !97, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !36, i64 34, !99, i64 40, !41, i64 64, !41, i64 66, !44, i64 68, !100, i64 72, !44, i64 128, !44, i64 132, !42, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180}
!99 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !44, i64 8, !44, i64 12, !35, i64 16}
!100 = !{!"RecastData", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !42, i64 40, !44, i64 44, !44, i64 48, !41, i64 52, !41, i64 54}
!101 = !{!"UnitSettings", !44, i64 0, !36, i64 4, !36, i64 5, !41, i64 6}
!102 = !{!"PhysicsSettings", !36, i64 0, !42, i64 12, !42, i64 16, !42, i64 20}
!103 = !{!"long", !36, i64 0}
!104 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!105 = !{!87, !35, i64 24}
!106 = distinct !{!106, !107}
!107 = !{!"llvm.loop.mustprogress"}
!108 = distinct !{!108, !107}
!109 = !{!"brush.c:extern_local_brush"}
!110 = !{!39, !44, i64 1884}
!111 = !{!39, !44, i64 1888}
!112 = !{!39, !44, i64 1904}
!113 = !{!39, !44, i64 1948}
!114 = !{!39, !44, i64 1952}
!115 = !{!40, !42, i64 100}
!116 = !{!117, !42, i64 100}
!117 = !{!"Tex", !40, i64 0, !35, i64 120, !44, i64 128, !44, i64 132, !44, i64 136, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !44, i64 192, !44, i64 196, !44, i64 200, !44, i64 204, !44, i64 208, !44, i64 212, !41, i64 216, !41, i64 218, !41, i64 220, !41, i64 222, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !44, i64 236, !44, i64 240, !44, i64 244, !44, i64 248, !42, i64 252, !42, i64 256, !41, i64 260, !41, i64 262, !41, i64 264, !41, i64 266, !42, i64 268, !42, i64 272, !42, i64 276, !42, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !118, i64 296, !35, i64 336, !35, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !36, i64 408, !36, i64 409}
!118 = !{!"ImageUser", !35, i64 0, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !41, i64 28, !41, i64 30, !41, i64 32, !41, i64 34, !42, i64 36}
!119 = !{i32 0, i32 2}
!120 = !{!121, !42, i64 100}
!121 = !{!"Image", !40, i64 0, !36, i64 120, !35, i64 1144, !35, i64 1152, !35, i64 1160, !35, i64 1168, !36, i64 1176, !41, i64 1240, !41, i64 1242, !41, i64 1244, !41, i64 1246, !41, i64 1248, !41, i64 1250, !42, i64 1252, !41, i64 1256, !41, i64 1258, !41, i64 1260, !41, i64 1262, !41, i64 1264, !41, i64 1266, !42, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !44, i64 1296, !42, i64 1300, !41, i64 1304, !41, i64 1306, !42, i64 1308, !42, i64 1312, !36, i64 1316, !36, i64 1317, !41, i64 1318, !36, i64 1320, !44, i64 1336, !44, i64 1340, !104, i64 1344, !36, i64 1408, !36, i64 1409, !36, i64 1416}
!122 = !{!45, !35, i64 16}
!123 = !{!45, !36, i64 132}
!124 = !{!45, !44, i64 116}
!125 = !{!126, !44, i64 52}
!126 = !{!"UnifiedPaintSettings", !42, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !36, i64 16, !36, i64 28, !42, i64 40, !36, i64 44, !44, i64 52, !42, i64 56, !42, i64 60, !36, i64 64, !36, i64 65, !44, i64 72, !36, i64 76, !42, i64 84, !44, i64 88, !36, i64 92, !36, i64 100, !42, i64 108, !35, i64 112, !44, i64 120, !42, i64 124}
!127 = !{!126, !44, i64 120}
!128 = !{!126, !42, i64 108}
!129 = !{!126, !35, i64 112}
!130 = !{!"brush.c:zero_v4"}
!131 = !{!126, !42, i64 40}
!132 = !{!42, !42, i64 0}
!133 = !{!134, !44, i64 10908}
!134 = !{!"UserDef", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !42, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !42, i64 8484, !42, i64 8488, !42, i64 8492, !41, i64 8496, !41, i64 8498, !42, i64 8500, !42, i64 8504, !42, i64 8508, !42, i64 8512, !42, i64 8516, !42, i64 8520, !42, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !83, i64 8536, !83, i64 8552, !83, i64 8568, !83, i64 8584, !83, i64 8600, !83, i64 8616, !83, i64 8632, !36, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !36, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !42, i64 8912, !42, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !44, i64 8956, !44, i64 8960, !42, i64 8964, !41, i64 8968, !41, i64 8970, !44, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !135, i64 8984, !36, i64 9760, !36, i64 9772, !41, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !42, i64 10896, !42, i64 10900, !44, i64 10904, !44, i64 10908, !42, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !136, i64 10928}
!135 = !{!"ColorBand", !41, i64 0, !41, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!136 = !{!"WalkNavigation", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !41, i64 24, !36, i64 26}
!137 = !{!39, !42, i64 1860}
!138 = !{!126, !44, i64 88}
!139 = !{!"brush.c:copy_v3_v3"}
!140 = !{!126, !42, i64 0}
!141 = !{!142, !42, i64 520}
!142 = !{!"ToolSettings", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !44, i64 32, !44, i64 36, !44, i64 40, !41, i64 44, !41, i64 46, !36, i64 48, !36, i64 49, !36, i64 50, !36, i64 51, !44, i64 52, !41, i64 56, !36, i64 58, !36, i64 59, !143, i64 64, !145, i64 168, !44, i64 336, !44, i64 340, !41, i64 344, !41, i64 346, !36, i64 348, !36, i64 349, !41, i64 350, !44, i64 352, !44, i64 356, !44, i64 360, !44, i64 364, !44, i64 368, !44, i64 372, !44, i64 376, !44, i64 380, !44, i64 384, !44, i64 388, !41, i64 392, !36, i64 394, !36, i64 395, !36, i64 396, !36, i64 399, !35, i64 400, !36, i64 408, !36, i64 409, !36, i64 410, !36, i64 411, !36, i64 412, !36, i64 413, !36, i64 421, !36, i64 429, !36, i64 430, !36, i64 431, !36, i64 432, !36, i64 433, !41, i64 434, !41, i64 436, !41, i64 438, !41, i64 440, !36, i64 442, !36, i64 443, !36, i64 444, !36, i64 445, !36, i64 446, !36, i64 447, !42, i64 448, !42, i64 452, !42, i64 456, !42, i64 460, !41, i64 464, !41, i64 466, !42, i64 468, !44, i64 472, !44, i64 476, !126, i64 480, !146, i64 608}
!143 = !{!"ImagePaintSettings", !144, i64 0, !41, i64 40, !41, i64 42, !41, i64 44, !41, i64 46, !36, i64 48, !42, i64 52, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !36, i64 88, !44, i64 100}
!144 = !{!"Paint", !35, i64 0, !35, i64 8, !35, i64 16, !36, i64 24, !42, i64 28, !42, i64 32, !42, i64 36}
!145 = !{!"ParticleEditSettings", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !36, i64 8, !35, i64 120, !44, i64 128, !44, i64 132, !42, i64 136, !42, i64 140, !42, i64 144, !42, i64 148, !35, i64 152, !35, i64 160}
!146 = !{!"MeshStatVis", !36, i64 0, !36, i64 1, !36, i64 3, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !36, i64 20, !36, i64 21, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36}
!147 = !{!126, !44, i64 12}
!148 = distinct !{!148, !107}
!149 = !{!39, !42, i64 1868}
!150 = !{!"brush.c:len_squared_v2"}
!151 = !{!36, !36, i64 0}
!152 = distinct !{!152, !107}
!153 = distinct !{!153, !107}
!154 = !{!155, !35, i64 48}
!155 = !{!"ImBuf", !35, i64 0, !35, i64 8, !42, i64 16, !42, i64 20, !36, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !35, i64 40, !35, i64 48, !36, i64 56, !42, i64 72, !42, i64 76, !42, i64 80, !42, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !44, i64 112, !36, i64 120, !42, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !35, i64 296, !35, i64 304, !42, i64 312, !36, i64 316, !36, i64 1340, !35, i64 2368, !42, i64 2376, !35, i64 2384, !42, i64 2392, !42, i64 2396, !35, i64 2400, !35, i64 2408, !35, i64 2416, !35, i64 2424, !42, i64 2432, !94, i64 2436, !156, i64 2456}
!156 = !{!"DDSData", !42, i64 0, !42, i64 4, !35, i64 8, !42, i64 16}
!157 = !{!155, !42, i64 20}
!158 = !{!155, !42, i64 16}
!159 = distinct !{!159, !107}
!160 = distinct !{!160, !107}
!161 = distinct !{!161, !107, !162, !163}
!162 = !{!"llvm.loop.isvectorized", i32 1}
!163 = !{!"llvm.loop.unroll.runtime.disable"}
!164 = distinct !{!164, !107}
!165 = !{!"brush.c:zero_v3"}
