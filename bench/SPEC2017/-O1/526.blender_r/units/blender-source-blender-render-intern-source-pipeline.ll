; ModuleID = 'blender/source/blender/render/intern/source/pipeline.c'
source_filename = "blender/source/blender/render/intern/source/pipeline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { %struct.ListBase }
%struct.ListBase = type { ptr, ptr }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.Render = type { ptr, ptr, [74 x i8], i32, i16, i16, i16, i16, i8, ptr, ptr, %struct.ListBase, i32, i32, i32, %struct.rcti, %struct.rctf, float, float, float, i32, i32, i32, i32, float, float, float, float, float, float, [3 x float], [3 x [3 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], float, float, ptr, [32 x [2 x float]], [32 x [2 x float]], ptr, [1 x i32], ptr, ptr, %struct.RenderData, %struct.World, ptr, i32, i32, %struct.ListBase, ptr, ptr, ptr, ptr, float, ptr, %struct.ListBase, float, float, i32, i32, i32, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, %struct.ListBase, i32, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.RenderStats, ptr, ptr, ptr }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.rctf = type { float, float, float, float }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.BakeData = type { %struct.ImageFormatData, [1024 x i8], i16, i16, i16, i16, float, float, [3 x i8], i8, i8, [3 x i8], [64 x i8] }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.RenderStats = type { i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, double, double, ptr, ptr, [64 x i8], float, float }
%struct.RenderLayer = type { ptr, ptr, [74 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase }
%struct.RenderPass = type { ptr, ptr, i32, i32, [64 x i8], [8 x i8], ptr, i32, i32, i32 }
%struct.RenderResult = type { ptr, ptr, i32, i32, i16, i16, ptr, ptr, ptr, %struct.rcti, i32, i32, %struct.ListBase, %struct.rcti, ptr, i32, i32, i32, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.AudioData = type { i32, float, float, float, i32, i16, i16, float, float }
%struct.GameFraming = type { [3 x float], i8, i8, i8, i8 }
%struct.GameData = type { %struct.GameFraming, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], %struct.GameDome, i16, i16, float, %struct.RecastData, float, float, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float }
%struct.GameDome = type { i16, i16, i16, i16, float, float, ptr }
%struct.RecastData = type { float, float, float, float, float, float, float, float, float, float, i32, float, float, i16, i16 }
%struct.UnitSettings = type { float, i8, i8, i16 }
%struct.PhysicsSettings = type { [3 x float], i32, i32, i32 }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.RenderEngine = type { ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.ListBase, [512 x i8], i32, i32, ptr, i32, i32, %struct.rctf, %struct.rcti, [4 x [4 x float]], i32, i32 }
%struct.SceneRenderLayer = type { ptr, ptr, [64 x i8], ptr, ptr, i32, i32, i32, i32, i32, i32, i32, float, %struct.FreestyleConfig }
%struct.FreestyleConfig = type { %struct.ListBase, i32, i32, i32, float, float, float, %struct.ListBase }
%struct.RenderThread = type { ptr, ptr, i32, ptr, ptr }
%struct.RenderPart = type { ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i32, i32, i32, i16, i16, i16, i16, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bNodeInstanceKey = type { i32 }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.Editing = type { ptr, %struct.ListBase, %struct.ListBase, ptr, [1024 x i8], [1024 x i8], i32, i32, i32, i32, %struct.rctf }
%struct.Sequence = type { ptr, ptr, ptr, ptr, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, float, float, float, float, ptr, i32, i32, i32, float, i32, i8, [3 x i8], %struct.ListBase }
%struct.SeqRenderData = type { ptr, ptr, ptr, i32, i32, i32, i32, float, i8, i8 }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.bMovieHandle = type { ptr, ptr, ptr, ptr, ptr }
%struct.EnvMap = type { ptr, ptr, [6 x ptr], [4 x [4 x float]], [3 x [3 x float]], i16, i16, float, float, float, i32, i16, i16, i32, i32, i16, i16 }
%struct.bNodeSocket = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], ptr, i16, i16, i16, i16, ptr, [64 x i8], float, float, ptr, i16, i16, i32, ptr, i32, i32, ptr, ptr, %struct.bNodeStack }
%struct.bNodeStack = type { [4 x float], float, float, ptr, i16, i16, i16, i16, i16, i16, [2 x i16] }
%struct.VirtualModifierData = type { %struct.ArmatureModifierData, %struct.CurveModifierData, %struct.LatticeModifierData, %struct.ShapeKeyModifierData }
%struct.ArmatureModifierData = type { %struct.ModifierData, i16, i16, i32, ptr, ptr, [64 x i8] }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.CurveModifierData = type { %struct.ModifierData, ptr, [64 x i8], i16, [6 x i8] }
%struct.LatticeModifierData = type { %struct.ModifierData, ptr, [64 x i8], float, [4 x i8] }
%struct.ShapeKeyModifierData = type { %struct.ModifierData }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.BooleanModifierData = type { %struct.ModifierData, ptr, i32, i32 }
%struct.ArrayModifierData = type { %struct.ModifierData, ptr, ptr, ptr, ptr, [3 x float], [3 x float], float, float, i32, i32, i32, i32 }
%struct.ShrinkwrapModifierData = type { %struct.ModifierData, ptr, ptr, [64 x i8], float, i16, i8, i8, float, i8, i8, [2 x i8] }

@RenderGlobal = internal global %struct.anon zeroinitializer, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [11 x i8] c"new render\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"re->eval_ctx\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"Image too small\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"new render result\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"No border area selected\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"No node tree in scene\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"No render output node in scene\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"No ortho render possible for panorama\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"All render layers are disabled\00", align 1
@MEM_reset_peak_memory = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [30 x i8] c"skipping existing frame \22%s\22\0A\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c"No frames rendered, skipped to not overwrite\00", align 1
@.str.16 = private unnamed_addr constant [62 x i8] c"RE_result_rect_from_file: failed to allocate clip buffer '%s'\00", align 1
@.str.17 = private unnamed_addr constant [69 x i8] c"RE_result_rect_from_file: incorrect dimensions for partial copy '%s'\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"RE_result_rect_from_file: failed to load '%s'\00", align 1
@default_envmap_layout = dso_local local_unnamed_addr constant [12 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 2.000000e+00, float 1.000000e+00], align 16
@.str.19 = private unnamed_addr constant [56 x i8] c"There is no generated environment map available to save\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"Invalid environment map type\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"Error writing environment map\00", align 1
@R = dso_local global %struct.Render zeroinitializer, align 8
@MEM_get_memory_in_use = external local_unnamed_addr global ptr, align 8
@MEM_get_mapped_memory_in_use = external local_unnamed_addr global ptr, align 8
@MEM_get_peak_memory = external local_unnamed_addr global ptr, align 8
@stdout = external local_unnamed_addr global ptr, align 8
@.str.22 = private unnamed_addr constant [38 x i8] c"Fra:%d Mem:%.2fM (%.2fM, Peak %.2fM) \00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"Field %d \00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"Blur %d \00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"| %s\00", align 1
@.str.26 = private unnamed_addr constant [32 x i8] c"Sce: %s Ve:%d Fa:%d Ha:%d La:%d\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"Sce: %s Ve:%d Fa:%d La:%d\00", align 1
@g_break = internal global i32 0, align 4
@.str.28 = private unnamed_addr constant [15 x i8] c"%s, Part %d-%d\00", align 1
@MEM_mapallocN = external local_unnamed_addr global ptr, align 8
@.str.29 = private unnamed_addr constant [16 x i8] c"fullsample rgba\00", align 1
@.str.30 = private unnamed_addr constant [38 x i8] c"Setting scene %s alpha mode to Premul\00", align 1
@.str.31 = private unnamed_addr constant [60 x i8] c"2.66 versioning fix: setting scene %s alpha mode to Premul\0A\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"Alpha\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"No camera found in scene \22%s\22\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"No camera found in scene\00", align 1
@do_render_seq.recurs_depth = internal unnamed_addr global i32 0, align 4
@.str.35 = private unnamed_addr constant [25 x i8] c"Cannot render, no camera\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"temp 32 bits rect\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"Append frame %d\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"Saved: %s\00", align 1
@.str.39 = private unnamed_addr constant [30 x i8] c"Render error: cannot save %s\0A\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c".exr\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"\0ASaved: %s\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c" Time: %s\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c" (Saving: %s)\0A\00", align 1
@str = private unnamed_addr constant [53 x i8] c"Error: cant write single images with a movie format!\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @RE_FreeRenderResult(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @render_result_free(ptr noundef %0) #23
  ret void
}

declare void @render_result_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @RE_RenderLayerGetPass(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.RenderLayer, ptr %0, i64 0, i32 18
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.RenderPass, ptr %6, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !38
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %4, !llvm.loop !41

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.RenderPass, ptr %6, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  br label %15

15:                                               ; preds = %4, %12
  %16 = phi ptr [ %14, %12 ], [ null, %4 ]
  ret ptr %16
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local ptr @RE_GetRenderLayer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 12
  %6 = tail call ptr @BLI_findstring(ptr noundef nonnull %5, ptr noundef %1, i32 noundef 16) #23
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi ptr [ %6, %4 ], [ null, %2 ]
  ret ptr %8
}

declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @RE_MultilayerConvert(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @render_result_new_from_exr(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3, i32 noundef %4) #23
  ret ptr %6
}

declare ptr @render_result_new_from_exr(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @render_get_active_layer(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 12
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 61
  %5 = load i16, ptr %4, align 8, !tbaa !45
  %6 = sext i16 %5 to i32
  %7 = tail call ptr @BLI_findlink(ptr noundef nonnull %3, i32 noundef %6) #23
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !tbaa !63
  br label %11

11:                                               ; preds = %2, %9
  %12 = phi ptr [ %10, %9 ], [ %7, %2 ]
  ret ptr %12
}

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @RE_GetRender(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @RenderGlobal, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Render, ptr %4, i64 0, i32 2
  %8 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %0, i64 noundef 74) #24
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %2, !llvm.loop !65

10:                                               ; preds = %6, %2
  ret ptr %4
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local ptr @RE_AcquireResultRead(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull %4, i32 noundef 1) #23
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi ptr [ %6, %3 ], [ null, %1 ]
  ret ptr %8
}

declare void @BLI_rw_mutex_lock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @RE_AcquireResultWrite(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull %4, i32 noundef 2) #23
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi ptr [ %6, %3 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @RE_SwapResult(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #6 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  %7 = load ptr, ptr %1, align 8, !tbaa !34
  store ptr %7, ptr %5, align 8, !tbaa !66
  store ptr %6, ptr %1, align 8, !tbaa !34
  br label %8

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RE_ReleaseResult(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull %4) #23
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

declare void @BLI_rw_mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @RE_GetScene(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define dso_local void @RE_AcquireResultImage(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %1, i8 0, i64 144, i1 false)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %75, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull %5, i32 noundef 1) #23
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  %8 = icmp eq ptr %7, null
  br i1 %8, label %75, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !68
  %12 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 2
  store i32 %11, ptr %12, align 8, !tbaa !68
  %13 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !69
  %15 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 3
  store i32 %14, ptr %15, align 4, !tbaa !69
  %16 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !70
  %18 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 7
  store ptr %17, ptr %18, align 8, !tbaa !70
  %19 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !71
  %21 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 8
  store ptr %20, ptr %21, align 8, !tbaa !71
  %22 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !72
  %24 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 6
  store ptr %23, ptr %24, align 8, !tbaa !72
  %25 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 12
  %26 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 61
  %27 = load i16, ptr %26, align 8, !tbaa !45
  %28 = sext i16 %27 to i32
  %29 = tail call ptr @BLI_findlink(ptr noundef nonnull %25, i32 noundef %28) #23
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %9
  %32 = load ptr, ptr %25, align 8, !tbaa !63
  br label %33

33:                                               ; preds = %9, %31
  %34 = phi ptr [ %32, %31 ], [ %29, %9 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %60, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %18, align 8, !tbaa !70
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.RenderLayer, ptr %34, i64 0, i32 11
  %41 = load ptr, ptr %40, align 8, !tbaa !73
  store ptr %41, ptr %18, align 8, !tbaa !70
  br label %42

42:                                               ; preds = %39, %36
  %43 = load ptr, ptr %21, align 8, !tbaa !71
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %60

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.RenderLayer, ptr %34, i64 0, i32 18
  br label %47

47:                                               ; preds = %51, %45
  %48 = phi ptr [ %46, %45 ], [ %49, %51 ]
  %49 = load ptr, ptr %48, align 8, !tbaa !34
  %50 = icmp eq ptr %49, null
  br i1 %50, label %58, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.RenderPass, ptr %49, i64 0, i32 2
  %53 = load i32, ptr %52, align 8, !tbaa !38
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %47, !llvm.loop !41

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.RenderPass, ptr %49, i64 0, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !44
  br label %58

58:                                               ; preds = %47, %55
  %59 = phi ptr [ %57, %55 ], [ null, %47 ]
  store ptr %59, ptr %21, align 8, !tbaa !71
  br label %60

60:                                               ; preds = %42, %58, %33
  %61 = load ptr, ptr %6, align 8, !tbaa !66
  %62 = getelementptr inbounds %struct.RenderResult, ptr %61, i64 0, i32 7
  %63 = load ptr, ptr %62, align 8, !tbaa !70
  %64 = icmp ne ptr %63, null
  %65 = zext i1 %64 to i32
  %66 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 17
  store i32 %65, ptr %66, align 8, !tbaa !75
  %67 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 12
  %68 = getelementptr inbounds %struct.RenderResult, ptr %61, i64 0, i32 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %67, ptr noundef nonnull align 8 dereferenceable(16) %68, i64 16, i1 false), !tbaa.struct !76
  %69 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  %70 = load i32, ptr %69, align 4, !tbaa !77
  %71 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 10
  store i32 %70, ptr %71, align 8, !tbaa !78
  %72 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 2
  %73 = load i32, ptr %72, align 4, !tbaa !79
  %74 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 11
  store i32 %73, ptr %74, align 4, !tbaa !80
  br label %75

75:                                               ; preds = %4, %60, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nounwind uwtable
define dso_local void @RE_ReleaseResultImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull %4) #23
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RE_ResultGet32(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.RenderResult, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %3, i8 0, i64 144, i1 false)
  %4 = icmp eq ptr %0, null
  br i1 %4, label %87, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull %6, i32 noundef 1) #23
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = icmp eq ptr %8, null
  br i1 %9, label %76, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.RenderResult, ptr %8, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !68
  %13 = getelementptr inbounds %struct.RenderResult, ptr %3, i64 0, i32 2
  store i32 %12, ptr %13, align 8, !tbaa !68
  %14 = getelementptr inbounds %struct.RenderResult, ptr %8, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !69
  %16 = getelementptr inbounds %struct.RenderResult, ptr %3, i64 0, i32 3
  store i32 %15, ptr %16, align 4, !tbaa !69
  %17 = getelementptr inbounds %struct.RenderResult, ptr %8, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !70
  %19 = getelementptr inbounds %struct.RenderResult, ptr %3, i64 0, i32 7
  store ptr %18, ptr %19, align 8, !tbaa !70
  %20 = getelementptr inbounds %struct.RenderResult, ptr %8, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !71
  %22 = getelementptr inbounds %struct.RenderResult, ptr %3, i64 0, i32 8
  store ptr %21, ptr %22, align 8, !tbaa !71
  %23 = getelementptr inbounds %struct.RenderResult, ptr %8, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !72
  %25 = getelementptr inbounds %struct.RenderResult, ptr %3, i64 0, i32 6
  store ptr %24, ptr %25, align 8, !tbaa !72
  %26 = getelementptr inbounds %struct.RenderResult, ptr %8, i64 0, i32 12
  %27 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 61
  %28 = load i16, ptr %27, align 8, !tbaa !45
  %29 = sext i16 %28 to i32
  %30 = tail call ptr @BLI_findlink(ptr noundef nonnull %26, i32 noundef %29) #23
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %10
  %33 = load ptr, ptr %26, align 8, !tbaa !63
  br label %34

34:                                               ; preds = %32, %10
  %35 = phi ptr [ %33, %32 ], [ %30, %10 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %61, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %19, align 8, !tbaa !70
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.RenderLayer, ptr %35, i64 0, i32 11
  %42 = load ptr, ptr %41, align 8, !tbaa !73
  store ptr %42, ptr %19, align 8, !tbaa !70
  br label %43

43:                                               ; preds = %40, %37
  %44 = load ptr, ptr %22, align 8, !tbaa !71
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %61

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.RenderLayer, ptr %35, i64 0, i32 18
  br label %48

48:                                               ; preds = %52, %46
  %49 = phi ptr [ %47, %46 ], [ %50, %52 ]
  %50 = load ptr, ptr %49, align 8, !tbaa !34
  %51 = icmp eq ptr %50, null
  br i1 %51, label %59, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.RenderPass, ptr %50, i64 0, i32 2
  %54 = load i32, ptr %53, align 8, !tbaa !38
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %56, label %48, !llvm.loop !41

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.RenderPass, ptr %50, i64 0, i32 6
  %58 = load ptr, ptr %57, align 8, !tbaa !44
  br label %59

59:                                               ; preds = %48, %56
  %60 = phi ptr [ %58, %56 ], [ null, %48 ]
  store ptr %60, ptr %22, align 8, !tbaa !71
  br label %61

61:                                               ; preds = %59, %43, %34
  %62 = load ptr, ptr %7, align 8, !tbaa !66
  %63 = getelementptr inbounds %struct.RenderResult, ptr %62, i64 0, i32 7
  %64 = load ptr, ptr %63, align 8, !tbaa !70
  %65 = icmp ne ptr %64, null
  %66 = zext i1 %65 to i32
  %67 = getelementptr inbounds %struct.RenderResult, ptr %3, i64 0, i32 17
  store i32 %66, ptr %67, align 8, !tbaa !75
  %68 = getelementptr inbounds %struct.RenderResult, ptr %3, i64 0, i32 12
  %69 = getelementptr inbounds %struct.RenderResult, ptr %62, i64 0, i32 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %68, ptr noundef nonnull align 8 dereferenceable(16) %69, i64 16, i1 false), !tbaa.struct !76
  %70 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  %71 = load i32, ptr %70, align 4, !tbaa !77
  %72 = getelementptr inbounds %struct.RenderResult, ptr %3, i64 0, i32 10
  store i32 %71, ptr %72, align 8, !tbaa !78
  %73 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 2
  %74 = load i32, ptr %73, align 4, !tbaa !79
  %75 = getelementptr inbounds %struct.RenderResult, ptr %3, i64 0, i32 11
  store i32 %74, ptr %75, align 4, !tbaa !80
  br label %76

76:                                               ; preds = %5, %61
  %77 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 20
  %78 = load i32, ptr %77, align 8, !tbaa !81
  %79 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 21
  %80 = load i32, ptr %79, align 4, !tbaa !82
  %81 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %82 = load ptr, ptr %81, align 8, !tbaa !67
  %83 = getelementptr inbounds %struct.Scene, ptr %82, i64 0, i32 44
  %84 = getelementptr inbounds %struct.Scene, ptr %82, i64 0, i32 45
  call void @render_result_rect_get_pixels(ptr noundef nonnull %3, ptr noundef %1, i32 noundef %78, i32 noundef %80, ptr noundef nonnull %83, ptr noundef nonnull %84) #23
  br i1 %4, label %96, label %85

85:                                               ; preds = %76
  %86 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  call void @BLI_rw_mutex_unlock(ptr noundef nonnull %86) #23
  br label %96

87:                                               ; preds = %2
  %88 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 20
  %89 = load i32, ptr %88, align 8, !tbaa !81
  %90 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 21
  %91 = load i32, ptr %90, align 4, !tbaa !82
  %92 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %93 = load ptr, ptr %92, align 8, !tbaa !67
  %94 = getelementptr inbounds %struct.Scene, ptr %93, i64 0, i32 44
  %95 = getelementptr inbounds %struct.Scene, ptr %93, i64 0, i32 45
  call void @render_result_rect_get_pixels(ptr noundef nonnull %3, ptr noundef %1, i32 noundef %89, i32 noundef %91, ptr noundef nonnull %94, ptr noundef nonnull %95) #23
  br label %96

96:                                               ; preds = %87, %76, %85
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #23
  ret void
}

declare void @render_result_rect_get_pixels(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @RE_AcquiredResultGet32(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 20
  %5 = load i32, ptr %4, align 8, !tbaa !81
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 21
  %7 = load i32, ptr %6, align 4, !tbaa !82
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %9 = load ptr, ptr %8, align 8, !tbaa !67
  %10 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 44
  %11 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 45
  tail call void @render_result_rect_get_pixels(ptr noundef %1, ptr noundef %2, i32 noundef %5, i32 noundef %7, ptr noundef nonnull %10, ptr noundef nonnull %11) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local nonnull ptr @RE_GetStats(ptr noundef readnone %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RE_NewRender(ptr noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @RenderGlobal, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Render, ptr %4, i64 0, i32 2
  %8 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %0, i64 noundef 74) #24
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %19, label %2, !llvm.loop !65

10:                                               ; preds = %2
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %12 = tail call ptr %11(i64 noundef 6240, ptr noundef nonnull @.str) #23
  tail call void @BLI_addtail(ptr noundef nonnull @RenderGlobal, ptr noundef %12) #23
  %13 = getelementptr inbounds %struct.Render, ptr %12, i64 0, i32 2
  %14 = tail call ptr @BLI_strncpy(ptr noundef nonnull %13, ptr noundef %0, i64 noundef 74) #23
  %15 = getelementptr inbounds %struct.Render, ptr %12, i64 0, i32 12
  tail call void @BLI_rw_mutex_init(ptr noundef nonnull %15) #23
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %17 = tail call ptr %16(i64 noundef 4, ptr noundef nonnull @.str.1) #23
  %18 = getelementptr inbounds %struct.Render, ptr %12, i64 0, i32 101
  store ptr %17, ptr %18, align 8, !tbaa !83
  store i32 2, ptr %17, align 4, !tbaa !84
  br label %19

19:                                               ; preds = %6, %10
  %20 = phi ptr [ %12, %10 ], [ %4, %6 ]
  %21 = getelementptr inbounds %struct.Render, ptr %20, i64 0, i32 82
  store ptr @result_nothing, ptr %21, align 8, !tbaa !86
  %22 = getelementptr inbounds %struct.Render, ptr %20, i64 0, i32 84
  store ptr @result_nothing, ptr %22, align 8, !tbaa !87
  %23 = getelementptr inbounds %struct.Render, ptr %20, i64 0, i32 86
  store ptr @result_rcti_nothing, ptr %23, align 8, !tbaa !88
  %24 = getelementptr inbounds %struct.Render, ptr %20, i64 0, i32 88
  store ptr @current_scene_nothing, ptr %24, align 8, !tbaa !89
  %25 = getelementptr inbounds %struct.Render, ptr %20, i64 0, i32 92
  store ptr @float_nothing, ptr %25, align 8, !tbaa !90
  %26 = getelementptr inbounds %struct.Render, ptr %20, i64 0, i32 96
  store ptr @default_break, ptr %26, align 8, !tbaa !91
  %27 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !92
  %28 = icmp eq i8 %27, 0
  %29 = getelementptr inbounds %struct.Render, ptr %20, i64 0, i32 90
  %30 = select i1 %28, ptr @stats_nothing, ptr @stats_background
  store ptr %30, ptr %29, align 8, !tbaa !94
  %31 = getelementptr inbounds %struct.Render, ptr %20, i64 0, i32 97
  store ptr null, ptr %31, align 8, !tbaa !95
  %32 = getelementptr inbounds %struct.Render, ptr %20, i64 0, i32 93
  store ptr null, ptr %32, align 8, !tbaa !96
  %33 = getelementptr inbounds %struct.Render, ptr %20, i64 0, i32 91
  store ptr null, ptr %33, align 8, !tbaa !97
  %34 = getelementptr inbounds %struct.Render, ptr %20, i64 0, i32 87
  store ptr null, ptr %34, align 8, !tbaa !98
  %35 = getelementptr inbounds %struct.Render, ptr %20, i64 0, i32 85
  store ptr null, ptr %35, align 8, !tbaa !99
  %36 = getelementptr inbounds %struct.Render, ptr %20, i64 0, i32 83
  store ptr null, ptr %36, align 8, !tbaa !100
  %37 = getelementptr inbounds %struct.Render, ptr %20, i64 0, i32 24
  store float 1.000000e+00, ptr %37, align 8, !tbaa !101
  ret ptr %20
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @BLI_rw_mutex_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @RE_InitRenderCB(ptr nocapture noundef writeonly %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 82
  store ptr @result_nothing, ptr %2, align 8, !tbaa !86
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 84
  store ptr @result_nothing, ptr %3, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 86
  store ptr @result_rcti_nothing, ptr %4, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 88
  store ptr @current_scene_nothing, ptr %5, align 8, !tbaa !89
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 92
  store ptr @float_nothing, ptr %6, align 8, !tbaa !90
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  store ptr @default_break, ptr %7, align 8, !tbaa !91
  %8 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !92
  %9 = icmp eq i8 %8, 0
  %10 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 90
  %11 = select i1 %9, ptr @stats_nothing, ptr @stats_background
  store ptr %11, ptr %10, align 8, !tbaa !94
  %12 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  store ptr null, ptr %12, align 8, !tbaa !95
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 93
  store ptr null, ptr %13, align 8, !tbaa !96
  %14 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 91
  store ptr null, ptr %14, align 8, !tbaa !97
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 87
  store ptr null, ptr %15, align 8, !tbaa !98
  %16 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 85
  store ptr null, ptr %16, align 8, !tbaa !99
  %17 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 83
  store ptr null, ptr %17, align 8, !tbaa !100
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @result_nothing(ptr nocapture readnone %0, ptr nocapture readnone %1) #10 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @result_rcti_nothing(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #10 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @current_scene_nothing(ptr nocapture readnone %0, ptr nocapture readnone %1) #10 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @float_nothing(ptr nocapture readnone %0, float %1) #10 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal i32 @default_break(ptr nocapture readnone %0) #12 {
  %2 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !102
  %3 = icmp eq i8 %2, 1
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal void @stats_background(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr @MEM_get_memory_in_use, align 8, !tbaa !34
  %4 = tail call i64 %3() #23
  %5 = load ptr, ptr @MEM_get_mapped_memory_in_use, align 8, !tbaa !34
  %6 = tail call i64 %5() #23
  %7 = load ptr, ptr @MEM_get_peak_memory, align 8, !tbaa !34
  %8 = tail call i64 %7() #23
  %9 = sub i64 %4, %6
  %10 = uitofp i64 %9 to double
  %11 = fmul double %10, 0x3EB0000000000000
  %12 = fptrunc double %11 to float
  %13 = uitofp i64 %6 to double
  %14 = fmul double %13, 0x3EB0000000000000
  %15 = fptrunc double %14 to float
  %16 = uitofp i64 %8 to double
  %17 = fmul double %16, 0x3EB0000000000000
  %18 = fptrunc double %17 to float
  %19 = load ptr, ptr @stdout, align 8, !tbaa !34
  %20 = load i32, ptr %1, align 8, !tbaa !103
  %21 = fpext float %12 to double
  %22 = fpext float %15 to double
  %23 = fpext float %18 to double
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.22, i32 noundef %20, double noundef %21, double noundef %22, double noundef %23)
  %25 = getelementptr inbounds %struct.RenderStats, ptr %1, i64 0, i32 7
  %26 = load i16, ptr %25, align 4, !tbaa !104
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %2
  %29 = load ptr, ptr @stdout, align 8, !tbaa !34
  %30 = sext i16 %26 to i32
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str.23, i32 noundef %30)
  br label %32

32:                                               ; preds = %28, %2
  %33 = getelementptr inbounds %struct.RenderStats, ptr %1, i64 0, i32 8
  %34 = load i16, ptr %33, align 2, !tbaa !105
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr @stdout, align 8, !tbaa !34
  %38 = sext i16 %34 to i32
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef nonnull @.str.24, i32 noundef %38)
  br label %40

40:                                               ; preds = %36, %32
  %41 = getelementptr inbounds %struct.RenderStats, ptr %1, i64 0, i32 16
  %42 = load ptr, ptr %41, align 8, !tbaa !106
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr @stdout, align 8, !tbaa !34
  %46 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef nonnull @.str.25, ptr noundef nonnull %42)
  br label %63

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.RenderStats, ptr %1, i64 0, i32 4
  %49 = load i32, ptr %48, align 8, !tbaa !107
  %50 = icmp eq i32 %49, 0
  %51 = load ptr, ptr @stdout, align 8, !tbaa !34
  %52 = getelementptr inbounds %struct.RenderStats, ptr %1, i64 0, i32 18
  %53 = getelementptr inbounds %struct.RenderStats, ptr %1, i64 0, i32 2
  %54 = load i32, ptr %53, align 8, !tbaa !108
  %55 = getelementptr inbounds %struct.RenderStats, ptr %1, i64 0, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !109
  %57 = getelementptr inbounds %struct.RenderStats, ptr %1, i64 0, i32 5
  %58 = load i32, ptr %57, align 4, !tbaa !110
  br i1 %50, label %61, label %59

59:                                               ; preds = %47
  %60 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef nonnull @.str.26, ptr noundef nonnull %52, i32 noundef %54, i32 noundef %56, i32 noundef %49, i32 noundef %58)
  br label %63

61:                                               ; preds = %47
  %62 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef nonnull @.str.27, ptr noundef nonnull %52, i32 noundef %54, i32 noundef %56, i32 noundef %58)
  br label %63

63:                                               ; preds = %59, %61, %44
  %64 = load ptr, ptr @G, align 8, !tbaa !111
  tail call void @BLI_callback_exec(ptr noundef %64, ptr noundef null, i32 noundef 4) #23
  %65 = load ptr, ptr @stdout, align 8, !tbaa !34
  %66 = tail call i32 @fputc(i32 noundef 10, ptr noundef %65)
  %67 = load ptr, ptr @stdout, align 8, !tbaa !34
  %68 = tail call i32 @fflush(ptr noundef %67)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @stats_nothing(ptr nocapture readnone %0, ptr nocapture readnone %1) #10 {
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RE_FreeRender(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 51
  %3 = load ptr, ptr %2, align 8, !tbaa !112
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @RE_engine_free(ptr noundef nonnull %3) #23
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  tail call void @BLI_rw_mutex_end(ptr noundef nonnull %7) #23
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 60
  tail call void @BLI_freelistN(ptr noundef nonnull %8) #23
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  tail call void @RE_Database_Free(ptr noundef %0) #23
  tail call void @free_sample_tables(ptr noundef %0) #23
  %10 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !66
  tail call void @render_result_free(ptr noundef %11) #23
  %12 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !113
  tail call void @render_result_free(ptr noundef %13) #23
  tail call void @BLI_remlink(ptr noundef nonnull @RenderGlobal, ptr noundef %0) #23
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 101
  %16 = load ptr, ptr %15, align 8, !tbaa !83
  tail call void %14(ptr noundef %16) #23
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %17(ptr noundef %0) #23
  ret void
}

declare void @RE_engine_free(ptr noundef) local_unnamed_addr #1

declare void @BLI_rw_mutex_end(ptr noundef) local_unnamed_addr #1

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

declare void @RE_Database_Free(ptr noundef) local_unnamed_addr #1

declare void @free_sample_tables(ptr noundef) local_unnamed_addr #1

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @RE_FreeAllRender() local_unnamed_addr #0 {
  %1 = load ptr, ptr @RenderGlobal, align 8, !tbaa !114
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %0, %3
  %4 = phi ptr [ %5, %3 ], [ %1, %0 ]
  tail call void @RE_FreeRender(ptr noundef nonnull %4)
  %5 = load ptr, ptr @RenderGlobal, align 8, !tbaa !114
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %3, !llvm.loop !116

7:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RE_FreeAllRenderResults() local_unnamed_addr #0 {
  %1 = load ptr, ptr @RenderGlobal, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %0, %3
  %4 = phi ptr [ %9, %3 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.Render, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  tail call void @render_result_free(ptr noundef %6) #23
  %7 = getelementptr inbounds %struct.Render, ptr %4, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !113
  tail call void @render_result_free(ptr noundef %8) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %9 = load ptr, ptr %4, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %3, !llvm.loop !117

11:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RE_FreePersistentData() local_unnamed_addr #0 {
  %1 = load ptr, ptr @RenderGlobal, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %0, %15
  %4 = phi ptr [ %16, %15 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.Render, ptr %4, i64 0, i32 51
  %6 = load ptr, ptr %5, align 8, !tbaa !112
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.RenderEngine, ptr %6, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !118
  %11 = and i32 %10, 16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  tail call void @RE_engine_free(ptr noundef nonnull %6) #23
  br label %14

14:                                               ; preds = %13, %8
  store ptr null, ptr %5, align 8, !tbaa !112
  br label %15

15:                                               ; preds = %3, %14
  %16 = load ptr, ptr %4, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %3, !llvm.loop !120

18:                                               ; preds = %15, %0
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RE_InitState(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef readonly %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %10 = load i32, ptr %9, align 8, !tbaa !121
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 6
  store i16 1, ptr %11, align 4, !tbaa !122
  %12 = tail call double @PIL_check_seconds_timer() #23
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 14
  store double %12, ptr %13, align 8, !tbaa !123
  %14 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 60
  tail call void @BLI_freelistN(ptr noundef nonnull %14) #23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3984) %8, ptr noundef nonnull align 8 dereferenceable(3984) %2, i64 3984, i1 false), !tbaa.struct !124
  %15 = getelementptr inbounds %struct.RenderData, ptr %2, i64 0, i32 60
  tail call void @BLI_duplicatelist(ptr noundef nonnull %14, ptr noundef nonnull %15) #23
  %16 = icmp eq ptr %1, null
  br i1 %16, label %67, label %17

17:                                               ; preds = %7
  %18 = load i32, ptr %9, align 8, !tbaa !121
  %19 = and i32 %18, -2561
  store i32 %19, ptr %9, align 8, !tbaa !121
  %20 = getelementptr inbounds %struct.Render, ptr %1, i64 0, i32 45, i32 47
  %21 = load i32, ptr %20, align 8, !tbaa !121
  %22 = and i32 %21, 2560
  %23 = or disjoint i32 %22, %19
  store i32 %23, ptr %9, align 8, !tbaa !121
  %24 = getelementptr inbounds %struct.Render, ptr %1, i64 0, i32 45, i32 33
  %25 = load i32, ptr %24, align 4, !tbaa !129
  %26 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 33
  store i32 %25, ptr %26, align 4, !tbaa !129
  %27 = getelementptr inbounds %struct.Render, ptr %1, i64 0, i32 45, i32 34
  %28 = load i32, ptr %27, align 8, !tbaa !130
  %29 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 34
  store i32 %28, ptr %29, align 8, !tbaa !130
  %30 = getelementptr inbounds %struct.Render, ptr %1, i64 0, i32 45, i32 30
  %31 = load i16, ptr %30, align 2, !tbaa !131
  %32 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 30
  store i16 %31, ptr %32, align 2, !tbaa !131
  %33 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  store i32 %4, ptr %33, align 4, !tbaa !132
  %34 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  store i32 %5, ptr %34, align 8, !tbaa !133
  %35 = getelementptr inbounds %struct.Render, ptr %1, i64 0, i32 45, i32 47
  %36 = load i32, ptr %35, align 8, !tbaa !121
  %37 = and i32 %36, 512
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %70, label %39

39:                                               ; preds = %17
  %40 = getelementptr inbounds %struct.Render, ptr %1, i64 0, i32 45, i32 58
  %41 = load float, ptr %40, align 8, !tbaa !134
  %42 = sitofp i32 %4 to float
  %43 = fmul float %41, %42
  %44 = fptosi float %43 to i32
  %45 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  store i32 %44, ptr %45, align 4, !tbaa !77
  %46 = getelementptr inbounds %struct.Render, ptr %1, i64 0, i32 45, i32 58, i32 1
  %47 = load float, ptr %46, align 4, !tbaa !135
  %48 = fmul float %47, %42
  %49 = fptosi float %48 to i32
  %50 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 1
  store i32 %49, ptr %50, align 4, !tbaa !136
  %51 = getelementptr inbounds %struct.Render, ptr %1, i64 0, i32 45, i32 58, i32 2
  %52 = load float, ptr %51, align 8, !tbaa !137
  %53 = sitofp i32 %5 to float
  %54 = fmul float %52, %53
  %55 = fptosi float %54 to i32
  %56 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 2
  store i32 %55, ptr %56, align 4, !tbaa !79
  %57 = getelementptr inbounds %struct.Render, ptr %1, i64 0, i32 45, i32 58, i32 3
  %58 = load float, ptr %57, align 4, !tbaa !138
  %59 = fmul float %58, %53
  %60 = fptosi float %59 to i32
  %61 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 3
  store i32 %60, ptr %61, align 4, !tbaa !139
  %62 = sub nsw i32 %49, %44
  %63 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 20
  store i32 %62, ptr %63, align 8, !tbaa !81
  %64 = sub nsw i32 %60, %55
  %65 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 21
  store i32 %64, ptr %65, align 4, !tbaa !82
  %66 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 58
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %66, ptr noundef nonnull align 8 dereferenceable(16) %40, i64 16, i1 false), !tbaa.struct !140
  br label %91

67:                                               ; preds = %7
  %68 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  store i32 %4, ptr %68, align 4, !tbaa !132
  %69 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  store i32 %5, ptr %69, align 8, !tbaa !133
  br label %70

70:                                               ; preds = %67, %17
  %71 = icmp eq ptr %6, null
  %72 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  br i1 %71, label %85, label %73

73:                                               ; preds = %70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %72, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !141
  %74 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 1
  %75 = load i32, ptr %74, align 4, !tbaa !142
  %76 = load i32, ptr %72, align 4, !tbaa !143
  %77 = sub nsw i32 %75, %76
  %78 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 20
  store i32 %77, ptr %78, align 8, !tbaa !81
  %79 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 3
  %80 = load i32, ptr %79, align 4, !tbaa !144
  %81 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 2
  %82 = load i32, ptr %81, align 4, !tbaa !145
  %83 = sub nsw i32 %80, %82
  %84 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 21
  store i32 %83, ptr %84, align 4, !tbaa !82
  br label %91

85:                                               ; preds = %70
  %86 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 2
  store i32 0, ptr %86, align 4, !tbaa !79
  store i32 0, ptr %72, align 4, !tbaa !77
  %87 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 1
  store i32 %4, ptr %87, align 4, !tbaa !136
  %88 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 3
  store i32 %5, ptr %88, align 4, !tbaa !139
  %89 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 20
  store i32 %4, ptr %89, align 8, !tbaa !81
  %90 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 21
  store i32 %5, ptr %90, align 4, !tbaa !82
  br label %91

91:                                               ; preds = %39, %73, %85
  %92 = tail call i32 @llvm.smin.i32(i32 %4, i32 %5)
  %93 = sitofp i32 %92 to float
  %94 = fdiv float 2.000000e+00, %93
  %95 = fadd float %94, 1.000000e+00
  %96 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 19
  store float %95, ptr %96, align 4, !tbaa !146
  %97 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 20
  %98 = load i32, ptr %97, align 8, !tbaa !81
  %99 = icmp slt i32 %98, 1
  br i1 %99, label %114, label %100

100:                                              ; preds = %91
  %101 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 21
  %102 = load i32, ptr %101, align 4, !tbaa !82
  %103 = icmp slt i32 %102, 1
  br i1 %103, label %114, label %104

104:                                              ; preds = %100
  %105 = load i8, ptr %2, align 8, !tbaa !147
  %106 = tail call zeroext i8 @BKE_imtype_is_movie(i8 noundef zeroext %105) #23
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %117, label %108

108:                                              ; preds = %104
  %109 = load i32, ptr %97, align 8, !tbaa !81
  %110 = icmp slt i32 %109, 16
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load i32, ptr %101, align 4, !tbaa !82
  %113 = icmp slt i32 %112, 16
  br i1 %113, label %114, label %117

114:                                              ; preds = %111, %108, %100, %91
  %115 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 99
  %116 = load ptr, ptr %115, align 8, !tbaa !148
  tail call void @BKE_report(ptr noundef %116, i32 noundef 32, ptr noundef nonnull @.str.2) #23
  store i16 0, ptr %11, align 4, !tbaa !122
  br label %216

117:                                              ; preds = %111, %104
  %118 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %119 = load i32, ptr %118, align 4, !tbaa !149
  %120 = and i32 %119, -33793
  store i32 %120, ptr %118, align 4, !tbaa !150
  %121 = load i32, ptr %9, align 8, !tbaa !121
  %122 = and i32 %121, 1
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %117
  %125 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 54
  %126 = load i16, ptr %125, align 2, !tbaa !151
  %127 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 5
  %128 = tail call i16 @llvm.smin.i16(i16 %126, i16 16)
  store i16 %128, ptr %127, align 2
  br label %131

129:                                              ; preds = %117
  %130 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 5
  store i16 0, ptr %130, align 2, !tbaa !152
  br label %131

131:                                              ; preds = %124, %129
  %132 = icmp eq ptr %3, null
  br i1 %132, label %141, label %133

133:                                              ; preds = %131
  %134 = tail call i32 @BLI_findindex(ptr noundef nonnull %15, ptr noundef nonnull %3) #23
  %135 = icmp eq i32 %134, -1
  br i1 %135, label %141, label %136

136:                                              ; preds = %133
  %137 = trunc i32 %134 to i16
  %138 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 61
  store i16 %137, ptr %138, align 8, !tbaa !45
  %139 = load i32, ptr %118, align 4, !tbaa !150
  %140 = or i32 %139, 512
  store i32 %140, ptr %118, align 4, !tbaa !150
  br label %141

141:                                              ; preds = %133, %136, %131
  tail call void @make_sample_tables(ptr noundef %0) #23
  %142 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull %142, i32 noundef 2) #23
  %143 = load i32, ptr %118, align 4, !tbaa !150
  %144 = and i32 %143, 524296
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %195, label %146

146:                                              ; preds = %141
  %147 = and i32 %10, 33554432
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %146
  %150 = load i32, ptr %9, align 8, !tbaa !121
  %151 = and i32 %150, 33554432
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %149, %146
  %154 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %155 = load ptr, ptr %154, align 8, !tbaa !66
  tail call void @render_result_free(ptr noundef %155) #23
  store ptr null, ptr %154, align 8, !tbaa !66
  br label %204

156:                                              ; preds = %149
  %157 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %158 = load ptr, ptr %157, align 8, !tbaa !66
  %159 = icmp eq ptr %158, null
  br i1 %159, label %204, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 61
  %162 = load i16, ptr %161, align 8, !tbaa !45
  %163 = sext i16 %162 to i32
  %164 = tail call ptr @BLI_findlink(ptr noundef nonnull %14, i32 noundef %163) #23
  %165 = load ptr, ptr %157, align 8, !tbaa !66
  %166 = getelementptr inbounds %struct.RenderResult, ptr %165, i64 0, i32 12
  %167 = load ptr, ptr %166, align 8, !tbaa !34
  %168 = icmp eq ptr %167, null
  br i1 %168, label %182, label %169

169:                                              ; preds = %160
  %170 = getelementptr inbounds %struct.SceneRenderLayer, ptr %164, i64 0, i32 2
  br label %171

171:                                              ; preds = %169, %171
  %172 = phi ptr [ %167, %169 ], [ %178, %171 ]
  %173 = phi i8 [ 0, %169 ], [ %177, %171 ]
  %174 = getelementptr inbounds %struct.RenderLayer, ptr %172, i64 0, i32 2
  %175 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %174, ptr noundef nonnull dereferenceable(1) %170) #24
  %176 = icmp eq i32 %175, 0
  %177 = select i1 %176, i8 1, i8 %173
  %178 = load ptr, ptr %172, align 8, !tbaa !34
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %171, !llvm.loop !153

180:                                              ; preds = %171
  %181 = icmp ne i8 %177, 0
  br label %182

182:                                              ; preds = %180, %160
  %183 = phi i1 [ false, %160 ], [ %181, %180 ]
  %184 = getelementptr inbounds %struct.RenderResult, ptr %165, i64 0, i32 2
  %185 = load i32, ptr %184, align 8, !tbaa !68
  %186 = load i32, ptr %97, align 8, !tbaa !81
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %194

188:                                              ; preds = %182
  %189 = getelementptr inbounds %struct.RenderResult, ptr %165, i64 0, i32 3
  %190 = load i32, ptr %189, align 4, !tbaa !69
  %191 = load i32, ptr %101, align 4, !tbaa !82
  %192 = icmp eq i32 %190, %191
  %193 = select i1 %192, i1 %183, i1 false
  br i1 %193, label %204, label %194

194:                                              ; preds = %188, %182
  tail call void @render_result_free(ptr noundef %165) #23
  store ptr null, ptr %157, align 8, !tbaa !66
  br label %204

195:                                              ; preds = %141
  %196 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %197 = load ptr, ptr %196, align 8, !tbaa !66
  tail call void @render_result_free(ptr noundef %197) #23
  %198 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %199 = tail call ptr %198(i64 noundef 144, ptr noundef nonnull @.str.3) #23
  store ptr %199, ptr %196, align 8, !tbaa !66
  %200 = load i32, ptr %97, align 8, !tbaa !81
  %201 = getelementptr inbounds %struct.RenderResult, ptr %199, i64 0, i32 2
  store i32 %200, ptr %201, align 8, !tbaa !68
  %202 = load i32, ptr %101, align 4, !tbaa !82
  %203 = getelementptr inbounds %struct.RenderResult, ptr %199, i64 0, i32 3
  store i32 %202, ptr %203, align 4, !tbaa !69
  br label %204

204:                                              ; preds = %194, %188, %153, %156, %195
  %205 = load i32, ptr %118, align 4, !tbaa !150
  %206 = and i32 %205, 524288
  %207 = icmp eq i32 %206, 0
  %208 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 101
  %209 = load ptr, ptr %208, align 8, !tbaa !83
  %210 = select i1 %207, i32 2, i32 1
  store i32 %210, ptr %209, align 4, !tbaa !84
  tail call void @RE_parts_clamp(ptr noundef %0) #23
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull %142) #23
  %211 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 59
  store float 0.000000e+00, ptr %211, align 4, !tbaa !154
  %212 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 58
  store float 0.000000e+00, ptr %212, align 8, !tbaa !155
  %213 = tail call i32 @BKE_render_num_threads(ptr noundef nonnull %8) #23
  %214 = trunc i32 %213 to i16
  %215 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 14
  store i16 %214, ptr %215, align 2, !tbaa !156
  br label %216

216:                                              ; preds = %204, %114
  ret void
}

declare double @PIL_check_seconds_timer() local_unnamed_addr #1

declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BKE_imtype_is_movie(i8 noundef zeroext) local_unnamed_addr #1

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @make_sample_tables(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

declare void @RE_parts_clamp(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @RE_init_threadcount(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45
  %3 = tail call i32 @BKE_render_num_threads(ptr noundef nonnull %2) #23
  %4 = trunc i32 %3 to i16
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 14
  store i16 %4, ptr %5, align 2, !tbaa !156
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RE_ChangeResolution(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  store i32 %1, ptr %5, align 4, !tbaa !132
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  store i32 %2, ptr %6, align 8, !tbaa !133
  %7 = icmp eq ptr %3, null
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  br i1 %7, label %20, label %9

9:                                                ; preds = %4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !141
  %10 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !142
  %12 = load i32, ptr %8, align 4, !tbaa !143
  %13 = sub nsw i32 %11, %12
  %14 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 20
  store i32 %13, ptr %14, align 8, !tbaa !81
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !144
  %17 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !145
  %19 = sub nsw i32 %16, %18
  br label %25

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 2
  store i32 0, ptr %21, align 4, !tbaa !79
  store i32 0, ptr %8, align 4, !tbaa !77
  %22 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 1
  store i32 %1, ptr %22, align 4, !tbaa !136
  %23 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 3
  store i32 %2, ptr %23, align 4, !tbaa !139
  %24 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 20
  store i32 %1, ptr %24, align 8, !tbaa !81
  br label %25

25:                                               ; preds = %9, %20
  %26 = phi i32 [ %19, %9 ], [ %2, %20 ]
  %27 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 21
  store i32 %26, ptr %27, align 4, !tbaa !82
  %28 = tail call i32 @llvm.smin.i32(i32 %1, i32 %2)
  %29 = sitofp i32 %28 to float
  %30 = fdiv float 2.000000e+00, %29
  %31 = fadd float %30, 1.000000e+00
  %32 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 19
  store float %31, ptr %32, align 4, !tbaa !146
  tail call void @RE_parts_clamp(ptr noundef %0) #23
  %33 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %34 = load ptr, ptr %33, align 8, !tbaa !66
  %35 = icmp eq ptr %34, null
  br i1 %35, label %145, label %36

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull %37, i32 noundef 2) #23
  %38 = load ptr, ptr %33, align 8, !tbaa !66
  %39 = getelementptr inbounds %struct.RenderResult, ptr %38, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !70
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %57

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.RenderResult, ptr %38, i64 0, i32 12
  %44 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 61
  %45 = load i16, ptr %44, align 8, !tbaa !45
  %46 = sext i16 %45 to i32
  %47 = tail call ptr @BLI_findlink(ptr noundef nonnull %43, i32 noundef %46) #23
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load ptr, ptr %43, align 8, !tbaa !63
  br label %51

51:                                               ; preds = %49, %42
  %52 = phi ptr [ %50, %49 ], [ %47, %42 ]
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.RenderLayer, ptr %52, i64 0, i32 11
  %56 = load ptr, ptr %55, align 8, !tbaa !73
  br label %57

57:                                               ; preds = %54, %51, %36
  %58 = phi ptr [ %40, %36 ], [ %56, %54 ], [ null, %51 ]
  %59 = icmp eq ptr %58, null
  br i1 %59, label %144, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  %62 = tail call ptr @render_result_new(ptr noundef %0, ptr noundef nonnull %61, i32 noundef 0, i32 noundef 0, ptr noundef null) #23
  store ptr %62, ptr %33, align 8, !tbaa !66
  %63 = icmp eq ptr %62, null
  br i1 %63, label %144, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.RenderResult, ptr %62, i64 0, i32 7
  %66 = load ptr, ptr %65, align 8, !tbaa !70
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %83

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.RenderResult, ptr %62, i64 0, i32 12
  %70 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 61
  %71 = load i16, ptr %70, align 8, !tbaa !45
  %72 = sext i16 %71 to i32
  %73 = tail call ptr @BLI_findlink(ptr noundef nonnull %69, i32 noundef %72) #23
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load ptr, ptr %69, align 8, !tbaa !63
  br label %77

77:                                               ; preds = %75, %68
  %78 = phi ptr [ %76, %75 ], [ %73, %68 ]
  %79 = icmp eq ptr %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.RenderLayer, ptr %78, i64 0, i32 11
  %82 = load ptr, ptr %81, align 8, !tbaa !73
  br label %83

83:                                               ; preds = %80, %77, %64
  %84 = phi ptr [ %66, %64 ], [ %82, %80 ], [ null, %77 ]
  %85 = getelementptr inbounds %struct.RenderResult, ptr %38, i64 0, i32 2
  %86 = load i32, ptr %85, align 8, !tbaa !68
  %87 = sitofp i32 %86 to float
  %88 = load ptr, ptr %33, align 8, !tbaa !66
  %89 = getelementptr inbounds %struct.RenderResult, ptr %88, i64 0, i32 2
  %90 = load i32, ptr %89, align 8, !tbaa !68
  %91 = sitofp i32 %90 to float
  %92 = fdiv float %87, %91
  %93 = getelementptr inbounds %struct.RenderResult, ptr %38, i64 0, i32 3
  %94 = load i32, ptr %93, align 4, !tbaa !69
  %95 = sitofp i32 %94 to float
  %96 = getelementptr inbounds %struct.RenderResult, ptr %88, i64 0, i32 3
  %97 = load i32, ptr %96, align 4, !tbaa !69
  %98 = sitofp i32 %97 to float
  %99 = fdiv float %95, %98
  %100 = icmp sgt i32 %90, 0
  br i1 %100, label %101, label %144

101:                                              ; preds = %83
  %102 = icmp sgt i32 %97, 0
  %103 = zext nneg i32 %90 to i64
  %104 = zext nneg i32 %90 to i64
  %105 = zext nneg i32 %97 to i64
  br label %106

106:                                              ; preds = %101, %141
  %107 = phi i64 [ 0, %101 ], [ %142, %141 ]
  br i1 %102, label %108, label %141

108:                                              ; preds = %106
  %109 = trunc i64 %107 to i32
  %110 = sitofp i32 %109 to float
  %111 = fmul float %92, %110
  %112 = fptosi float %111 to i32
  br label %113

113:                                              ; preds = %108, %113
  %114 = phi i64 [ 0, %108 ], [ %139, %113 ]
  %115 = trunc i64 %114 to i32
  %116 = sitofp i32 %115 to float
  %117 = fmul float %99, %116
  %118 = fptosi float %117 to i32
  %119 = mul i64 %114, %103
  %120 = add i64 %119, %107
  %121 = mul nsw i32 %86, %118
  %122 = add nsw i32 %121, %112
  %123 = shl i64 %120, 2
  %124 = and i64 %123, 4294967292
  %125 = getelementptr inbounds float, ptr %84, i64 %124
  %126 = shl nsw i32 %122, 2
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds float, ptr %58, i64 %127
  %129 = load float, ptr %128, align 4, !tbaa !127
  store float %129, ptr %125, align 4, !tbaa !127
  %130 = getelementptr inbounds float, ptr %128, i64 1
  %131 = load float, ptr %130, align 4, !tbaa !127
  %132 = getelementptr inbounds float, ptr %125, i64 1
  store float %131, ptr %132, align 4, !tbaa !127
  %133 = getelementptr inbounds float, ptr %128, i64 2
  %134 = load float, ptr %133, align 4, !tbaa !127
  %135 = getelementptr inbounds float, ptr %125, i64 2
  store float %134, ptr %135, align 4, !tbaa !127
  %136 = getelementptr inbounds float, ptr %128, i64 3
  %137 = load float, ptr %136, align 4, !tbaa !127
  %138 = getelementptr inbounds float, ptr %125, i64 3
  store float %137, ptr %138, align 4, !tbaa !127
  %139 = add nuw nsw i64 %114, 1
  %140 = icmp eq i64 %139, %105
  br i1 %140, label %141, label %113, !llvm.loop !157

141:                                              ; preds = %113, %106
  %142 = add nuw nsw i64 %107, 1
  %143 = icmp eq i64 %142, %104
  br i1 %143, label %144, label %106, !llvm.loop !158

144:                                              ; preds = %141, %83, %57, %60
  tail call void @render_result_free(ptr noundef %38) #23
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull %37) #23
  br label %145

145:                                              ; preds = %144, %25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @RE_ChangeModeFlag(ptr nocapture noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #6 {
  %4 = icmp eq i8 %2, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = xor i32 %1, -1
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %8 = load i32, ptr %7, align 8, !tbaa !121
  %9 = and i32 %8, %6
  store i32 %9, ptr %7, align 8, !tbaa !121
  br label %14

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %12 = load i32, ptr %11, align 8, !tbaa !121
  %13 = or i32 %12, %1
  store i32 %13, ptr %11, align 8, !tbaa !121
  br label %14

14:                                               ; preds = %10, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @render_update_anim_renderdata(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.RenderData, ptr %1, i64 0, i32 66
  %4 = load float, ptr %3, align 8, !tbaa !159
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 66
  store float %4, ptr %5, align 8, !tbaa !160
  %6 = getelementptr inbounds %struct.RenderData, ptr %1, i64 0, i32 62
  %7 = load i16, ptr %6, align 2, !tbaa !161
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 62
  store i16 %7, ptr %8, align 2, !tbaa !162
  %9 = getelementptr inbounds %struct.RenderData, ptr %1, i64 0, i32 16
  %10 = load float, ptr %9, align 8, !tbaa !163
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 16
  store float %10, ptr %11, align 8, !tbaa !164
  %12 = getelementptr inbounds %struct.RenderData, ptr %1, i64 0, i32 113
  %13 = load i32, ptr %12, align 8, !tbaa !165
  %14 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 113
  store i32 %13, ptr %14, align 8, !tbaa !166
  %15 = getelementptr inbounds %struct.RenderData, ptr %1, i64 0, i32 114
  %16 = load float, ptr %15, align 4, !tbaa !167
  %17 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 114
  store float %16, ptr %17, align 4, !tbaa !168
  %18 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 60
  tail call void @BLI_freelistN(ptr noundef nonnull %18) #23
  %19 = getelementptr inbounds %struct.RenderData, ptr %1, i64 0, i32 60
  tail call void @BLI_duplicatelist(ptr noundef nonnull %18, ptr noundef nonnull %19) #23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RE_SetWindow(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !140
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 36
  store float %2, ptr %6, align 8, !tbaa !169
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 37
  store float %3, ptr %7, align 4, !tbaa !170
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %9 = load i32, ptr %8, align 8, !tbaa !121
  %10 = and i32 %9, -9
  store i32 %10, ptr %8, align 8, !tbaa !121
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35
  %12 = load float, ptr %5, align 4, !tbaa !171
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 16, i32 1
  %14 = load float, ptr %13, align 4, !tbaa !172
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 16, i32 2
  %16 = load float, ptr %15, align 4, !tbaa !173
  %17 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 16, i32 3
  %18 = load float, ptr %17, align 4, !tbaa !174
  tail call void @perspective_m4(ptr noundef nonnull %11, float noundef %12, float noundef %14, float noundef %16, float noundef %18, float noundef %2, float noundef %3) #23
  ret void
}

declare void @perspective_m4(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @RE_SetOrtho(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !140
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 36
  store float %2, ptr %6, align 8, !tbaa !169
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 37
  store float %3, ptr %7, align 4, !tbaa !170
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %9 = load i32, ptr %8, align 8, !tbaa !121
  %10 = or i32 %9, 8
  store i32 %10, ptr %8, align 8, !tbaa !121
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35
  %12 = load float, ptr %5, align 4, !tbaa !171
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 16, i32 1
  %14 = load float, ptr %13, align 4, !tbaa !172
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 16, i32 2
  %16 = load float, ptr %15, align 4, !tbaa !173
  %17 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 16, i32 3
  %18 = load float, ptr %17, align 4, !tbaa !174
  tail call void @orthographic_m4(ptr noundef nonnull %11, float noundef %12, float noundef %14, float noundef %16, float noundef %18, float noundef %2, float noundef %3) #23
  ret void
}

declare void @orthographic_m4(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @RE_SetView(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  tail call void @copy_m4_m4(ptr noundef nonnull %3, ptr noundef %1) #23
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 33
  %5 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %3) #23
  ret void
}

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @RE_GetViewPlane(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !140
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %6 = load i32, ptr %5, align 8, !tbaa !121
  %7 = and i32 %6, 512
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !141
  br label %12

11:                                               ; preds = %3
  tail call void @BLI_rcti_init(ptr noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #23
  br label %12

12:                                               ; preds = %11, %9
  ret void
}

declare void @BLI_rcti_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @RE_GetView(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  tail call void @copy_m4_m4(ptr noundef %1, ptr noundef nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @RE_display_init_cb(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #13 {
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 82
  store ptr %2, ptr %4, align 8, !tbaa !86
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 83
  store ptr %1, ptr %5, align 8, !tbaa !100
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @RE_display_clear_cb(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #13 {
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 84
  store ptr %2, ptr %4, align 8, !tbaa !87
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 85
  store ptr %1, ptr %5, align 8, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @RE_display_update_cb(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #13 {
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 86
  store ptr %2, ptr %4, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 87
  store ptr %1, ptr %5, align 8, !tbaa !98
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @RE_current_scene_update_cb(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #13 {
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 88
  store ptr %2, ptr %4, align 8, !tbaa !89
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 89
  store ptr %1, ptr %5, align 8, !tbaa !175
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @RE_stats_draw_cb(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #13 {
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 90
  store ptr %2, ptr %4, align 8, !tbaa !94
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 91
  store ptr %1, ptr %5, align 8, !tbaa !97
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @RE_progress_cb(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #13 {
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 92
  store ptr %2, ptr %4, align 8, !tbaa !90
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 93
  store ptr %1, ptr %5, align 8, !tbaa !96
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @RE_draw_lock_cb(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #13 {
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 94
  store ptr %2, ptr %4, align 8, !tbaa !176
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 95
  store ptr %1, ptr %5, align 8, !tbaa !177
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @RE_test_break_cb(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #13 {
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  store ptr %2, ptr %4, align 8, !tbaa !91
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  store ptr %1, ptr %5, align 8, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @panorama_pixel_rot(ptr nocapture noundef readonly %0) local_unnamed_addr #14 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !142
  %5 = load i32, ptr %2, align 4, !tbaa !143
  %6 = sub nsw i32 %4, %5
  %7 = sitofp i32 %6 to float
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %9 = load i32, ptr %8, align 4, !tbaa !132
  %10 = sitofp i32 %9 to float
  %11 = fdiv float %7, %10
  %12 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 20
  %13 = load i32, ptr %12, align 8, !tbaa !81
  %14 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 22
  %15 = load i32, ptr %14, align 8, !tbaa !178
  %16 = add i32 %13, -1
  %17 = add i32 %16, %15
  %18 = sdiv i32 %17, %15
  %19 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 16
  %20 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 16, i32 1
  %21 = load float, ptr %20, align 4, !tbaa !179
  %22 = load float, ptr %19, align 4, !tbaa !180
  %23 = fsub float %21, %22
  %24 = fdiv float %23, %10
  %25 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 36
  %26 = load float, ptr %25, align 8, !tbaa !169
  %27 = fdiv float %24, %26
  %28 = fpext float %27 to double
  %29 = tail call double @atan(double noundef %28) #23
  %30 = fptrunc double %29 to float
  %31 = load float, ptr %20, align 4, !tbaa !179
  %32 = load float, ptr %19, align 4, !tbaa !180
  %33 = fsub float %31, %32
  %34 = fmul float %11, %33
  %35 = sitofp i32 %18 to float
  %36 = fdiv float %34, %35
  %37 = fmul float %36, 5.000000e-01
  %38 = load float, ptr %25, align 8, !tbaa !169
  %39 = fdiv float %37, %38
  %40 = fpext float %39 to double
  %41 = tail call double @atan(double noundef %40) #23
  %42 = fptrunc double %41 to float
  %43 = fmul float %30, 5.000000e-01
  %44 = load i32, ptr %14, align 8, !tbaa !178
  %45 = sitofp i32 %44 to float
  %46 = fmul float %43, %45
  %47 = fdiv float %42, %46
  %48 = fmul float %47, %30
  ret float %48
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @atan(double noundef) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define dso_local void @RE_TileProcessor(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @threaded_tile_processor(ptr noundef %0)
  %2 = tail call double @PIL_check_seconds_timer() #23
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 14
  %5 = load double, ptr %4, align 8, !tbaa !123
  %6 = fsub double %2, %5
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 15
  store double %6, ptr %7, align 8, !tbaa !181
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 90
  %9 = load ptr, ptr %8, align 8, !tbaa !94
  %10 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 91
  %11 = load ptr, ptr %10, align 8, !tbaa !97
  tail call void %9(ptr noundef %11, ptr noundef nonnull %3) #23
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @threaded_tile_processor(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [64 x i8], align 16
  %3 = alloca [1 x %struct.RenderThread], align 16
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #23
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 16
  %6 = load float, ptr %5, align 4, !tbaa.struct !140
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 16, i32 1
  %8 = load float, ptr %7, align 4, !tbaa.struct !182
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 16, i32 2
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull %11, i32 noundef 2) #23
  %12 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !66
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %17 = load i32, ptr %16, align 4, !tbaa !150
  %18 = and i32 %17, 524296
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %15, %1
  tail call void @render_result_free(ptr noundef %13) #23
  %21 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 75
  %22 = load ptr, ptr %21, align 8, !tbaa !183
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %26 = load i32, ptr %25, align 4, !tbaa !150
  %27 = and i32 %26, 524296
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  %31 = tail call ptr @render_result_new(ptr noundef %0, ptr noundef nonnull %30, i32 noundef 0, i32 noundef 0, ptr noundef null) #23
  br label %46

32:                                               ; preds = %24, %20
  %33 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %34 = load i32, ptr %33, align 4, !tbaa !150
  %35 = and i32 %34, 32768
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 11
  %39 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  %40 = tail call ptr @render_result_new_full_sample(ptr noundef %0, ptr noundef nonnull %38, ptr noundef nonnull %39, i32 noundef 0, i32 noundef 1) #23
  br label %46

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  %43 = lshr i32 %34, 10
  %44 = and i32 %43, 1
  %45 = tail call ptr @render_result_new(ptr noundef %0, ptr noundef nonnull %42, i32 noundef 0, i32 noundef %44, ptr noundef null) #23
  br label %46

46:                                               ; preds = %37, %41, %29
  %47 = phi ptr [ %31, %29 ], [ %45, %41 ], [ %40, %37 ]
  store ptr %47, ptr %12, align 8, !tbaa !66
  br label %48

48:                                               ; preds = %46, %15
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull %11) #23
  %49 = load ptr, ptr %12, align 8, !tbaa !66
  %50 = icmp eq ptr %49, null
  br i1 %50, label %472, label %51

51:                                               ; preds = %48
  tail call void @RE_parts_init(ptr noundef %0, i8 noundef zeroext 1) #23
  %52 = load ptr, ptr %12, align 8, !tbaa !66
  %53 = getelementptr inbounds %struct.RenderResult, ptr %52, i64 0, i32 15
  %54 = load i32, ptr %53, align 8, !tbaa !184
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  tail call void @render_result_exr_file_begin(ptr noundef %0) #23
  br label %57

57:                                               ; preds = %56, %51
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6240) @R, ptr noundef nonnull align 8 dereferenceable(6240) %0, i64 6240, i1 false), !tbaa.struct !185
  store ptr @thread_break, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 96), align 8, !tbaa !91
  %58 = tail call ptr @BLI_thread_queue_init() #23
  %59 = tail call ptr @BLI_thread_queue_init() #23
  %60 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %61 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %62 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 50
  %63 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  %64 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 1
  %65 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 20
  %66 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 22
  %67 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 36
  %68 = fsub float %8, %6
  %69 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 37
  %70 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35
  %71 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 16, i32 3
  %72 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  %73 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 50
  %74 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 14
  %75 = getelementptr inbounds [1 x %struct.RenderThread], ptr %3, i64 0, i64 0, i32 1
  %76 = getelementptr inbounds [1 x %struct.RenderThread], ptr %3, i64 0, i64 0, i32 2
  %77 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 75
  %78 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %79 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 86
  %80 = getelementptr inbounds [1 x %struct.RenderThread], ptr %3, i64 0, i64 0, i32 3
  %81 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 87
  %82 = getelementptr inbounds [1 x %struct.RenderThread], ptr %3, i64 0, i64 0, i32 4
  %83 = getelementptr inbounds [1 x %struct.RenderThread], ptr %3, i64 0, i64 0, i32 3
  %84 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %85 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98
  %86 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 6
  %87 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 16
  %88 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 90
  %89 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 91
  %90 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 10
  %91 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 92
  %92 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 93
  %93 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %94 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %95 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 75
  %96 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %97 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 86
  %98 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 87
  %99 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %100 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  br label %101

101:                                              ; preds = %438, %57
  %102 = phi i32 [ 0, %57 ], [ %215, %438 ]
  %103 = phi i32 [ 0, %57 ], [ %392, %438 ]
  %104 = load i32, ptr %60, align 4, !tbaa !132
  %105 = load i32, ptr %61, align 8, !tbaa !121
  %106 = and i32 %105, 1024
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = icmp eq i32 %102, 0
  %110 = zext i1 %109 to i8
  br label %212

111:                                              ; preds = %101
  %112 = load ptr, ptr %62, align 8, !tbaa !34
  %113 = icmp eq ptr %112, null
  br i1 %113, label %137, label %114

114:                                              ; preds = %111, %131
  %115 = phi ptr [ %135, %131 ], [ %112, %111 ]
  %116 = phi i8 [ %134, %131 ], [ 0, %111 ]
  %117 = phi ptr [ %133, %131 ], [ null, %111 ]
  %118 = phi i32 [ %132, %131 ], [ %104, %111 ]
  %119 = getelementptr inbounds %struct.RenderPart, ptr %115, i64 0, i32 18
  %120 = load i16, ptr %119, align 2, !tbaa !187
  %121 = icmp eq i16 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %114
  %123 = getelementptr inbounds %struct.RenderPart, ptr %115, i64 0, i32 16
  %124 = load i32, ptr %123, align 8, !tbaa !189
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.RenderPart, ptr %115, i64 0, i32 13
  %128 = load i32, ptr %127, align 8, !tbaa !190
  %129 = icmp slt i32 %128, %118
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  br label %131

131:                                              ; preds = %130, %126, %122, %114
  %132 = phi i32 [ %128, %130 ], [ %118, %126 ], [ %118, %122 ], [ %118, %114 ]
  %133 = phi ptr [ %115, %130 ], [ %117, %126 ], [ %117, %122 ], [ %117, %114 ]
  %134 = phi i8 [ 1, %130 ], [ %116, %126 ], [ %116, %122 ], [ %116, %114 ]
  %135 = load ptr, ptr %115, align 8, !tbaa !34
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %114, !llvm.loop !191

137:                                              ; preds = %131, %111
  %138 = phi i32 [ %104, %111 ], [ %132, %131 ]
  %139 = phi ptr [ null, %111 ], [ %133, %131 ]
  %140 = phi i8 [ 0, %111 ], [ %134, %131 ]
  %141 = icmp eq ptr %139, null
  br i1 %141, label %212, label %142

142:                                              ; preds = %137
  %143 = load i32, ptr %64, align 4, !tbaa !142
  %144 = load i32, ptr %63, align 4, !tbaa !143
  %145 = sub nsw i32 %143, %144
  %146 = sitofp i32 %145 to float
  %147 = sitofp i32 %104 to float
  %148 = fdiv float %146, %147
  %149 = load i32, ptr %65, align 8, !tbaa !81
  %150 = load i32, ptr %66, align 8, !tbaa !178
  %151 = add i32 %149, -1
  %152 = add i32 %151, %150
  %153 = sdiv i32 %152, %150
  %154 = load float, ptr %7, align 4, !tbaa !179
  %155 = load float, ptr %5, align 4, !tbaa !180
  %156 = fsub float %154, %155
  %157 = fdiv float %156, %147
  %158 = load float, ptr %67, align 8, !tbaa !169
  %159 = fdiv float %157, %158
  %160 = fpext float %159 to double
  %161 = call double @atan(double noundef %160) #23
  %162 = fptrunc double %161 to float
  %163 = load float, ptr %7, align 4, !tbaa !179
  %164 = load float, ptr %5, align 4, !tbaa !180
  %165 = fsub float %163, %164
  %166 = fmul float %148, %165
  %167 = sitofp i32 %153 to float
  %168 = fdiv float %166, %167
  %169 = fmul float %168, 5.000000e-01
  %170 = load float, ptr %67, align 8, !tbaa !169
  %171 = fdiv float %169, %170
  %172 = fpext float %171 to double
  %173 = call double @atan(double noundef %172) #23
  %174 = fptrunc double %173 to float
  %175 = fmul float %162, 5.000000e-01
  %176 = load i32, ptr %66, align 8, !tbaa !178
  %177 = sitofp i32 %176 to float
  %178 = fmul float %175, %177
  %179 = fdiv float %174, %178
  %180 = fmul float %179, %162
  %181 = load i32, ptr %60, align 4, !tbaa !132
  %182 = getelementptr inbounds %struct.RenderPart, ptr %139, i64 0, i32 13
  %183 = load i32, ptr %182, align 8, !tbaa !190
  %184 = getelementptr inbounds %struct.RenderPart, ptr %139, i64 0, i32 13, i32 1
  %185 = load i32, ptr %184, align 4, !tbaa !192
  %186 = add i32 %183, %185
  %187 = sub i32 %181, %186
  %188 = sdiv i32 %187, 2
  %189 = sitofp i32 %188 to float
  store float %189, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 28), align 8, !tbaa !193
  %190 = fmul float %68, %189
  %191 = sitofp i32 %181 to float
  %192 = fdiv float %190, %191
  store float %192, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 29), align 4, !tbaa !194
  %193 = fadd float %6, %192
  store float %193, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 16), align 4, !tbaa !171
  %194 = fadd float %8, %192
  store float %194, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 16, i32 1), align 8, !tbaa !172
  %195 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 36), align 8, !tbaa !169
  %196 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 37), align 4, !tbaa !170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 16), i64 16, i1 false), !tbaa.struct !140
  store float %195, ptr %67, align 8, !tbaa !169
  store float %196, ptr %69, align 4, !tbaa !170
  %197 = load i32, ptr %61, align 8, !tbaa !121
  %198 = and i32 %197, -9
  store i32 %198, ptr %61, align 8, !tbaa !121
  %199 = load float, ptr %5, align 4, !tbaa !171
  %200 = load float, ptr %7, align 4, !tbaa !172
  %201 = load float, ptr %9, align 4, !tbaa !173
  %202 = load float, ptr %71, align 4, !tbaa !174
  call void @perspective_m4(ptr noundef nonnull %70, float noundef %199, float noundef %200, float noundef %201, float noundef %202, float noundef %195, float noundef %196) #23
  call void @copy_m4_m4(ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35), ptr noundef nonnull %70) #23
  %203 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 28), align 8, !tbaa !193
  %204 = fneg float %203
  %205 = fmul float %180, %204
  call void @project_renderdata(ptr noundef %0, ptr noundef nonnull @projectverto, i8 noundef zeroext 1, float noundef %205, i8 noundef zeroext 1) #23
  %206 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 28), align 8, !tbaa !193
  %207 = fmul float %180, %206
  %208 = call float @sinf(float noundef %207) #23
  store float %208, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 26), align 8, !tbaa !195
  %209 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 28), align 8, !tbaa !193
  %210 = fmul float %180, %209
  %211 = call float @cosf(float noundef %210) #23
  store float %211, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 27), align 4, !tbaa !196
  br label %212

212:                                              ; preds = %137, %142, %108
  %213 = phi i32 [ %104, %108 ], [ %138, %142 ], [ %138, %137 ]
  %214 = phi i8 [ %110, %108 ], [ %140, %142 ], [ %140, %137 ]
  %215 = add nuw nsw i32 %102, 1
  %216 = icmp eq i8 %214, 0
  br i1 %216, label %443, label %217

217:                                              ; preds = %212, %322
  %218 = phi i32 [ %323, %322 ], [ %103, %212 ]
  %219 = load i32, ptr %60, align 4, !tbaa !132
  %220 = sdiv i32 %219, 2
  %221 = sext i32 %220 to i64
  %222 = load i32, ptr %72, align 8, !tbaa !133
  %223 = sdiv i32 %222, 2
  %224 = sext i32 %223 to i64
  %225 = sext i32 %219 to i64
  %226 = sext i32 %222 to i64
  %227 = mul nsw i64 %226, %225
  %228 = load ptr, ptr %73, align 8, !tbaa !34
  %229 = icmp eq ptr %228, null
  br i1 %229, label %262, label %230

230:                                              ; preds = %217, %256
  %231 = phi ptr [ %260, %256 ], [ %228, %217 ]
  %232 = phi i64 [ %259, %256 ], [ 1, %217 ]
  %233 = phi i64 [ %258, %256 ], [ %224, %217 ]
  %234 = phi i64 [ %257, %256 ], [ %221, %217 ]
  %235 = getelementptr inbounds %struct.RenderPart, ptr %231, i64 0, i32 18
  %236 = load i16, ptr %235, align 2, !tbaa !187
  %237 = icmp eq i16 %236, 2
  br i1 %237, label %238, label %256

238:                                              ; preds = %230
  %239 = getelementptr inbounds %struct.RenderPart, ptr %231, i64 0, i32 13
  %240 = load i32, ptr %239, align 4, !tbaa !143
  %241 = getelementptr inbounds %struct.RenderPart, ptr %231, i64 0, i32 13, i32 1
  %242 = load i32, ptr %241, align 4, !tbaa !142
  %243 = add nsw i32 %242, %240
  %244 = sdiv i32 %243, 2
  %245 = sext i32 %244 to i64
  %246 = add nsw i64 %234, %245
  %247 = getelementptr inbounds %struct.RenderPart, ptr %231, i64 0, i32 13, i32 2
  %248 = load i32, ptr %247, align 4, !tbaa !145
  %249 = getelementptr inbounds %struct.RenderPart, ptr %231, i64 0, i32 13, i32 3
  %250 = load i32, ptr %249, align 4, !tbaa !144
  %251 = add nsw i32 %250, %248
  %252 = sdiv i32 %251, 2
  %253 = sext i32 %252 to i64
  %254 = add nsw i64 %233, %253
  %255 = add nsw i64 %232, 1
  br label %256

256:                                              ; preds = %238, %230
  %257 = phi i64 [ %246, %238 ], [ %234, %230 ]
  %258 = phi i64 [ %254, %238 ], [ %233, %230 ]
  %259 = phi i64 [ %255, %238 ], [ %232, %230 ]
  %260 = load ptr, ptr %231, align 8, !tbaa !34
  %261 = icmp eq ptr %260, null
  br i1 %261, label %262, label %230, !llvm.loop !197

262:                                              ; preds = %256, %217
  %263 = phi i64 [ %221, %217 ], [ %257, %256 ]
  %264 = phi i64 [ %224, %217 ], [ %258, %256 ]
  %265 = phi i64 [ 1, %217 ], [ %259, %256 ]
  %266 = sdiv i64 %263, %265
  %267 = sdiv i64 %264, %265
  %268 = load ptr, ptr %73, align 8, !tbaa !34
  %269 = icmp eq ptr %268, null
  br i1 %269, label %319, label %270

270:                                              ; preds = %262, %314
  %271 = phi ptr [ %317, %314 ], [ %268, %262 ]
  %272 = phi i64 [ %316, %314 ], [ %227, %262 ]
  %273 = phi ptr [ %315, %314 ], [ null, %262 ]
  %274 = getelementptr inbounds %struct.RenderPart, ptr %271, i64 0, i32 18
  %275 = load i16, ptr %274, align 2, !tbaa !187
  %276 = icmp eq i16 %275, 0
  br i1 %276, label %277, label %314

277:                                              ; preds = %270
  %278 = getelementptr inbounds %struct.RenderPart, ptr %271, i64 0, i32 16
  %279 = load i32, ptr %278, align 8, !tbaa !189
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %314

281:                                              ; preds = %277
  %282 = getelementptr inbounds %struct.RenderPart, ptr %271, i64 0, i32 13
  %283 = load i32, ptr %282, align 4, !tbaa !143
  %284 = getelementptr inbounds %struct.RenderPart, ptr %271, i64 0, i32 13, i32 1
  %285 = load i32, ptr %284, align 4, !tbaa !142
  %286 = add nsw i32 %285, %283
  %287 = sdiv i32 %286, 2
  %288 = sext i32 %287 to i64
  %289 = sub nsw i64 %266, %288
  %290 = getelementptr inbounds %struct.RenderPart, ptr %271, i64 0, i32 13, i32 2
  %291 = load i32, ptr %290, align 4, !tbaa !145
  %292 = getelementptr inbounds %struct.RenderPart, ptr %271, i64 0, i32 13, i32 3
  %293 = load i32, ptr %292, align 4, !tbaa !144
  %294 = add nsw i32 %293, %291
  %295 = sdiv i32 %294, 2
  %296 = sext i32 %295 to i64
  %297 = sub nsw i64 %267, %296
  %298 = mul nsw i64 %289, %289
  %299 = mul nsw i64 %297, %297
  %300 = add nuw nsw i64 %299, %298
  %301 = sitofp i64 %300 to double
  %302 = call double @sqrt(double noundef %301) #23
  %303 = fptosi double %302 to i64
  %304 = icmp sgt i64 %272, %303
  br i1 %304, label %305, label %314

305:                                              ; preds = %281
  %306 = load i32, ptr %61, align 8, !tbaa !121
  %307 = and i32 %306, 1024
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %314, label %309

309:                                              ; preds = %305
  %310 = load i32, ptr %282, align 8, !tbaa !190
  %311 = icmp eq i32 %310, %213
  %312 = select i1 %311, ptr %271, ptr %273
  %313 = select i1 %311, i64 %303, i64 %272
  br label %314

314:                                              ; preds = %309, %305, %281, %277, %270
  %315 = phi ptr [ %273, %277 ], [ %273, %270 ], [ %273, %281 ], [ %312, %309 ], [ %271, %305 ]
  %316 = phi i64 [ %272, %277 ], [ %272, %270 ], [ %272, %281 ], [ %313, %309 ], [ %303, %305 ]
  %317 = load ptr, ptr %271, align 8, !tbaa !34
  %318 = icmp eq ptr %317, null
  br i1 %318, label %319, label %270, !llvm.loop !198

319:                                              ; preds = %314, %262
  %320 = phi ptr [ null, %262 ], [ %315, %314 ]
  %321 = icmp eq ptr %320, null
  br i1 %321, label %325, label %322

322:                                              ; preds = %319
  %323 = add nsw i32 %218, 1
  %324 = getelementptr inbounds %struct.RenderPart, ptr %320, i64 0, i32 16
  store i32 %323, ptr %324, align 8, !tbaa !189
  call void @BLI_thread_queue_push(ptr noundef %58, ptr noundef nonnull %320) #23
  br label %217, !llvm.loop !199

325:                                              ; preds = %319
  call void @BLI_thread_queue_nowait(ptr noundef %58) #23
  %326 = load i16, ptr %74, align 2, !tbaa !156
  %327 = sext i16 %326 to i32
  call void @BLI_init_threads(ptr noundef nonnull %4, ptr noundef nonnull @do_render_thread, i32 noundef %327) #23
  %328 = load i16, ptr %74, align 2, !tbaa !156
  %329 = icmp sgt i16 %328, 0
  br i1 %329, label %330, label %353

330:                                              ; preds = %325, %348
  %331 = phi i64 [ %349, %348 ], [ 0, %325 ]
  %332 = getelementptr inbounds [1 x %struct.RenderThread], ptr %3, i64 0, i64 %331
  store ptr %58, ptr %3, align 16, !tbaa !200
  store ptr %59, ptr %75, align 8, !tbaa !202
  %333 = trunc i64 %331 to i32
  store i32 %333, ptr %76, align 16, !tbaa !203
  %334 = load ptr, ptr %77, align 8, !tbaa !183
  %335 = icmp eq ptr %334, null
  br i1 %335, label %341, label %336

336:                                              ; preds = %330
  %337 = load i32, ptr %78, align 4, !tbaa !150
  %338 = and i32 %337, 524296
  %339 = icmp eq i32 %338, 0
  %340 = zext i1 %339 to i32
  br label %341

341:                                              ; preds = %330, %336
  %342 = phi i32 [ %340, %336 ], [ 1, %330 ]
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %347, label %344

344:                                              ; preds = %341
  %345 = load ptr, ptr %79, align 8, !tbaa !88
  store ptr %345, ptr %80, align 8, !tbaa !204
  %346 = load ptr, ptr %81, align 8, !tbaa !98
  store ptr %346, ptr %82, align 16, !tbaa !205
  br label %348

347:                                              ; preds = %341
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %83, i8 0, i64 16, i1 false)
  br label %348

348:                                              ; preds = %347, %344
  call void @BLI_insert_thread(ptr noundef nonnull %4, ptr noundef nonnull %332) #23
  %349 = add nuw nsw i64 %331, 1
  %350 = load i16, ptr %74, align 2, !tbaa !156
  %351 = sext i16 %350 to i64
  %352 = icmp slt i64 %349, %351
  br i1 %352, label %330, label %353, !llvm.loop !206

353:                                              ; preds = %348, %325
  br label %354

354:                                              ; preds = %353, %437
  %355 = phi i32 [ %392, %437 ], [ %218, %353 ]
  %356 = call double @PIL_check_seconds_timer() #23
  br label %357

357:                                              ; preds = %354, %399
  %358 = phi i32 [ %392, %399 ], [ %355, %354 ]
  %359 = call double @PIL_check_seconds_timer() #23
  %360 = fsub double %356, %359
  %361 = fadd double %360, 1.000000e+00
  %362 = fmul double %361, 1.000000e+03
  %363 = fptosi double %362 to i32
  %364 = call ptr @BLI_thread_queue_pop_timeout(ptr noundef %59, i32 noundef %363) #23
  %365 = icmp eq ptr %364, null
  br i1 %365, label %391, label %366

366:                                              ; preds = %357
  %367 = getelementptr inbounds %struct.RenderPart, ptr %364, i64 0, i32 2
  %368 = load ptr, ptr %367, align 8, !tbaa !207
  %369 = icmp eq ptr %368, null
  br i1 %369, label %389, label %370

370:                                              ; preds = %366
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #23
  %371 = load ptr, ptr %84, align 8, !tbaa !67
  %372 = getelementptr inbounds %struct.ID, ptr %371, i64 0, i32 4, i64 2
  %373 = getelementptr inbounds %struct.RenderPart, ptr %364, i64 0, i32 16
  %374 = load i32, ptr %373, align 8, !tbaa !189
  %375 = load i32, ptr %86, align 8, !tbaa !208
  %376 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %2, i64 noundef 64, ptr noundef nonnull @.str.28, ptr noundef nonnull %372, i32 noundef %374, i32 noundef %375) #23
  store ptr %2, ptr %87, align 8, !tbaa !209
  %377 = load ptr, ptr %88, align 8, !tbaa !94
  %378 = load ptr, ptr %89, align 8, !tbaa !97
  call void %377(ptr noundef %378, ptr noundef nonnull %85) #23
  store ptr null, ptr %87, align 8, !tbaa !209
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #23
  %379 = getelementptr inbounds %struct.RenderPart, ptr %364, i64 0, i32 3
  %380 = load ptr, ptr %367, align 8, !tbaa !207
  call void @render_result_free_list(ptr noundef nonnull %379, ptr noundef %380) #23
  store ptr null, ptr %367, align 8, !tbaa !207
  %381 = load i16, ptr %90, align 2, !tbaa !210
  %382 = add i16 %381, 1
  store i16 %382, ptr %90, align 2, !tbaa !210
  %383 = load ptr, ptr %91, align 8, !tbaa !90
  %384 = load ptr, ptr %92, align 8, !tbaa !96
  %385 = sitofp i16 %382 to float
  %386 = load i32, ptr %86, align 8, !tbaa !208
  %387 = sitofp i32 %386 to float
  %388 = fdiv float %385, %387
  call void %383(ptr noundef %384, float noundef %388) #23
  br label %389

389:                                              ; preds = %370, %366
  %390 = add nsw i32 %358, -1
  br label %391

391:                                              ; preds = %389, %357
  %392 = phi i32 [ %390, %389 ], [ %358, %357 ]
  %393 = load ptr, ptr %93, align 8, !tbaa !91
  %394 = load ptr, ptr %94, align 8, !tbaa !95
  %395 = call i32 %393(ptr noundef %394) #23
  store volatile i32 %395, ptr @g_break, align 4, !tbaa !128
  %396 = icmp ne i32 %395, 0
  %397 = icmp eq i32 %392, 0
  %398 = select i1 %396, i1 true, i1 %397
  br i1 %398, label %438, label %399

399:                                              ; preds = %391
  %400 = call double @PIL_check_seconds_timer() #23
  %401 = fsub double %400, %356
  %402 = fcmp ogt double %401, 1.000000e+00
  br i1 %402, label %403, label %357, !llvm.loop !211

403:                                              ; preds = %399
  %404 = load ptr, ptr %95, align 8, !tbaa !183
  %405 = icmp eq ptr %404, null
  br i1 %405, label %411, label %406

406:                                              ; preds = %403
  %407 = load i32, ptr %96, align 4, !tbaa !150
  %408 = and i32 %407, 524296
  %409 = icmp eq i32 %408, 0
  %410 = zext i1 %409 to i32
  br label %411

411:                                              ; preds = %403, %406
  %412 = phi i32 [ %410, %406 ], [ 1, %403 ]
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %437, label %414

414:                                              ; preds = %411
  %415 = load ptr, ptr %73, align 8, !tbaa !34
  %416 = icmp eq ptr %415, null
  br i1 %416, label %437, label %417

417:                                              ; preds = %414, %434
  %418 = phi ptr [ %435, %434 ], [ %415, %414 ]
  %419 = getelementptr inbounds %struct.RenderPart, ptr %418, i64 0, i32 18
  %420 = load i16, ptr %419, align 2, !tbaa !187
  %421 = icmp eq i16 %420, 1
  br i1 %421, label %422, label %434

422:                                              ; preds = %417
  %423 = getelementptr inbounds %struct.RenderPart, ptr %418, i64 0, i32 16
  %424 = load i32, ptr %423, align 8, !tbaa !189
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %434, label %426

426:                                              ; preds = %422
  %427 = getelementptr inbounds %struct.RenderPart, ptr %418, i64 0, i32 2
  %428 = load ptr, ptr %427, align 8, !tbaa !207
  %429 = icmp eq ptr %428, null
  br i1 %429, label %434, label %430

430:                                              ; preds = %426
  %431 = load ptr, ptr %97, align 8, !tbaa !88
  %432 = load ptr, ptr %98, align 8, !tbaa !98
  %433 = getelementptr inbounds %struct.RenderResult, ptr %428, i64 0, i32 13
  call void %431(ptr noundef %432, ptr noundef nonnull %428, ptr noundef nonnull %433) #23
  br label %434

434:                                              ; preds = %417, %422, %426, %430
  %435 = load ptr, ptr %418, align 8, !tbaa !34
  %436 = icmp eq ptr %435, null
  br i1 %436, label %437, label %417, !llvm.loop !212

437:                                              ; preds = %434, %414, %411
  br label %354, !llvm.loop !211

438:                                              ; preds = %391
  call void @BLI_end_threads(ptr noundef nonnull %4) #23
  %439 = load ptr, ptr %99, align 8, !tbaa !91
  %440 = load ptr, ptr %100, align 8, !tbaa !95
  %441 = call i32 %439(ptr noundef %440) #23
  store volatile i32 %441, ptr @g_break, align 4, !tbaa !128
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %101, label %443, !llvm.loop !213

443:                                              ; preds = %438, %212
  %444 = load volatile i32, ptr @g_break, align 4, !tbaa !128
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %459, label %446

446:                                              ; preds = %443
  call void @BLI_thread_queue_nowait(ptr noundef %59) #23
  %447 = call ptr @BLI_thread_queue_pop(ptr noundef %59) #23
  %448 = icmp eq ptr %447, null
  br i1 %448, label %459, label %449

449:                                              ; preds = %446, %456
  %450 = phi ptr [ %457, %456 ], [ %447, %446 ]
  %451 = getelementptr inbounds %struct.RenderPart, ptr %450, i64 0, i32 2
  %452 = load ptr, ptr %451, align 8, !tbaa !207
  %453 = icmp eq ptr %452, null
  br i1 %453, label %456, label %454

454:                                              ; preds = %449
  %455 = getelementptr inbounds %struct.RenderPart, ptr %450, i64 0, i32 3
  call void @render_result_free_list(ptr noundef nonnull %455, ptr noundef nonnull %452) #23
  store ptr null, ptr %451, align 8, !tbaa !207
  br label %456

456:                                              ; preds = %454, %449
  %457 = call ptr @BLI_thread_queue_pop(ptr noundef %59) #23
  %458 = icmp eq ptr %457, null
  br i1 %458, label %459, label %449, !llvm.loop !214

459:                                              ; preds = %456, %446, %443
  call void @BLI_thread_queue_free(ptr noundef %59) #23
  call void @BLI_thread_queue_free(ptr noundef %58) #23
  %460 = load ptr, ptr %12, align 8, !tbaa !66
  %461 = getelementptr inbounds %struct.RenderResult, ptr %460, i64 0, i32 15
  %462 = load i32, ptr %461, align 8, !tbaa !184
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %465, label %464

464:                                              ; preds = %459
  call void @BLI_rw_mutex_lock(ptr noundef nonnull %11, i32 noundef 2) #23
  call void @render_result_exr_file_end(ptr noundef %0) #23
  call void @BLI_rw_mutex_unlock(ptr noundef nonnull %11) #23
  br label %465

465:                                              ; preds = %464, %459
  %466 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %467 = load i32, ptr %466, align 4, !tbaa !150
  %468 = and i32 %467, 1048576
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %471, label %470

470:                                              ; preds = %465
  call void @BLI_rw_mutex_lock(ptr noundef nonnull %11, i32 noundef 2) #23
  call void @render_result_exr_file_cache_write(ptr noundef %0) #23
  call void @BLI_rw_mutex_unlock(ptr noundef nonnull %11) #23
  br label %471

471:                                              ; preds = %470, %465
  store volatile i32 0, ptr @g_break, align 4, !tbaa !128
  call void @RE_parts_free(ptr noundef %0) #23
  store float %6, ptr %5, align 4, !tbaa.struct !140
  store float %8, ptr %7, align 4, !tbaa.struct !182
  store i64 %10, ptr %9, align 4
  br label %472

472:                                              ; preds = %48, %471
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @RE_allow_render_generic_object(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 55
  %3 = load i16, ptr %2, align 8, !tbaa !215
  %4 = zext i16 %3 to i32
  %5 = and i32 %4, 792
  %6 = icmp eq i32 %5, 0
  %7 = and i32 %4, 2056
  %8 = icmp ne i32 %7, 0
  %9 = or i1 %8, %6
  %10 = zext i1 %9 to i8
  ret i8 %10
}

; Function Attrs: nounwind uwtable
define dso_local void @RE_MergeFullSample(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !102
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  store ptr %1, ptr %5, align 8, !tbaa !219
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  store ptr %2, ptr %6, align 8, !tbaa !67
  %7 = tail call zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef %2) #23
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 8
  store i8 %7, ptr %8, align 8, !tbaa !220
  %9 = load ptr, ptr %5, align 8, !tbaa !219
  %10 = getelementptr inbounds %struct.Main, ptr %9, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %4, %13
  %14 = phi ptr [ %18, %13 ], [ %11, %4 ]
  %15 = getelementptr inbounds %struct.ID, ptr %14, i64 0, i32 5
  %16 = load i16, ptr %15, align 2, !tbaa !221
  %17 = or i16 %16, 1024
  store i16 %17, ptr %15, align 2, !tbaa !221
  %18 = load ptr, ptr %14, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %13, !llvm.loop !231

20:                                               ; preds = %13, %4
  %21 = getelementptr inbounds %struct.bNodeTree, ptr %3, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %53, label %24

24:                                               ; preds = %20, %50
  %25 = phi ptr [ %51, %50 ], [ %22, %20 ]
  %26 = getelementptr inbounds %struct.bNode, ptr %25, i64 0, i32 8
  %27 = load i16, ptr %26, align 4, !tbaa !232
  %28 = icmp eq i16 %27, 221
  br i1 %28, label %29, label %50

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.bNode, ptr %25, i64 0, i32 7
  %31 = load i32, ptr %30, align 8, !tbaa !234
  %32 = and i32 %31, 512
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.bNode, ptr %25, i64 0, i32 20
  %36 = load ptr, ptr %35, align 8, !tbaa !235
  %37 = icmp eq ptr %36, null
  %38 = select i1 %37, ptr %2, ptr %36
  %39 = getelementptr inbounds %struct.ID, ptr %38, i64 0, i32 5
  %40 = load i16, ptr %39, align 2, !tbaa !221
  %41 = and i16 %40, 1024
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.Scene, ptr %38, i64 0, i32 22, i32 47
  %45 = load i32, ptr %44, align 8, !tbaa !236
  %46 = or i32 %45, 1
  store i32 %46, ptr %44, align 8, !tbaa !236
  %47 = tail call zeroext i8 @RE_ReadRenderResult(ptr noundef %2, ptr noundef %38)
  %48 = load i16, ptr %39, align 2, !tbaa !221
  %49 = and i16 %48, -1025
  store i16 %49, ptr %39, align 2, !tbaa !221
  br label %50

50:                                               ; preds = %34, %43, %24, %29
  %51 = load ptr, ptr %25, align 8, !tbaa !34
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %24, !llvm.loop !237

53:                                               ; preds = %50, %20
  %54 = load ptr, ptr %6, align 8, !tbaa !67
  %55 = getelementptr inbounds %struct.ID, ptr %54, i64 0, i32 5
  %56 = load i16, ptr %55, align 2, !tbaa !221
  %57 = and i16 %56, 1024
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = tail call zeroext i8 @RE_ReadRenderResult(ptr noundef %54, ptr noundef %54)
  %61 = load ptr, ptr %6, align 8, !tbaa !67
  %62 = getelementptr inbounds %struct.ID, ptr %61, i64 0, i32 5
  %63 = load i16, ptr %62, align 2, !tbaa !221
  %64 = and i16 %63, -1025
  store i16 %64, ptr %62, align 2, !tbaa !221
  br label %65

65:                                               ; preds = %59, %53
  %66 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 82
  %67 = load ptr, ptr %66, align 8, !tbaa !86
  %68 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 83
  %69 = load ptr, ptr %68, align 8, !tbaa !100
  %70 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %71 = load ptr, ptr %70, align 8, !tbaa !66
  tail call void %67(ptr noundef %69, ptr noundef %71) #23
  %72 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 84
  %73 = load ptr, ptr %72, align 8, !tbaa !87
  %74 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 85
  %75 = load ptr, ptr %74, align 8, !tbaa !99
  %76 = load ptr, ptr %70, align 8, !tbaa !66
  tail call void %73(ptr noundef %75, ptr noundef %76) #23
  tail call fastcc void @do_merge_fullsample(ptr noundef %0, ptr noundef %3)
  ret void
}

declare zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @RE_ReadRenderResult(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.rcti, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #23
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 30
  %5 = load i16, ptr %4, align 2, !tbaa !238
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 33
  %8 = load i32, ptr %7, align 4, !tbaa !239
  %9 = mul nsw i32 %8, %6
  %10 = sdiv i32 %9, 100
  %11 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 34
  %12 = load i32, ptr %11, align 8, !tbaa !240
  %13 = mul nsw i32 %12, %6
  %14 = sdiv i32 %13, 100
  %15 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 47
  %16 = load i32, ptr %15, align 8, !tbaa !236
  %17 = and i32 %16, 512
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %40, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 58
  %21 = load float, ptr %20, align 8, !tbaa !241
  %22 = sitofp i32 %10 to float
  %23 = fmul float %21, %22
  %24 = fptosi float %23 to i32
  store i32 %24, ptr %3, align 4, !tbaa !143
  %25 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 58, i32 1
  %26 = load float, ptr %25, align 4, !tbaa !242
  %27 = fmul float %26, %22
  %28 = fptosi float %27 to i32
  %29 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  store i32 %28, ptr %29, align 4, !tbaa !142
  %30 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 58, i32 2
  %31 = load float, ptr %30, align 8, !tbaa !243
  %32 = sitofp i32 %14 to float
  %33 = fmul float %31, %32
  %34 = fptosi float %33 to i32
  %35 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  store i32 %34, ptr %35, align 4, !tbaa !145
  %36 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 58, i32 3
  %37 = load float, ptr %36, align 4, !tbaa !244
  %38 = fmul float %37, %32
  %39 = fptosi float %38 to i32
  br label %43

40:                                               ; preds = %2
  %41 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  store i32 0, ptr %41, align 4, !tbaa !145
  store i32 0, ptr %3, align 4, !tbaa !143
  %42 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  store i32 %10, ptr %42, align 4, !tbaa !142
  br label %43

43:                                               ; preds = %40, %19
  %44 = phi i32 [ %14, %40 ], [ %39, %19 ]
  %45 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  store i32 %44, ptr %45, align 4, !tbaa !144
  %46 = icmp eq ptr %1, null
  %47 = select i1 %46, ptr %0, ptr %1
  %48 = getelementptr inbounds %struct.ID, ptr %47, i64 0, i32 4
  br label %49

49:                                               ; preds = %53, %43
  %50 = phi ptr [ @RenderGlobal, %43 ], [ %51, %53 ]
  %51 = load ptr, ptr %50, align 8, !tbaa !34
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.Render, ptr %51, i64 0, i32 2
  %55 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(1) %48, i64 noundef 74) #24
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %49, !llvm.loop !65

57:                                               ; preds = %49
  %58 = tail call ptr @RE_NewRender(ptr noundef nonnull %48)
  br label %59

59:                                               ; preds = %53, %57
  %60 = phi ptr [ %58, %57 ], [ %51, %53 ]
  %61 = getelementptr inbounds %struct.Scene, ptr %47, i64 0, i32 22
  call void @RE_InitState(ptr noundef %60, ptr noundef null, ptr noundef nonnull %61, ptr noundef null, i32 noundef %10, i32 noundef %14, ptr noundef nonnull %3)
  %62 = getelementptr inbounds %struct.Render, ptr %60, i64 0, i32 44
  store ptr %47, ptr %62, align 8, !tbaa !67
  %63 = call zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef %47) #23
  %64 = getelementptr inbounds %struct.Render, ptr %60, i64 0, i32 8
  store i8 %63, ptr %64, align 8, !tbaa !220
  %65 = getelementptr inbounds %struct.Render, ptr %60, i64 0, i32 12
  call void @BLI_rw_mutex_lock(ptr noundef nonnull %65, i32 noundef 2) #23
  %66 = call zeroext i8 @render_result_exr_file_cache_read(ptr noundef %60) #23
  call void @BLI_rw_mutex_unlock(ptr noundef nonnull %65) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #23
  ret i8 %66
}

; Function Attrs: nounwind uwtable
define internal fastcc void @do_merge_fullsample(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #23
  %4 = icmp eq ptr %1, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 29
  store ptr @render_composit_stats, ptr %6, align 8, !tbaa !245
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %8 = load ptr, ptr %7, align 8, !tbaa !91
  %9 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 30
  store ptr %8, ptr %9, align 8, !tbaa !248
  %10 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 92
  %11 = load ptr, ptr %10, align 8, !tbaa !90
  %12 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 28
  store ptr %11, ptr %12, align 8, !tbaa !249
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 91
  %14 = load ptr, ptr %13, align 8, !tbaa !97
  %15 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 34
  store ptr %14, ptr %15, align 8, !tbaa !250
  %16 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %17 = load ptr, ptr %16, align 8, !tbaa !95
  %18 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 32
  store ptr %17, ptr %18, align 8, !tbaa !251
  %19 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 93
  %20 = load ptr, ptr %19, align 8, !tbaa !96
  %21 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 33
  store ptr %20, ptr %21, align 8, !tbaa !252
  br label %22

22:                                               ; preds = %5, %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6240) @R, ptr noundef nonnull align 8 dereferenceable(6240) %0, i64 6240, i1 false), !tbaa.struct !185
  %23 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !34
  %24 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 20
  %25 = load i32, ptr %24, align 8, !tbaa !81
  %26 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 21
  %27 = load i32, ptr %26, align 4, !tbaa !82
  %28 = mul nsw i32 %27, %25
  %29 = sext i32 %28 to i64
  %30 = shl nsw i64 %29, 4
  %31 = tail call ptr %23(i64 noundef %30, ptr noundef nonnull @.str.29) #23
  %32 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45
  %33 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 54
  %34 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %35 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  %36 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %37 = icmp eq ptr %0, null
  %38 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  %39 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %40 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 61
  %41 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  %42 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 5
  %43 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %44 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 61
  %45 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 86
  %46 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 87
  %47 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %48 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  br label %49

49:                                               ; preds = %200, %22
  %50 = phi i32 [ 0, %22 ], [ %55, %200 ]
  %51 = load i16, ptr %33, align 2, !tbaa !151
  %52 = sext i16 %51 to i32
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %205

54:                                               ; preds = %49
  %55 = add nuw nsw i32 %50, 1
  %56 = trunc i32 %55 to i16
  store i16 %56, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 98, i32 12), align 2, !tbaa !253
  call fastcc void @tag_scenes_for_render(ptr noundef %0)
  %57 = load ptr, ptr %34, align 8, !tbaa !219
  %58 = getelementptr inbounds %struct.Main, ptr %57, i64 0, i32 11
  %59 = load ptr, ptr %58, align 8, !tbaa !34
  %60 = icmp eq ptr %59, null
  br i1 %60, label %93, label %61

61:                                               ; preds = %54
  %62 = icmp eq i32 %50, 0
  br label %63

63:                                               ; preds = %61, %90
  %64 = phi ptr [ %59, %61 ], [ %91, %90 ]
  %65 = getelementptr inbounds %struct.ID, ptr %64, i64 0, i32 5
  %66 = load i16, ptr %65, align 2, !tbaa !221
  %67 = and i16 %66, 1024
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %90, label %69

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.ID, ptr %64, i64 0, i32 4
  br label %71

71:                                               ; preds = %75, %69
  %72 = phi ptr [ @RenderGlobal, %69 ], [ %73, %75 ]
  %73 = load ptr, ptr %72, align 8, !tbaa !34
  %74 = icmp eq ptr %73, null
  br i1 %74, label %90, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.Render, ptr %73, i64 0, i32 2
  %77 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %76, ptr noundef nonnull dereferenceable(1) %70, i64 noundef 74) #24
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %71, !llvm.loop !65

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.Render, ptr %73, i64 0, i32 45, i32 46
  %81 = load i32, ptr %80, align 4, !tbaa !150
  %82 = and i32 %81, 32768
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %79
  br i1 %62, label %87, label %85

85:                                               ; preds = %84
  call void @BLI_rw_mutex_lock(ptr noundef nonnull %35, i32 noundef 2) #23
  %86 = call i32 @render_result_exr_file_read_sample(ptr noundef nonnull %73, i32 noundef %50) #23
  call void @BLI_rw_mutex_unlock(ptr noundef nonnull %35) #23
  br label %87

87:                                               ; preds = %85, %84
  %88 = getelementptr inbounds %struct.Render, ptr %73, i64 0, i32 44
  %89 = load ptr, ptr %88, align 8, !tbaa !67
  call void @ntreeCompositTagRender(ptr noundef %89) #23
  br label %90

90:                                               ; preds = %71, %63, %87, %79
  %91 = load ptr, ptr %64, align 8, !tbaa !34
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %63, !llvm.loop !254

93:                                               ; preds = %90, %54
  br i1 %4, label %103, label %94

94:                                               ; preds = %93
  %95 = load ptr, ptr %36, align 8, !tbaa !67
  call void @ntreeCompositTagRender(ptr noundef %95) #23
  %96 = call i32 @ntreeCompositTagAnimated(ptr noundef nonnull %1) #23
  %97 = load ptr, ptr %36, align 8, !tbaa !67
  %98 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !92
  %99 = icmp eq i8 %98, 0
  %100 = zext i1 %99 to i32
  %101 = getelementptr inbounds %struct.Scene, ptr %97, i64 0, i32 44
  %102 = getelementptr inbounds %struct.Scene, ptr %97, i64 0, i32 45
  call void @ntreeCompositExecTree(ptr noundef %97, ptr noundef nonnull %1, ptr noundef nonnull %32, i32 noundef 1, i32 noundef %100, ptr noundef nonnull %101, ptr noundef nonnull %102) #23
  br label %103

103:                                              ; preds = %94, %93
  br i1 %37, label %125, label %104

104:                                              ; preds = %103
  call void @BLI_rw_mutex_lock(ptr noundef nonnull %38, i32 noundef 1) #23
  %105 = load ptr, ptr %39, align 8, !tbaa !66
  %106 = icmp eq ptr %105, null
  br i1 %106, label %125, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.RenderResult, ptr %105, i64 0, i32 7
  %109 = load ptr, ptr %108, align 8, !tbaa !70
  %110 = getelementptr inbounds %struct.RenderResult, ptr %105, i64 0, i32 12
  %111 = load i16, ptr %40, align 8, !tbaa !45
  %112 = sext i16 %111 to i32
  %113 = call ptr @BLI_findlink(ptr noundef nonnull %110, i32 noundef %112) #23
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %117

115:                                              ; preds = %107
  %116 = load ptr, ptr %110, align 8, !tbaa !63
  br label %117

117:                                              ; preds = %115, %107
  %118 = phi ptr [ %116, %115 ], [ %113, %107 ]
  %119 = icmp ne ptr %118, null
  %120 = icmp eq ptr %109, null
  %121 = select i1 %119, i1 %120, i1 false
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.RenderLayer, ptr %118, i64 0, i32 11
  %124 = load ptr, ptr %123, align 8, !tbaa !73
  br label %125

125:                                              ; preds = %122, %117, %103, %104
  %126 = phi ptr [ null, %103 ], [ null, %104 ], [ %109, %117 ], [ %124, %122 ]
  %127 = shl nuw i32 1, %50
  call void @mask_array(i32 noundef %127, ptr noundef nonnull %3) #23
  %128 = load i32, ptr %26, align 4, !tbaa !82
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %178

130:                                              ; preds = %125, %174
  %131 = phi i32 [ %175, %174 ], [ 0, %125 ]
  %132 = load i32, ptr %24, align 8, !tbaa !81
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %174

134:                                              ; preds = %130
  %135 = shl nsw i32 %131, 2
  %136 = mul nsw i32 %135, %132
  %137 = zext nneg i32 %136 to i64
  %138 = getelementptr inbounds float, ptr %126, i64 %137
  %139 = getelementptr inbounds float, ptr %31, i64 %137
  br label %140

140:                                              ; preds = %134, %167
  %141 = phi i32 [ %172, %167 ], [ %132, %134 ]
  %142 = phi ptr [ %171, %167 ], [ %138, %134 ]
  %143 = phi ptr [ %170, %167 ], [ %139, %134 ]
  %144 = phi i32 [ %169, %167 ], [ 0, %134 ]
  %145 = load float, ptr %142, align 4, !tbaa !127
  %146 = fcmp olt float %145, 0.000000e+00
  br i1 %146, label %149, label %147

147:                                              ; preds = %140
  %148 = fcmp ogt float %145, 1.000000e+00
  br i1 %148, label %149, label %151

149:                                              ; preds = %147, %140
  %150 = phi float [ 0.000000e+00, %140 ], [ 1.000000e+00, %147 ]
  store float %150, ptr %142, align 4, !tbaa !127
  br label %151

151:                                              ; preds = %149, %147
  %152 = getelementptr inbounds float, ptr %142, i64 1
  %153 = load float, ptr %152, align 4, !tbaa !127
  %154 = fcmp olt float %153, 0.000000e+00
  br i1 %154, label %157, label %155

155:                                              ; preds = %151
  %156 = fcmp ogt float %153, 1.000000e+00
  br i1 %156, label %157, label %159

157:                                              ; preds = %155, %151
  %158 = phi float [ 0.000000e+00, %151 ], [ 1.000000e+00, %155 ]
  store float %158, ptr %152, align 4, !tbaa !127
  br label %159

159:                                              ; preds = %157, %155
  %160 = getelementptr inbounds float, ptr %142, i64 2
  %161 = load float, ptr %160, align 4, !tbaa !127
  %162 = fcmp olt float %161, 0.000000e+00
  br i1 %162, label %165, label %163

163:                                              ; preds = %159
  %164 = fcmp ogt float %161, 1.000000e+00
  br i1 %164, label %165, label %167

165:                                              ; preds = %163, %159
  %166 = phi float [ 0.000000e+00, %159 ], [ 1.000000e+00, %163 ]
  store float %166, ptr %160, align 4, !tbaa !127
  br label %167

167:                                              ; preds = %165, %163
  %168 = load i32, ptr %26, align 4, !tbaa !82
  call void @add_filt_fmask_coord(ptr noundef nonnull %3, ptr noundef nonnull %142, ptr noundef %143, i32 noundef %141, i32 noundef %168, i32 noundef %144, i32 noundef %131) #23
  %169 = add nuw nsw i32 %144, 1
  %170 = getelementptr inbounds float, ptr %143, i64 4
  %171 = getelementptr inbounds float, ptr %142, i64 4
  %172 = load i32, ptr %24, align 8, !tbaa !81
  %173 = icmp slt i32 %169, %172
  br i1 %173, label %140, label %174, !llvm.loop !255

174:                                              ; preds = %167, %130
  %175 = add nuw nsw i32 %131, 1
  %176 = load i32, ptr %26, align 4, !tbaa !82
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %130, label %178, !llvm.loop !256

178:                                              ; preds = %174, %125
  br i1 %37, label %180, label %179

179:                                              ; preds = %178
  call void @BLI_rw_mutex_unlock(ptr noundef nonnull %41) #23
  br label %180

180:                                              ; preds = %178, %179
  %181 = load i16, ptr %42, align 2, !tbaa !152
  %182 = sext i16 %181 to i32
  %183 = add nsw i32 %182, -1
  %184 = icmp eq i32 %50, %183
  br i1 %184, label %200, label %185

185:                                              ; preds = %180
  %186 = load ptr, ptr %43, align 8, !tbaa !66
  %187 = getelementptr inbounds %struct.RenderResult, ptr %186, i64 0, i32 12
  %188 = load i16, ptr %44, align 8, !tbaa !45
  %189 = sext i16 %188 to i32
  %190 = call ptr @BLI_findlink(ptr noundef nonnull %187, i32 noundef %189) #23
  %191 = icmp eq ptr %190, null
  br i1 %191, label %192, label %194

192:                                              ; preds = %185
  %193 = load ptr, ptr %187, align 8, !tbaa !63
  br label %194

194:                                              ; preds = %185, %192
  %195 = phi ptr [ %193, %192 ], [ %190, %185 ]
  %196 = load ptr, ptr %43, align 8, !tbaa !66
  %197 = getelementptr inbounds %struct.RenderResult, ptr %196, i64 0, i32 14
  store ptr %195, ptr %197, align 8, !tbaa !257
  %198 = load ptr, ptr %45, align 8, !tbaa !88
  %199 = load ptr, ptr %46, align 8, !tbaa !98
  call void %198(ptr noundef %199, ptr noundef %196, ptr noundef null) #23
  br label %200

200:                                              ; preds = %194, %180
  %201 = load ptr, ptr %47, align 8, !tbaa !91
  %202 = load ptr, ptr %48, align 8, !tbaa !95
  %203 = call i32 %201(ptr noundef %202) #23
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %49, label %205

205:                                              ; preds = %200, %49
  %206 = load i32, ptr %26, align 4, !tbaa !82
  %207 = icmp sgt i32 %206, 0
  br i1 %207, label %208, label %248

208:                                              ; preds = %205
  %209 = load i32, ptr %24, align 8, !tbaa !81
  %210 = icmp sgt i32 %209, 0
  %211 = zext nneg i32 %206 to i64
  br label %212

212:                                              ; preds = %208, %245
  %213 = phi i64 [ 0, %208 ], [ %246, %245 ]
  br i1 %210, label %214, label %245

214:                                              ; preds = %212
  %215 = trunc i64 %213 to i32
  %216 = shl nsw i32 %215, 2
  %217 = mul nsw i32 %216, %209
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds float, ptr %31, i64 %218
  br label %220

220:                                              ; preds = %214, %241
  %221 = phi ptr [ %243, %241 ], [ %219, %214 ]
  %222 = phi i32 [ %242, %241 ], [ 0, %214 ]
  %223 = load float, ptr %221, align 4, !tbaa !127
  %224 = fcmp ogt float %223, 0.000000e+00
  %225 = select i1 %224, float %223, float 0.000000e+00
  store float %225, ptr %221, align 4, !tbaa !127
  %226 = getelementptr inbounds float, ptr %221, i64 1
  %227 = load float, ptr %226, align 4, !tbaa !127
  %228 = fcmp ogt float %227, 0.000000e+00
  %229 = select i1 %228, float %227, float 0.000000e+00
  store float %229, ptr %226, align 4, !tbaa !127
  %230 = getelementptr inbounds float, ptr %221, i64 2
  %231 = load float, ptr %230, align 4, !tbaa !127
  %232 = fcmp ogt float %231, 0.000000e+00
  %233 = select i1 %232, float %231, float 0.000000e+00
  store float %233, ptr %230, align 4, !tbaa !127
  %234 = getelementptr inbounds float, ptr %221, i64 3
  %235 = load float, ptr %234, align 4, !tbaa !127
  %236 = fcmp olt float %235, 0.000000e+00
  br i1 %236, label %239, label %237

237:                                              ; preds = %220
  %238 = fcmp ogt float %235, 1.000000e+00
  br i1 %238, label %239, label %241

239:                                              ; preds = %237, %220
  %240 = phi float [ 0.000000e+00, %220 ], [ 1.000000e+00, %237 ]
  store float %240, ptr %234, align 4, !tbaa !127
  br label %241

241:                                              ; preds = %239, %237
  %242 = add nuw nsw i32 %222, 1
  %243 = getelementptr inbounds float, ptr %221, i64 4
  %244 = icmp eq i32 %242, %209
  br i1 %244, label %245, label %220, !llvm.loop !258

245:                                              ; preds = %241, %212
  %246 = add nuw nsw i64 %213, 1
  %247 = icmp eq i64 %246, %211
  br i1 %247, label %248, label %212, !llvm.loop !259

248:                                              ; preds = %245, %205
  br i1 %4, label %252, label %249

249:                                              ; preds = %248
  %250 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 28
  %251 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %250, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %251, i8 0, i64 24, i1 false)
  br label %252

252:                                              ; preds = %249, %248
  store i16 0, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 98, i32 12), align 2, !tbaa !253
  %253 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  call void @BLI_rw_mutex_lock(ptr noundef nonnull %253, i32 noundef 2) #23
  %254 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %255 = load ptr, ptr %254, align 8, !tbaa !66
  %256 = getelementptr inbounds %struct.RenderResult, ptr %255, i64 0, i32 7
  %257 = load ptr, ptr %256, align 8, !tbaa !70
  %258 = icmp eq ptr %257, null
  br i1 %258, label %261, label %259

259:                                              ; preds = %252
  %260 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %260(ptr noundef nonnull %257) #23
  br label %261

261:                                              ; preds = %259, %252
  %262 = load ptr, ptr %254, align 8, !tbaa !66
  %263 = getelementptr inbounds %struct.RenderResult, ptr %262, i64 0, i32 7
  store ptr %31, ptr %263, align 8, !tbaa !70
  call void @BLI_rw_mutex_unlock(ptr noundef nonnull %253) #23
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #23
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @RE_seq_render_active(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !260
  %5 = getelementptr inbounds %struct.RenderData, ptr %1, i64 0, i32 46
  %6 = load i32, ptr %5, align 4, !tbaa !149
  %7 = and i32 %6, 1
  %8 = icmp ne i32 %7, 0
  %9 = icmp ne ptr %4, null
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Editing, ptr %4, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !261
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %11, %20
  %16 = phi ptr [ %21, %20 ], [ %13, %11 ]
  %17 = getelementptr inbounds %struct.Sequence, ptr %16, i64 0, i32 6
  %18 = load i32, ptr %17, align 4, !tbaa !263
  %19 = icmp eq i32 %18, 4
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load ptr, ptr %16, align 8, !tbaa !265
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %15, !llvm.loop !266

23:                                               ; preds = %20, %15, %2, %11
  %24 = phi i32 [ 0, %11 ], [ 0, %2 ], [ 1, %15 ], [ 0, %20 ]
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @RE_force_single_renderlayer(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 46
  %3 = load i32, ptr %2, align 4, !tbaa !149
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 60
  %8 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 61
  %9 = load i16, ptr %8, align 8, !tbaa !267
  %10 = sext i16 %9 to i32
  %11 = tail call ptr @BLI_findlink(ptr noundef nonnull %7, i32 noundef %10) #23
  %12 = getelementptr inbounds %struct.SceneRenderLayer, ptr %11, i64 0, i32 8
  %13 = load i32, ptr %12, align 4, !tbaa !268
  %14 = and i32 %13, 131072
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %6
  %17 = and i32 %13, -131073
  store i32 %17, ptr %12, align 4, !tbaa !268
  br label %18

18:                                               ; preds = %1, %6, %16
  %19 = phi i8 [ 1, %16 ], [ 0, %6 ], [ 0, %1 ]
  ret i8 %19
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @RE_is_rendering_allowed(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22
  %5 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 46
  %6 = load i32, ptr %5, align 4, !tbaa !149
  %7 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 47
  %8 = load i32, ptr %7, align 8, !tbaa !236
  %9 = and i32 %8, 512
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 58
  %13 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 58, i32 1
  %14 = load float, ptr %13, align 4, !tbaa !242
  %15 = load float, ptr %12, align 8, !tbaa !241
  %16 = fcmp ugt float %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 58, i32 3
  %19 = load float, ptr %18, align 4, !tbaa !244
  %20 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 58, i32 2
  %21 = load float, ptr %20, align 8, !tbaa !243
  %22 = fcmp ugt float %19, %21
  br i1 %22, label %24, label %23

23:                                               ; preds = %17, %11
  tail call void @BKE_report(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.4) #23
  br label %216

24:                                               ; preds = %3, %17
  %25 = and i32 %6, 64
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 16
  %29 = load i8, ptr %28, align 2, !tbaa !271
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 18
  %33 = load ptr, ptr %32, align 8, !tbaa !272
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  tail call void @BKE_report(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.8) #23
  br label %216

36:                                               ; preds = %31
  %37 = tail call fastcc zeroext i8 @node_tree_has_composite_output(ptr noundef nonnull %33), !range !273
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  tail call void @BKE_report(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.9) #23
  br label %216

40:                                               ; preds = %36, %27, %24
  %41 = icmp eq ptr %1, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !274
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = tail call ptr @BKE_scene_camera_find(ptr noundef %0) #23
  store ptr %47, ptr %43, align 8, !tbaa !274
  br label %48

48:                                               ; preds = %46, %42, %40
  %49 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 19
  %50 = load ptr, ptr %49, align 8, !tbaa !260
  %51 = load i32, ptr %5, align 4, !tbaa !149
  %52 = and i32 %51, 1
  %53 = icmp ne i32 %52, 0
  %54 = icmp ne ptr %50, null
  %55 = select i1 %53, i1 %54, i1 false
  br i1 %55, label %56, label %150

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.Editing, ptr %50, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !261
  %59 = icmp eq ptr %58, null
  br i1 %59, label %150, label %60

60:                                               ; preds = %56, %70
  %61 = phi ptr [ %71, %70 ], [ %58, %56 ]
  %62 = getelementptr inbounds %struct.Sequence, ptr %61, i64 0, i32 6
  %63 = load i32, ptr %62, align 4, !tbaa !263
  %64 = icmp eq i32 %63, 4
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load ptr, ptr %57, align 8, !tbaa !34
  %67 = icmp eq ptr %66, null
  br i1 %67, label %193, label %68

68:                                               ; preds = %65
  %69 = icmp eq ptr %1, null
  br label %73

70:                                               ; preds = %60
  %71 = load ptr, ptr %61, align 8, !tbaa !265
  %72 = icmp eq ptr %71, null
  br i1 %72, label %150, label %60, !llvm.loop !266

73:                                               ; preds = %68, %147
  %74 = phi ptr [ %66, %68 ], [ %148, %147 ]
  %75 = getelementptr inbounds %struct.Sequence, ptr %74, i64 0, i32 6
  %76 = load i32, ptr %75, align 4, !tbaa !263
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %78, label %147

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.Sequence, ptr %74, i64 0, i32 26
  %80 = load ptr, ptr %79, align 8, !tbaa !275
  %81 = icmp eq ptr %80, null
  br i1 %81, label %147, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.Sequence, ptr %74, i64 0, i32 27
  %84 = load ptr, ptr %83, align 8, !tbaa !276
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %147

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.Scene, ptr %80, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !274
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %147

90:                                               ; preds = %86
  %91 = tail call ptr @BKE_scene_camera_find(ptr noundef nonnull %80) #23
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %147

93:                                               ; preds = %90
  %94 = load ptr, ptr %79, align 8, !tbaa !275
  %95 = icmp ne ptr %94, %0
  %96 = getelementptr inbounds %struct.Scene, ptr %94, i64 0, i32 22, i32 46
  %97 = load i32, ptr %96, align 4, !tbaa !277
  %98 = and i32 %97, 64
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %134, label %100

100:                                              ; preds = %93
  %101 = getelementptr inbounds %struct.Scene, ptr %94, i64 0, i32 16
  %102 = load i8, ptr %101, align 2, !tbaa !271
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %134, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.Scene, ptr %94, i64 0, i32 18
  %106 = load ptr, ptr %105, align 8, !tbaa !272
  %107 = getelementptr inbounds %struct.bNodeTree, ptr %106, i64 0, i32 7
  %108 = load ptr, ptr %107, align 8, !tbaa !34
  %109 = icmp eq ptr %108, null
  br i1 %109, label %141, label %110

110:                                              ; preds = %104, %131
  %111 = phi ptr [ %132, %131 ], [ %108, %104 ]
  %112 = getelementptr inbounds %struct.bNode, ptr %111, i64 0, i32 8
  %113 = load i16, ptr %112, align 4, !tbaa !232
  %114 = icmp eq i16 %113, 221
  br i1 %114, label %115, label %131

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.bNode, ptr %111, i64 0, i32 7
  %117 = load i32, ptr %116, align 8, !tbaa !234
  %118 = and i32 %117, 512
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %131

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.bNode, ptr %111, i64 0, i32 20
  %122 = load ptr, ptr %121, align 8, !tbaa !235
  %123 = icmp eq ptr %122, null
  %124 = select i1 %123, ptr %94, ptr %122
  %125 = getelementptr inbounds %struct.Scene, ptr %124, i64 0, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !274
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %120
  %129 = tail call ptr @BKE_scene_camera_find(ptr noundef %124) #23
  %130 = icmp eq ptr %129, null
  br i1 %130, label %141, label %131

131:                                              ; preds = %128, %120, %115, %110
  %132 = load ptr, ptr %111, align 8, !tbaa !34
  %133 = icmp eq ptr %132, null
  br i1 %133, label %141, label %110, !llvm.loop !278

134:                                              ; preds = %100, %93
  %135 = or i1 %69, %95
  br i1 %135, label %136, label %141

136:                                              ; preds = %134
  %137 = getelementptr inbounds %struct.Scene, ptr %94, i64 0, i32 2
  %138 = load ptr, ptr %137, align 8, !tbaa !274
  %139 = icmp ne ptr %138, null
  %140 = zext i1 %139 to i8
  br label %141

141:                                              ; preds = %128, %131, %104, %134, %136
  %142 = phi i8 [ 1, %134 ], [ %140, %136 ], [ 1, %104 ], [ 0, %128 ], [ 1, %131 ]
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load ptr, ptr %79, align 8, !tbaa !275
  %146 = getelementptr inbounds %struct.ID, ptr %145, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.33, ptr noundef nonnull %146) #23
  br label %216

147:                                              ; preds = %141, %90, %86, %82, %78, %73
  %148 = load ptr, ptr %74, align 8, !tbaa !34
  %149 = icmp eq ptr %148, null
  br i1 %149, label %193, label %73, !llvm.loop !279

150:                                              ; preds = %70, %56, %48
  %151 = and i32 %51, 64
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %187, label %153

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 16
  %155 = load i8, ptr %154, align 2, !tbaa !271
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %187, label %157

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 18
  %159 = load ptr, ptr %158, align 8, !tbaa !272
  %160 = getelementptr inbounds %struct.bNodeTree, ptr %159, i64 0, i32 7
  %161 = load ptr, ptr %160, align 8, !tbaa !34
  %162 = icmp eq ptr %161, null
  br i1 %162, label %193, label %163

163:                                              ; preds = %157, %184
  %164 = phi ptr [ %185, %184 ], [ %161, %157 ]
  %165 = getelementptr inbounds %struct.bNode, ptr %164, i64 0, i32 8
  %166 = load i16, ptr %165, align 4, !tbaa !232
  %167 = icmp eq i16 %166, 221
  br i1 %167, label %168, label %184

168:                                              ; preds = %163
  %169 = getelementptr inbounds %struct.bNode, ptr %164, i64 0, i32 7
  %170 = load i32, ptr %169, align 8, !tbaa !234
  %171 = and i32 %170, 512
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %184

173:                                              ; preds = %168
  %174 = getelementptr inbounds %struct.bNode, ptr %164, i64 0, i32 20
  %175 = load ptr, ptr %174, align 8, !tbaa !235
  %176 = icmp eq ptr %175, null
  %177 = select i1 %176, ptr %0, ptr %175
  %178 = getelementptr inbounds %struct.Scene, ptr %177, i64 0, i32 2
  %179 = load ptr, ptr %178, align 8, !tbaa !274
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %184

181:                                              ; preds = %173
  %182 = tail call ptr @BKE_scene_camera_find(ptr noundef %177) #23
  %183 = icmp eq ptr %182, null
  br i1 %183, label %192, label %184

184:                                              ; preds = %181, %173, %168, %163
  %185 = load ptr, ptr %164, align 8, !tbaa !34
  %186 = icmp eq ptr %185, null
  br i1 %186, label %193, label %163, !llvm.loop !278

187:                                              ; preds = %153, %150
  br i1 %41, label %188, label %197

188:                                              ; preds = %187
  %189 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 2
  %190 = load ptr, ptr %189, align 8, !tbaa !274
  %191 = icmp eq ptr %190, null
  br i1 %191, label %192, label %193

192:                                              ; preds = %181, %188
  tail call void @BKE_report(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.34) #23
  br label %216

193:                                              ; preds = %147, %184, %65, %157, %188
  br i1 %41, label %194, label %197

194:                                              ; preds = %193
  %195 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 2
  %196 = load ptr, ptr %195, align 8, !tbaa !274
  br label %197

197:                                              ; preds = %187, %193, %194
  %198 = phi ptr [ %196, %194 ], [ %1, %193 ], [ %1, %187 ]
  tail call void @BKE_camera_object_mode(ptr noundef nonnull %4, ptr noundef %198) #23
  %199 = load i32, ptr %7, align 8, !tbaa !236
  %200 = and i32 %199, 1032
  %201 = icmp eq i32 %200, 1032
  br i1 %201, label %202, label %203

202:                                              ; preds = %197
  tail call void @BKE_report(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.11) #23
  br label %216

203:                                              ; preds = %197
  %204 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 60
  br label %205

205:                                              ; preds = %209, %203
  %206 = phi ptr [ %204, %203 ], [ %207, %209 ]
  %207 = load ptr, ptr %206, align 8, !tbaa !34
  %208 = icmp eq ptr %207, null
  br i1 %208, label %215, label %209

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.SceneRenderLayer, ptr %207, i64 0, i32 8
  %211 = load i32, ptr %210, align 4, !tbaa !268
  %212 = and i32 %211, 131072
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %205, !llvm.loop !280

214:                                              ; preds = %209
  br i1 %208, label %215, label %216

215:                                              ; preds = %205, %214
  tail call void @BKE_report(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.12) #23
  br label %216

216:                                              ; preds = %144, %192, %214, %215, %202, %39, %35, %23
  %217 = phi i8 [ 0, %23 ], [ 0, %202 ], [ 0, %215 ], [ 0, %39 ], [ 0, %35 ], [ 1, %214 ], [ 0, %192 ], [ 0, %144 ]
  ret i8 %217
}

declare void @BKE_camera_object_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @RE_SetReports(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 99
  store ptr %1, ptr %3, align 8, !tbaa !148
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RE_BlenderFrame(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i8 noundef zeroext %7) local_unnamed_addr #0 {
  %9 = alloca [1024 x i8], align 16
  %10 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %11 = load ptr, ptr %10, align 8, !tbaa !219
  tail call void @BLI_callback_exec(ptr noundef %11, ptr noundef %2, i32 noundef 5) #23
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !281
  %12 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22
  %13 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 5
  store i32 %6, ptr %13, align 8, !tbaa !282
  %14 = tail call fastcc i32 @render_initialize_from_main(ptr noundef %0, ptr noundef nonnull %12, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef 0)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %41, label %16

16:                                               ; preds = %8
  %17 = load ptr, ptr @MEM_reset_peak_memory, align 8, !tbaa !34
  tail call void %17() #23
  %18 = load ptr, ptr %10, align 8, !tbaa !219
  tail call void @BLI_callback_exec(ptr noundef %18, ptr noundef %2, i32 noundef 2) #23
  tail call fastcc void @do_render_all_options(ptr noundef %0)
  %19 = icmp eq i8 %7, 0
  %20 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8
  %21 = icmp ne i8 %20, 0
  %22 = select i1 %19, i1 true, i1 %21
  br i1 %22, label %39, label %23

23:                                               ; preds = %16
  %24 = load i8, ptr %12, align 8, !tbaa !283
  %25 = tail call zeroext i8 @BKE_imtype_is_movie(i8 noundef zeroext %24) #23
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %39

29:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %9) #23
  %30 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 84
  %31 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 2
  %32 = load i32, ptr %13, align 8, !tbaa !282
  %33 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 46
  %34 = load i32, ptr %33, align 4, !tbaa !277
  %35 = trunc i32 %34 to i8
  %36 = lshr i8 %35, 4
  %37 = and i8 %36, 1
  call void @BKE_makepicstring(ptr noundef nonnull %9, ptr noundef nonnull %30, ptr noundef nonnull %31, i32 noundef %32, ptr noundef nonnull %12, i8 noundef zeroext %37, i8 noundef zeroext 0) #23
  %38 = call fastcc i32 @do_write_image_or_movie(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef nonnull %9)
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %9) #23
  br label %39

39:                                               ; preds = %27, %29, %16
  %40 = load ptr, ptr %10, align 8, !tbaa !219
  call void @BLI_callback_exec(ptr noundef %40, ptr noundef %2, i32 noundef 3) #23
  br label %41

41:                                               ; preds = %39, %8
  %42 = load ptr, ptr %10, align 8, !tbaa !219
  %43 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !102
  %44 = icmp eq i8 %43, 0
  %45 = select i1 %44, i32 6, i32 7
  call void @BLI_callback_exec(ptr noundef %42, ptr noundef %2, i32 noundef %45) #23
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !281
  ret void
}

declare void @BLI_callback_exec(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @render_initialize_from_main(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 {
  %9 = alloca %struct.rcti, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #23
  %10 = getelementptr inbounds %struct.RenderData, ptr %1, i64 0, i32 30
  %11 = load i16, ptr %10, align 2, !tbaa !284
  %12 = sext i16 %11 to i32
  %13 = getelementptr inbounds %struct.RenderData, ptr %1, i64 0, i32 33
  %14 = load i32, ptr %13, align 4, !tbaa !285
  %15 = mul nsw i32 %14, %12
  %16 = sdiv i32 %15, 100
  %17 = getelementptr inbounds %struct.RenderData, ptr %1, i64 0, i32 34
  %18 = load i32, ptr %17, align 8, !tbaa !286
  %19 = mul nsw i32 %18, %12
  %20 = sdiv i32 %19, 100
  %21 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22
  %22 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 47
  %23 = load i32, ptr %22, align 8, !tbaa !236
  %24 = and i32 %23, 512
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %47, label %26

26:                                               ; preds = %8
  %27 = getelementptr inbounds %struct.RenderData, ptr %1, i64 0, i32 58
  %28 = load float, ptr %27, align 8, !tbaa !287
  %29 = sitofp i32 %16 to float
  %30 = fmul float %28, %29
  %31 = fptosi float %30 to i32
  store i32 %31, ptr %9, align 4, !tbaa !143
  %32 = getelementptr inbounds %struct.RenderData, ptr %1, i64 0, i32 58, i32 1
  %33 = load float, ptr %32, align 4, !tbaa !288
  %34 = fmul float %33, %29
  %35 = fptosi float %34 to i32
  %36 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 1
  store i32 %35, ptr %36, align 4, !tbaa !142
  %37 = getelementptr inbounds %struct.RenderData, ptr %1, i64 0, i32 58, i32 2
  %38 = load float, ptr %37, align 8, !tbaa !289
  %39 = sitofp i32 %20 to float
  %40 = fmul float %38, %39
  %41 = fptosi float %40 to i32
  %42 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 2
  store i32 %41, ptr %42, align 4, !tbaa !145
  %43 = getelementptr inbounds %struct.RenderData, ptr %1, i64 0, i32 58, i32 3
  %44 = load float, ptr %43, align 4, !tbaa !290
  %45 = fmul float %44, %39
  %46 = fptosi float %45 to i32
  br label %50

47:                                               ; preds = %8
  %48 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 2
  store i32 0, ptr %48, align 4, !tbaa !145
  store i32 0, ptr %9, align 4, !tbaa !143
  %49 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 1
  store i32 %16, ptr %49, align 4, !tbaa !142
  br label %50

50:                                               ; preds = %47, %26
  %51 = phi i32 [ %20, %47 ], [ %46, %26 ]
  %52 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 3
  store i32 %51, ptr %52, align 4, !tbaa !144
  %53 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  store ptr %2, ptr %53, align 8, !tbaa !219
  %54 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  store ptr %3, ptr %54, align 8, !tbaa !67
  %55 = tail call zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef %3) #23
  %56 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 8
  store i8 %55, ptr %56, align 8, !tbaa !220
  %57 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 47
  store ptr %5, ptr %57, align 8, !tbaa !291
  %58 = icmp eq i32 %6, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 12
  %61 = load i32, ptr %60, align 8, !tbaa !292
  br label %62

62:                                               ; preds = %50, %59
  %63 = phi i32 [ %61, %59 ], [ %6, %50 ]
  %64 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 48
  store i32 %63, ptr %64, align 8, !tbaa !293
  %65 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 49
  store i32 %6, ptr %65, align 4, !tbaa !294
  %66 = icmp ugt i32 %63, 16777215
  %67 = zext i1 %66 to i8
  %68 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 13
  store i8 %67, ptr %68, align 8, !tbaa !295
  %69 = icmp eq i32 %7, 0
  br i1 %69, label %89, label %70

70:                                               ; preds = %62
  %71 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 66
  %72 = load float, ptr %71, align 8, !tbaa !159
  %73 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 66
  store float %72, ptr %73, align 8, !tbaa !160
  %74 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 62
  %75 = load i16, ptr %74, align 2, !tbaa !161
  %76 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 62
  store i16 %75, ptr %76, align 2, !tbaa !162
  %77 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 16
  %78 = load float, ptr %77, align 8, !tbaa !163
  %79 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 16
  store float %78, ptr %79, align 8, !tbaa !164
  %80 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 113
  %81 = load i32, ptr %80, align 8, !tbaa !165
  %82 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 113
  store i32 %81, ptr %82, align 8, !tbaa !166
  %83 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 114
  %84 = load float, ptr %83, align 4, !tbaa !167
  %85 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 114
  store float %84, ptr %85, align 4, !tbaa !168
  %86 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 60
  tail call void @BLI_freelistN(ptr noundef nonnull %86) #23
  %87 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 60
  tail call void @BLI_duplicatelist(ptr noundef nonnull %86, ptr noundef nonnull %87) #23
  %88 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %88, ptr noundef nonnull align 4 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !141
  br label %135

89:                                               ; preds = %62
  tail call fastcc void @tag_scenes_for_render(ptr noundef %0)
  %90 = icmp eq ptr %4, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %89
  %92 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 46
  %93 = load i32, ptr %92, align 4, !tbaa !277
  %94 = and i32 %93, 512
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %91, %89
  %97 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull %97, i32 noundef 2) #23
  tail call void @render_result_single_layer_begin(ptr noundef %0) #23
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull %97) #23
  br label %98

98:                                               ; preds = %96, %91
  call void @RE_InitState(ptr noundef %0, ptr noundef null, ptr noundef nonnull %21, ptr noundef %4, i32 noundef %16, i32 noundef %20, ptr noundef nonnull %9)
  %99 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 6
  %100 = load i16, ptr %99, align 4, !tbaa !122
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %135, label %102

102:                                              ; preds = %98
  %103 = load ptr, ptr %54, align 8, !tbaa !67
  call void @ntreeCompositTagRender(ptr noundef %103) #23
  %104 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %105 = load i32, ptr %104, align 4, !tbaa !150
  %106 = and i32 %105, 33792
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 54
  %110 = load i16, ptr %109, align 2, !tbaa !151
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = and i32 %105, -32769
  store i32 %113, ptr %104, align 4, !tbaa !150
  br label %114

114:                                              ; preds = %112, %108, %102
  %115 = call zeroext i8 @RE_engine_is_external(ptr noundef %0) #23
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %114
  %118 = load i32, ptr %104, align 4, !tbaa !150
  %119 = and i32 %118, -32769
  store i32 %119, ptr %104, align 4, !tbaa !150
  %120 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %121 = load i32, ptr %120, align 8, !tbaa !121
  %122 = and i32 %121, -16449
  store i32 %122, ptr %120, align 8, !tbaa !121
  br label %123

123:                                              ; preds = %114, %117
  %124 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 82
  %125 = load ptr, ptr %124, align 8, !tbaa !86
  %126 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 83
  %127 = load ptr, ptr %126, align 8, !tbaa !100
  %128 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %129 = load ptr, ptr %128, align 8, !tbaa !66
  call void %125(ptr noundef %127, ptr noundef %129) #23
  %130 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 84
  %131 = load ptr, ptr %130, align 8, !tbaa !87
  %132 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 85
  %133 = load ptr, ptr %132, align 8, !tbaa !99
  %134 = load ptr, ptr %128, align 8, !tbaa !66
  call void %131(ptr noundef %133, ptr noundef %134) #23
  br label %135

135:                                              ; preds = %98, %123, %70
  %136 = phi i32 [ 1, %70 ], [ 1, %123 ], [ 0, %98 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #23
  ret i32 %136
}

; Function Attrs: nounwind uwtable
define internal fastcc void @do_render_all_options(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.SeqRenderData, align 8
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 88
  %4 = load ptr, ptr %3, align 8, !tbaa !89
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 89
  %6 = load ptr, ptr %5, align 8, !tbaa !175
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  tail call void %4(ptr noundef %6, ptr noundef %8) #23
  %9 = load ptr, ptr %7, align 8, !tbaa !67
  %10 = tail call i32 @BKE_scene_camera_switch_update(ptr noundef %9) #23
  %11 = tail call double @PIL_check_seconds_timer() #23
  %12 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 14
  store double %11, ptr %13, align 8, !tbaa !123
  %14 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !296
  tail call void @BKE_image_all_free_anim_ibufs(i32 noundef %15) #23
  %16 = tail call i32 @RE_engine_render(ptr noundef %0, i32 noundef 1) #23
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %408

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45
  %20 = load ptr, ptr %7, align 8, !tbaa !67
  %21 = getelementptr inbounds %struct.Scene, ptr %20, i64 0, i32 19
  %22 = load ptr, ptr %21, align 8, !tbaa !260
  %23 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %24 = load i32, ptr %23, align 4, !tbaa !149
  %25 = and i32 %24, 1
  %26 = icmp ne i32 %25, 0
  %27 = icmp ne ptr %22, null
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %29, label %144

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.Editing, ptr %22, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !261
  %32 = icmp eq ptr %31, null
  br i1 %32, label %144, label %33

33:                                               ; preds = %29, %38
  %34 = phi ptr [ %39, %38 ], [ %31, %29 ]
  %35 = getelementptr inbounds %struct.Sequence, ptr %34, i64 0, i32 6
  %36 = load i32, ptr %35, align 4, !tbaa !263
  %37 = icmp eq i32 %36, 4
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load ptr, ptr %34, align 8, !tbaa !265
  %40 = icmp eq ptr %39, null
  br i1 %40, label %144, label %33, !llvm.loop !266

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %43 = load ptr, ptr %42, align 8, !tbaa !91
  %44 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %45 = load ptr, ptr %44, align 8, !tbaa !95
  %46 = tail call i32 %43(ptr noundef %45) #23
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %133

48:                                               ; preds = %41
  %49 = load i32, ptr %14, align 8, !tbaa !296
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #23
  store i32 %49, ptr %12, align 8, !tbaa !297
  %50 = load i32, ptr @do_render_seq.recurs_depth, align 4, !tbaa !128
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %54 = load ptr, ptr %53, align 8, !tbaa !219
  %55 = load ptr, ptr %7, align 8, !tbaa !67
  %56 = sitofp i32 %49 to float
  tail call void @BKE_animsys_evaluate_all_animation(ptr noundef %54, ptr noundef %55, float noundef %56) #23
  br label %57

57:                                               ; preds = %52, %48
  %58 = load i32, ptr @do_render_seq.recurs_depth, align 4, !tbaa !128
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr @do_render_seq.recurs_depth, align 4, !tbaa !128
  %60 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %61 = load i32, ptr %60, align 8, !tbaa !121
  %62 = and i32 %61, 2560
  %63 = icmp eq i32 %62, 512
  %64 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 101
  %65 = load ptr, ptr %64, align 8, !tbaa !83
  %66 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %67 = load ptr, ptr %66, align 8, !tbaa !219
  %68 = load ptr, ptr %7, align 8, !tbaa !67
  br i1 %63, label %69, label %74

69:                                               ; preds = %57
  %70 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %71 = load i32, ptr %70, align 4, !tbaa !132
  %72 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  %73 = load i32, ptr %72, align 8, !tbaa !133
  call void @BKE_sequencer_new_render_data(ptr dead_on_unwind nonnull writable sret(%struct.SeqRenderData) align 8 %2, ptr noundef %65, ptr noundef %67, ptr noundef %68, i32 noundef %71, i32 noundef %73, i32 noundef 100) #23
  br label %81

74:                                               ; preds = %57
  %75 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %76 = load ptr, ptr %75, align 8, !tbaa !66
  %77 = getelementptr inbounds %struct.RenderResult, ptr %76, i64 0, i32 2
  %78 = load i32, ptr %77, align 8, !tbaa !68
  %79 = getelementptr inbounds %struct.RenderResult, ptr %76, i64 0, i32 3
  %80 = load i32, ptr %79, align 4, !tbaa !69
  call void @BKE_sequencer_new_render_data(ptr dead_on_unwind nonnull writable sret(%struct.SeqRenderData) align 8 %2, ptr noundef %65, ptr noundef %67, ptr noundef %68, i32 noundef %78, i32 noundef %80, i32 noundef 100) #23
  br label %81

81:                                               ; preds = %74, %69
  %82 = sitofp i32 %49 to float
  %83 = call ptr @BKE_sequencer_give_ibuf(ptr noundef nonnull %2, float noundef %82, i32 noundef 0) #23
  %84 = icmp eq ptr %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %81
  %86 = call ptr @IMB_dupImBuf(ptr noundef nonnull %83) #23
  call void @IMB_freeImBuf(ptr noundef nonnull %83) #23
  %87 = load ptr, ptr %7, align 8, !tbaa !67
  call void @BKE_sequencer_imbuf_from_sequencer_space(ptr noundef %87, ptr noundef %86) #23
  br label %88

88:                                               ; preds = %85, %81
  %89 = phi ptr [ %86, %85 ], [ null, %81 ]
  %90 = load i32, ptr @do_render_seq.recurs_depth, align 4, !tbaa !128
  %91 = add nsw i32 %90, -1
  store i32 %91, ptr @do_render_seq.recurs_depth, align 4, !tbaa !128
  %92 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %93 = load ptr, ptr %92, align 8, !tbaa !66
  %94 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  call void @BLI_rw_mutex_lock(ptr noundef nonnull %94, i32 noundef 2) #23
  %95 = icmp eq ptr %89, null
  br i1 %95, label %107, label %96

96:                                               ; preds = %88
  call void @render_result_rect_from_ibuf(ptr noundef %93, ptr noundef nonnull %19, ptr noundef nonnull %89) #23
  %97 = load i32, ptr @do_render_seq.recurs_depth, align 4, !tbaa !128
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = load ptr, ptr %7, align 8, !tbaa !67
  %101 = getelementptr inbounds %struct.Scene, ptr %100, i64 0, i32 19
  %102 = load ptr, ptr %101, align 8, !tbaa !260
  %103 = icmp eq ptr %102, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.Editing, ptr %102, i64 0, i32 1
  call void @BKE_sequencer_free_imbuf(ptr noundef %100, ptr noundef nonnull %105, i8 noundef zeroext 1) #23
  br label %106

106:                                              ; preds = %104, %99, %96
  call void @IMB_freeImBuf(ptr noundef nonnull %89) #23
  br label %108

107:                                              ; preds = %88
  call void @render_result_rect_fill_zero(ptr noundef %93) #23
  br label %108

108:                                              ; preds = %107, %106
  call void @BLI_rw_mutex_unlock(ptr noundef nonnull %94) #23
  %109 = load i32, ptr %23, align 4, !tbaa !150
  %110 = or i32 %109, 1
  store i32 %110, ptr %23, align 4, !tbaa !150
  %111 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 7
  %112 = load i32, ptr %111, align 8, !tbaa !298
  %113 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 6
  %114 = load i32, ptr %113, align 4, !tbaa !299
  %115 = icmp eq i32 %112, %114
  %116 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 92
  %117 = load ptr, ptr %116, align 8, !tbaa !90
  %118 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 93
  %119 = load ptr, ptr %118, align 8, !tbaa !96
  br i1 %115, label %126, label %120

120:                                              ; preds = %108
  %121 = sub nsw i32 %49, %114
  %122 = sitofp i32 %121 to float
  %123 = sub nsw i32 %112, %114
  %124 = sitofp i32 %123 to float
  %125 = fdiv float %122, %124
  br label %126

126:                                              ; preds = %108, %120
  %127 = phi float [ %125, %120 ], [ 1.000000e+00, %108 ]
  call void %117(ptr noundef %119, float noundef %127) #23
  %128 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 86
  %129 = load ptr, ptr %128, align 8, !tbaa !88
  %130 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 87
  %131 = load ptr, ptr %130, align 8, !tbaa !98
  %132 = load ptr, ptr %92, align 8, !tbaa !66
  call void %129(ptr noundef %131, ptr noundef %132, ptr noundef null) #23
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #23
  br label %133

133:                                              ; preds = %126, %41
  %134 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 90
  %135 = load ptr, ptr %134, align 8, !tbaa !94
  %136 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 91
  %137 = load ptr, ptr %136, align 8, !tbaa !97
  call void %135(ptr noundef %137, ptr noundef nonnull %12) #23
  %138 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 86
  %139 = load ptr, ptr %138, align 8, !tbaa !88
  %140 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 87
  %141 = load ptr, ptr %140, align 8, !tbaa !98
  %142 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %143 = load ptr, ptr %142, align 8, !tbaa !66
  call void %139(ptr noundef %141, ptr noundef %143, ptr noundef null) #23
  br label %408

144:                                              ; preds = %38, %29, %18
  %145 = tail call ptr @BKE_image_pool_new() #23
  %146 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 100
  store ptr %145, ptr %146, align 8, !tbaa !300
  %147 = load ptr, ptr %7, align 8, !tbaa !67
  %148 = getelementptr inbounds %struct.Scene, ptr %147, i64 0, i32 18
  %149 = load ptr, ptr %148, align 8, !tbaa !272
  %150 = load i32, ptr %14, align 8, !tbaa !296
  tail call void @BLI_srandom(i32 noundef %150) #23
  %151 = load ptr, ptr %7, align 8, !tbaa !67
  %152 = getelementptr inbounds %struct.Scene, ptr %151, i64 0, i32 18
  %153 = load ptr, ptr %152, align 8, !tbaa !272
  %154 = icmp eq ptr %153, null
  br i1 %154, label %187, label %155

155:                                              ; preds = %144
  %156 = getelementptr inbounds %struct.Scene, ptr %151, i64 0, i32 16
  %157 = load i8, ptr %156, align 2, !tbaa !271
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %187, label %159

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.Scene, ptr %151, i64 0, i32 22, i32 46
  %161 = load i32, ptr %160, align 4, !tbaa !277
  %162 = and i32 %161, 64
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %187, label %164

164:                                              ; preds = %159
  %165 = getelementptr inbounds %struct.bNodeTree, ptr %153, i64 0, i32 7
  %166 = load ptr, ptr %165, align 8, !tbaa !34
  %167 = icmp eq ptr %166, null
  br i1 %167, label %187, label %168

168:                                              ; preds = %164, %184
  %169 = phi ptr [ %185, %184 ], [ %166, %164 ]
  %170 = getelementptr inbounds %struct.bNode, ptr %169, i64 0, i32 8
  %171 = load i16, ptr %170, align 4, !tbaa !232
  %172 = icmp eq i16 %171, 221
  br i1 %172, label %173, label %184

173:                                              ; preds = %168
  %174 = getelementptr inbounds %struct.bNode, ptr %169, i64 0, i32 7
  %175 = load i32, ptr %174, align 8, !tbaa !234
  %176 = and i32 %175, 512
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.bNode, ptr %169, i64 0, i32 20
  %180 = load ptr, ptr %179, align 8, !tbaa !235
  %181 = icmp eq ptr %180, null
  %182 = icmp eq ptr %180, %151
  %183 = or i1 %181, %182
  br i1 %183, label %187, label %184

184:                                              ; preds = %178, %173, %168
  %185 = load ptr, ptr %169, align 8, !tbaa !34
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %168, !llvm.loop !301

187:                                              ; preds = %178, %184, %144, %155, %159, %164
  %188 = phi i1 [ false, %144 ], [ false, %155 ], [ false, %159 ], [ true, %164 ], [ true, %184 ], [ false, %178 ]
  br i1 %188, label %190, label %189

189:                                              ; preds = %187
  tail call void @ntreeFreeCache(ptr noundef %149) #23
  tail call fastcc void @do_render_fields_blur_3d(ptr noundef %0)
  br label %213

190:                                              ; preds = %187
  %191 = load i32, ptr %14, align 8, !tbaa !296
  store i32 %191, ptr %12, align 8, !tbaa !297
  %192 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull %192, i32 noundef 2) #23
  %193 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %194 = load ptr, ptr %193, align 8, !tbaa !66
  tail call void @render_result_free(ptr noundef %194) #23
  %195 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %196 = load i32, ptr %195, align 8, !tbaa !121
  %197 = and i32 %196, 2048
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %210

199:                                              ; preds = %190
  %200 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  %201 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 2
  store i32 0, ptr %201, align 4, !tbaa !79
  store i32 0, ptr %200, align 4, !tbaa !77
  %202 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %203 = load i32, ptr %202, align 4, !tbaa !132
  %204 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 1
  store i32 %203, ptr %204, align 4, !tbaa !136
  %205 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  %206 = load i32, ptr %205, align 8, !tbaa !133
  %207 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 3
  store i32 %206, ptr %207, align 4, !tbaa !139
  %208 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 20
  store i32 %203, ptr %208, align 8, !tbaa !81
  %209 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 21
  store i32 %206, ptr %209, align 4, !tbaa !82
  br label %210

210:                                              ; preds = %199, %190
  %211 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  %212 = tail call ptr @render_result_new(ptr noundef %0, ptr noundef nonnull %211, i32 noundef 0, i32 noundef 0, ptr noundef null) #23
  store ptr %212, ptr %193, align 8, !tbaa !66
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull %192) #23
  br label %213

213:                                              ; preds = %210, %189
  %214 = load i32, ptr %23, align 4, !tbaa !150
  %215 = and i32 %214, 512
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %219, label %217

217:                                              ; preds = %213
  %218 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull %218, i32 noundef 2) #23
  tail call void @render_result_single_layer_end(ptr noundef %0) #23
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull %218) #23
  br label %219

219:                                              ; preds = %217, %213
  %220 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %221 = load ptr, ptr %220, align 8, !tbaa !91
  %222 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %223 = load ptr, ptr %222, align 8, !tbaa !95
  %224 = tail call i32 %221(ptr noundef %223) #23
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %388

226:                                              ; preds = %219
  %227 = icmp eq ptr %149, null
  br i1 %227, label %383, label %228

228:                                              ; preds = %226
  %229 = load ptr, ptr %7, align 8, !tbaa !67
  tail call void @ntreeCompositTagRender(ptr noundef %229) #23
  %230 = tail call i32 @ntreeCompositTagAnimated(ptr noundef nonnull %149) #23
  %231 = load ptr, ptr %7, align 8, !tbaa !67
  %232 = getelementptr inbounds %struct.Scene, ptr %231, i64 0, i32 16
  %233 = load i8, ptr %232, align 2, !tbaa !271
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %383, label %235

235:                                              ; preds = %228
  %236 = load i32, ptr %23, align 4, !tbaa !150
  %237 = and i32 %236, 64
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %383, label %239

239:                                              ; preds = %235
  %240 = and i32 %236, 512
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %340

242:                                              ; preds = %239
  %243 = getelementptr inbounds %struct.Scene, ptr %231, i64 0, i32 22, i32 5
  %244 = load i32, ptr %243, align 8, !tbaa !282
  %245 = getelementptr inbounds %struct.Scene, ptr %231, i64 0, i32 18
  %246 = load ptr, ptr %245, align 8, !tbaa !272
  %247 = icmp eq ptr %246, null
  br i1 %247, label %340, label %248

248:                                              ; preds = %242
  tail call fastcc void @tag_scenes_for_render(ptr noundef %0)
  %249 = load ptr, ptr %7, align 8, !tbaa !67
  %250 = getelementptr inbounds %struct.Scene, ptr %249, i64 0, i32 18
  %251 = load ptr, ptr %250, align 8, !tbaa !272
  %252 = getelementptr inbounds %struct.bNodeTree, ptr %251, i64 0, i32 7
  %253 = load ptr, ptr %252, align 8, !tbaa !34
  %254 = icmp eq ptr %253, null
  br i1 %254, label %340, label %255

255:                                              ; preds = %248
  %256 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %257 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  %258 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  %259 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %260 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 86
  %261 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 87
  %262 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 90
  %263 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 91
  br label %264

264:                                              ; preds = %255, %330
  %265 = phi ptr [ %253, %255 ], [ %332, %330 ]
  %266 = phi i8 [ 0, %255 ], [ %331, %330 ]
  %267 = getelementptr inbounds %struct.bNode, ptr %265, i64 0, i32 8
  %268 = load i16, ptr %267, align 4, !tbaa !232
  %269 = icmp eq i16 %268, 221
  br i1 %269, label %270, label %330

270:                                              ; preds = %264
  %271 = getelementptr inbounds %struct.bNode, ptr %265, i64 0, i32 7
  %272 = load i32, ptr %271, align 8, !tbaa !234
  %273 = and i32 %272, 512
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %330

275:                                              ; preds = %270
  %276 = getelementptr inbounds %struct.bNode, ptr %265, i64 0, i32 20
  %277 = load ptr, ptr %276, align 8, !tbaa !235
  %278 = icmp eq ptr %277, null
  br i1 %278, label %330, label %279

279:                                              ; preds = %275
  %280 = load ptr, ptr %7, align 8, !tbaa !67
  %281 = icmp eq ptr %277, %280
  %282 = and i32 %272, 256
  %283 = icmp eq i32 %282, 0
  %284 = or i1 %283, %281
  br i1 %284, label %330, label %285

285:                                              ; preds = %279
  %286 = icmp ne ptr %277, %231
  %287 = zext i1 %286 to i8
  %288 = or i8 %266, %287
  %289 = getelementptr inbounds %struct.ID, ptr %277, i64 0, i32 4
  %290 = tail call ptr @RE_NewRender(ptr noundef nonnull %289)
  %291 = load i32, ptr %256, align 4, !tbaa !132
  %292 = load i32, ptr %257, align 8, !tbaa !133
  %293 = getelementptr inbounds %struct.Scene, ptr %277, i64 0, i32 22
  %294 = getelementptr inbounds %struct.Scene, ptr %277, i64 0, i32 22, i32 5
  store i32 %244, ptr %294, align 8, !tbaa !282
  %295 = tail call i32 @BKE_scene_camera_switch_update(ptr noundef nonnull %277) #23
  tail call void @RE_InitState(ptr noundef %290, ptr noundef %0, ptr noundef nonnull %293, ptr noundef null, i32 noundef %291, i32 noundef %292, ptr noundef nonnull %258)
  %296 = getelementptr inbounds %struct.Render, ptr %290, i64 0, i32 45, i32 46
  %297 = load i32, ptr %296, align 4, !tbaa !150
  %298 = and i32 %297, -1048577
  %299 = load i32, ptr %23, align 4, !tbaa !150
  %300 = and i32 %299, 1048576
  %301 = or disjoint i32 %300, %298
  store i32 %301, ptr %296, align 4, !tbaa !150
  %302 = load ptr, ptr %259, align 8, !tbaa !219
  %303 = getelementptr inbounds %struct.Render, ptr %290, i64 0, i32 43
  store ptr %302, ptr %303, align 8, !tbaa !219
  %304 = getelementptr inbounds %struct.Render, ptr %290, i64 0, i32 44
  store ptr %277, ptr %304, align 8, !tbaa !67
  %305 = getelementptr inbounds %struct.Scene, ptr %277, i64 0, i32 12
  %306 = load i32, ptr %305, align 8, !tbaa !292
  %307 = getelementptr inbounds %struct.Render, ptr %290, i64 0, i32 48
  store i32 %306, ptr %307, align 8, !tbaa !293
  %308 = tail call zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef nonnull %277) #23
  %309 = getelementptr inbounds %struct.Render, ptr %290, i64 0, i32 8
  store i8 %308, ptr %309, align 8, !tbaa !220
  %310 = load ptr, ptr %259, align 8, !tbaa !219
  tail call void @BKE_scene_set_background(ptr noundef %310, ptr noundef nonnull %277) #23
  %311 = load ptr, ptr %260, align 8, !tbaa !88
  %312 = getelementptr inbounds %struct.Render, ptr %290, i64 0, i32 86
  store ptr %311, ptr %312, align 8, !tbaa !88
  %313 = load ptr, ptr %261, align 8, !tbaa !98
  %314 = getelementptr inbounds %struct.Render, ptr %290, i64 0, i32 87
  store ptr %313, ptr %314, align 8, !tbaa !98
  %315 = load ptr, ptr %220, align 8, !tbaa !91
  %316 = getelementptr inbounds %struct.Render, ptr %290, i64 0, i32 96
  store ptr %315, ptr %316, align 8, !tbaa !91
  %317 = load ptr, ptr %222, align 8, !tbaa !95
  %318 = getelementptr inbounds %struct.Render, ptr %290, i64 0, i32 97
  store ptr %317, ptr %318, align 8, !tbaa !95
  %319 = load ptr, ptr %262, align 8, !tbaa !94
  %320 = getelementptr inbounds %struct.Render, ptr %290, i64 0, i32 90
  store ptr %319, ptr %320, align 8, !tbaa !94
  %321 = load ptr, ptr %263, align 8, !tbaa !97
  %322 = getelementptr inbounds %struct.Render, ptr %290, i64 0, i32 91
  store ptr %321, ptr %322, align 8, !tbaa !97
  %323 = load ptr, ptr %3, align 8, !tbaa !89
  %324 = getelementptr inbounds %struct.Render, ptr %290, i64 0, i32 88
  store ptr %323, ptr %324, align 8, !tbaa !89
  %325 = load ptr, ptr %5, align 8, !tbaa !175
  %326 = getelementptr inbounds %struct.Render, ptr %290, i64 0, i32 89
  store ptr %325, ptr %326, align 8, !tbaa !175
  tail call fastcc void @do_render_fields_blur_3d(ptr noundef %290)
  %327 = load i32, ptr %271, align 8, !tbaa !234
  %328 = and i32 %327, -257
  store i32 %328, ptr %271, align 8, !tbaa !234
  %329 = load ptr, ptr %245, align 8, !tbaa !272
  tail call void @nodeUpdate(ptr noundef %329, ptr noundef nonnull %265) #23
  br label %330

330:                                              ; preds = %285, %279, %275, %270, %264
  %331 = phi i8 [ %288, %285 ], [ %266, %279 ], [ %266, %275 ], [ %266, %270 ], [ %266, %264 ]
  %332 = load ptr, ptr %265, align 8, !tbaa !34
  %333 = icmp eq ptr %332, null
  br i1 %333, label %334, label %264, !llvm.loop !302

334:                                              ; preds = %330
  %335 = icmp eq i8 %331, 0
  br i1 %335, label %340, label %336

336:                                              ; preds = %334
  %337 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %338 = load ptr, ptr %337, align 8, !tbaa !219
  %339 = load ptr, ptr %7, align 8, !tbaa !67
  tail call void @BKE_scene_set_background(ptr noundef %338, ptr noundef %339) #23
  br label %340

340:                                              ; preds = %248, %336, %334, %242, %239
  %341 = load ptr, ptr %220, align 8, !tbaa !91
  %342 = load ptr, ptr %222, align 8, !tbaa !95
  %343 = tail call i32 %341(ptr noundef %342) #23
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %388

345:                                              ; preds = %340
  %346 = getelementptr inbounds %struct.bNodeTree, ptr %149, i64 0, i32 29
  store ptr @render_composit_stats, ptr %346, align 8, !tbaa !245
  %347 = load ptr, ptr %220, align 8, !tbaa !91
  %348 = getelementptr inbounds %struct.bNodeTree, ptr %149, i64 0, i32 30
  store ptr %347, ptr %348, align 8, !tbaa !248
  %349 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 92
  %350 = load ptr, ptr %349, align 8, !tbaa !90
  %351 = getelementptr inbounds %struct.bNodeTree, ptr %149, i64 0, i32 28
  store ptr %350, ptr %351, align 8, !tbaa !249
  %352 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 91
  %353 = load ptr, ptr %352, align 8, !tbaa !97
  %354 = getelementptr inbounds %struct.bNodeTree, ptr %149, i64 0, i32 34
  store ptr %353, ptr %354, align 8, !tbaa !250
  %355 = load ptr, ptr %222, align 8, !tbaa !95
  %356 = getelementptr inbounds %struct.bNodeTree, ptr %149, i64 0, i32 32
  store ptr %355, ptr %356, align 8, !tbaa !251
  %357 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 93
  %358 = load ptr, ptr %357, align 8, !tbaa !96
  %359 = getelementptr inbounds %struct.bNodeTree, ptr %149, i64 0, i32 33
  store ptr %358, ptr %359, align 8, !tbaa !252
  store ptr %353, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 91), align 8, !tbaa !97
  %360 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 90
  %361 = load ptr, ptr %360, align 8, !tbaa !94
  store ptr %361, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 90), align 8, !tbaa !94
  br i1 %188, label %362, label %370

362:                                              ; preds = %345
  %363 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 101
  %364 = load ptr, ptr %363, align 8, !tbaa !83
  %365 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %366 = load ptr, ptr %365, align 8, !tbaa !219
  %367 = load ptr, ptr %7, align 8, !tbaa !67
  %368 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 48
  %369 = load i32, ptr %368, align 8, !tbaa !293
  tail call void @BKE_scene_update_for_newframe(ptr noundef %364, ptr noundef %366, ptr noundef %367, i32 noundef %369) #23
  br label %370

370:                                              ; preds = %362, %345
  %371 = load i32, ptr %23, align 4, !tbaa !150
  %372 = and i32 %371, 32768
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %375, label %374

374:                                              ; preds = %370
  tail call fastcc void @do_merge_fullsample(ptr noundef %0, ptr noundef nonnull %149)
  br label %382

375:                                              ; preds = %370
  %376 = load ptr, ptr %7, align 8, !tbaa !67
  %377 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !92
  %378 = icmp eq i8 %377, 0
  %379 = zext i1 %378 to i32
  %380 = getelementptr inbounds %struct.Scene, ptr %376, i64 0, i32 44
  %381 = getelementptr inbounds %struct.Scene, ptr %376, i64 0, i32 45
  tail call void @ntreeCompositExecTree(ptr noundef %376, ptr noundef nonnull %149, ptr noundef nonnull %19, i32 noundef 1, i32 noundef %379, ptr noundef nonnull %380, ptr noundef nonnull %381) #23
  br label %382

382:                                              ; preds = %375, %374
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %351, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %356, i8 0, i64 24, i1 false)
  br label %388

383:                                              ; preds = %235, %228, %226
  %384 = load i32, ptr %23, align 4, !tbaa !150
  %385 = and i32 %384, 32768
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %388, label %387

387:                                              ; preds = %383
  tail call fastcc void @do_merge_fullsample(ptr noundef %0, ptr noundef null)
  br label %388

388:                                              ; preds = %387, %383, %382, %340, %219
  %389 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %390 = load ptr, ptr %389, align 8, !tbaa !66
  %391 = getelementptr inbounds %struct.RenderResult, ptr %390, i64 0, i32 12
  %392 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 61
  %393 = load i16, ptr %392, align 8, !tbaa !45
  %394 = sext i16 %393 to i32
  %395 = tail call ptr @BLI_findlink(ptr noundef nonnull %391, i32 noundef %394) #23
  %396 = icmp eq ptr %395, null
  br i1 %396, label %397, label %399

397:                                              ; preds = %388
  %398 = load ptr, ptr %391, align 8, !tbaa !63
  br label %399

399:                                              ; preds = %388, %397
  %400 = phi ptr [ %398, %397 ], [ %395, %388 ]
  %401 = load ptr, ptr %389, align 8, !tbaa !66
  %402 = getelementptr inbounds %struct.RenderResult, ptr %401, i64 0, i32 14
  store ptr %400, ptr %402, align 8, !tbaa !257
  %403 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 86
  %404 = load ptr, ptr %403, align 8, !tbaa !88
  %405 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 87
  %406 = load ptr, ptr %405, align 8, !tbaa !98
  tail call void %404(ptr noundef %406, ptr noundef %401, ptr noundef null) #23
  %407 = load ptr, ptr %146, align 8, !tbaa !300
  tail call void @BKE_image_pool_free(ptr noundef %407) #23
  store ptr null, ptr %146, align 8, !tbaa !300
  br label %408

408:                                              ; preds = %133, %399, %1
  %409 = call double @PIL_check_seconds_timer() #23
  %410 = load double, ptr %13, align 8, !tbaa !123
  %411 = fsub double %409, %410
  %412 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 15
  store double %411, ptr %412, align 8, !tbaa !181
  %413 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 90
  %414 = load ptr, ptr %413, align 8, !tbaa !94
  %415 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 91
  %416 = load ptr, ptr %415, align 8, !tbaa !97
  call void %414(ptr noundef %416, ptr noundef nonnull %12) #23
  %417 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 85
  %418 = load i32, ptr %417, align 8, !tbaa !303
  %419 = and i32 %418, 4031
  %420 = icmp eq i32 %419, 0
  %421 = and i32 %418, 64
  %422 = icmp eq i32 %421, 0
  %423 = or i1 %420, %422
  br i1 %423, label %475, label %424

424:                                              ; preds = %408
  %425 = icmp eq ptr %0, null
  br i1 %425, label %465, label %426

426:                                              ; preds = %424
  %427 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  call void @BLI_rw_mutex_lock(ptr noundef nonnull %427, i32 noundef 1) #23
  %428 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %429 = load ptr, ptr %428, align 8, !tbaa !66
  %430 = icmp eq ptr %429, null
  br i1 %430, label %456, label %431

431:                                              ; preds = %426
  %432 = getelementptr inbounds %struct.RenderResult, ptr %429, i64 0, i32 2
  %433 = load i32, ptr %432, align 8, !tbaa !68
  %434 = getelementptr inbounds %struct.RenderResult, ptr %429, i64 0, i32 3
  %435 = load i32, ptr %434, align 4, !tbaa !69
  %436 = getelementptr inbounds %struct.RenderResult, ptr %429, i64 0, i32 7
  %437 = load ptr, ptr %436, align 8, !tbaa !70
  %438 = getelementptr inbounds %struct.RenderResult, ptr %429, i64 0, i32 6
  %439 = load ptr, ptr %438, align 8, !tbaa !72
  %440 = getelementptr inbounds %struct.RenderResult, ptr %429, i64 0, i32 12
  %441 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 61
  %442 = load i16, ptr %441, align 8, !tbaa !45
  %443 = sext i16 %442 to i32
  %444 = call ptr @BLI_findlink(ptr noundef nonnull %440, i32 noundef %443) #23
  %445 = icmp eq ptr %444, null
  br i1 %445, label %446, label %448

446:                                              ; preds = %431
  %447 = load ptr, ptr %440, align 8, !tbaa !63
  br label %448

448:                                              ; preds = %446, %431
  %449 = phi ptr [ %447, %446 ], [ %444, %431 ]
  %450 = icmp ne ptr %449, null
  %451 = icmp eq ptr %437, null
  %452 = select i1 %450, i1 %451, i1 false
  br i1 %452, label %453, label %456

453:                                              ; preds = %448
  %454 = getelementptr inbounds %struct.RenderLayer, ptr %449, i64 0, i32 11
  %455 = load ptr, ptr %454, align 8, !tbaa !73
  br label %456

456:                                              ; preds = %453, %448, %426
  %457 = phi i32 [ 0, %426 ], [ %435, %448 ], [ %435, %453 ]
  %458 = phi i32 [ 0, %426 ], [ %433, %448 ], [ %433, %453 ]
  %459 = phi ptr [ null, %426 ], [ %439, %448 ], [ %439, %453 ]
  %460 = phi ptr [ null, %426 ], [ %437, %448 ], [ %455, %453 ]
  %461 = load ptr, ptr %7, align 8, !tbaa !67
  %462 = call ptr @RE_GetCamera(ptr noundef nonnull %0) #23
  call void @BKE_stamp_buf(ptr noundef %461, ptr noundef %462, ptr noundef %459, ptr noundef %460, i32 noundef %458, i32 noundef %457, i32 noundef 4) #23
  br i1 %425, label %468, label %463

463:                                              ; preds = %456
  %464 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  call void @BLI_rw_mutex_unlock(ptr noundef nonnull %464) #23
  br label %468

465:                                              ; preds = %424
  %466 = load ptr, ptr %7, align 8, !tbaa !67
  %467 = call ptr @RE_GetCamera(ptr noundef %0) #23
  call void @BKE_stamp_buf(ptr noundef %466, ptr noundef %467, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 4) #23
  br label %468

468:                                              ; preds = %465, %456, %463
  %469 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 86
  %470 = load ptr, ptr %469, align 8, !tbaa !88
  %471 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 87
  %472 = load ptr, ptr %471, align 8, !tbaa !98
  %473 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %474 = load ptr, ptr %473, align 8, !tbaa !66
  call void %470(ptr noundef %472, ptr noundef %474, ptr noundef null) #23
  br label %475

475:                                              ; preds = %468, %408
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #16

declare void @BKE_makepicstring(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @do_write_image_or_movie(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca [1024 x i8], align 16
  %7 = alloca %struct.RenderResult, align 8
  %8 = alloca %struct.ImageFormatData, align 8
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %7) #23
  %9 = tail call ptr @RE_GetCamera(ptr noundef %0) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %7, i8 0, i64 144, i1 false)
  %10 = icmp eq ptr %0, null
  br i1 %10, label %82, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull %12, i32 noundef 1) #23
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !66
  %15 = icmp eq ptr %14, null
  br i1 %15, label %82, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.RenderResult, ptr %14, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !68
  %19 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 2
  store i32 %18, ptr %19, align 8, !tbaa !68
  %20 = getelementptr inbounds %struct.RenderResult, ptr %14, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !69
  %22 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 3
  store i32 %21, ptr %22, align 4, !tbaa !69
  %23 = getelementptr inbounds %struct.RenderResult, ptr %14, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !70
  %25 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 7
  store ptr %24, ptr %25, align 8, !tbaa !70
  %26 = getelementptr inbounds %struct.RenderResult, ptr %14, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !71
  %28 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 8
  store ptr %27, ptr %28, align 8, !tbaa !71
  %29 = getelementptr inbounds %struct.RenderResult, ptr %14, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !72
  %31 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 6
  store ptr %30, ptr %31, align 8, !tbaa !72
  %32 = getelementptr inbounds %struct.RenderResult, ptr %14, i64 0, i32 12
  %33 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 61
  %34 = load i16, ptr %33, align 8, !tbaa !45
  %35 = sext i16 %34 to i32
  %36 = tail call ptr @BLI_findlink(ptr noundef nonnull %32, i32 noundef %35) #23
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %16
  %39 = load ptr, ptr %32, align 8, !tbaa !63
  br label %40

40:                                               ; preds = %38, %16
  %41 = phi ptr [ %39, %38 ], [ %36, %16 ]
  %42 = icmp eq ptr %41, null
  br i1 %42, label %67, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr %25, align 8, !tbaa !70
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.RenderLayer, ptr %41, i64 0, i32 11
  %48 = load ptr, ptr %47, align 8, !tbaa !73
  store ptr %48, ptr %25, align 8, !tbaa !70
  br label %49

49:                                               ; preds = %46, %43
  %50 = load ptr, ptr %28, align 8, !tbaa !71
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %67

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.RenderLayer, ptr %41, i64 0, i32 18
  br label %54

54:                                               ; preds = %58, %52
  %55 = phi ptr [ %53, %52 ], [ %56, %58 ]
  %56 = load ptr, ptr %55, align 8, !tbaa !34
  %57 = icmp eq ptr %56, null
  br i1 %57, label %65, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.RenderPass, ptr %56, i64 0, i32 2
  %60 = load i32, ptr %59, align 8, !tbaa !38
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %54, !llvm.loop !41

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.RenderPass, ptr %56, i64 0, i32 6
  %64 = load ptr, ptr %63, align 8, !tbaa !44
  br label %65

65:                                               ; preds = %54, %62
  %66 = phi ptr [ %64, %62 ], [ null, %54 ]
  store ptr %66, ptr %28, align 8, !tbaa !71
  br label %67

67:                                               ; preds = %65, %49, %40
  %68 = load ptr, ptr %13, align 8, !tbaa !66
  %69 = getelementptr inbounds %struct.RenderResult, ptr %68, i64 0, i32 7
  %70 = load ptr, ptr %69, align 8, !tbaa !70
  %71 = icmp ne ptr %70, null
  %72 = zext i1 %71 to i32
  %73 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 17
  store i32 %72, ptr %73, align 8, !tbaa !75
  %74 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 12
  %75 = getelementptr inbounds %struct.RenderResult, ptr %68, i64 0, i32 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %74, ptr noundef nonnull align 8 dereferenceable(16) %75, i64 16, i1 false), !tbaa.struct !76
  %76 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  %77 = load i32, ptr %76, align 4, !tbaa !77
  %78 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 10
  store i32 %77, ptr %78, align 8, !tbaa !78
  %79 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 2
  %80 = load i32, ptr %79, align 4, !tbaa !79
  %81 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 11
  store i32 %80, ptr %81, align 4, !tbaa !80
  br label %82

82:                                               ; preds = %5, %11, %67
  %83 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22
  %84 = load i8, ptr %83, align 8, !tbaa !283
  %85 = tail call zeroext i8 @BKE_imtype_is_movie(i8 noundef zeroext %84) #23
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %142, label %87

87:                                               ; preds = %82
  %88 = call ptr @render_result_rect_to_ibuf(ptr noundef nonnull %7, ptr noundef nonnull %83) #23
  %89 = getelementptr inbounds %struct.ImBuf, ptr %88, i64 0, i32 8
  %90 = load ptr, ptr %89, align 8, !tbaa !304
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %114

92:                                               ; preds = %87
  %93 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !34
  %94 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 2
  %95 = load i32, ptr %94, align 8, !tbaa !68
  %96 = sext i32 %95 to i64
  %97 = shl nsw i64 %96, 2
  %98 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 3
  %99 = load i32, ptr %98, align 4, !tbaa !69
  %100 = sext i32 %99 to i64
  %101 = mul i64 %97, %100
  %102 = call ptr %93(i64 noundef %101, ptr noundef nonnull @.str.36) #23
  store ptr %102, ptr %89, align 8, !tbaa !304
  %103 = getelementptr inbounds %struct.ImBuf, ptr %88, i64 0, i32 7
  %104 = load i32, ptr %103, align 4, !tbaa !307
  %105 = or i32 %104, 1
  store i32 %105, ptr %103, align 4, !tbaa !307
  %106 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 20
  %107 = load i32, ptr %106, align 8, !tbaa !81
  %108 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 21
  %109 = load i32, ptr %108, align 4, !tbaa !82
  %110 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %111 = load ptr, ptr %110, align 8, !tbaa !67
  %112 = getelementptr inbounds %struct.Scene, ptr %111, i64 0, i32 44
  %113 = getelementptr inbounds %struct.Scene, ptr %111, i64 0, i32 45
  call void @render_result_rect_get_pixels(ptr noundef nonnull %7, ptr noundef %102, i32 noundef %107, i32 noundef %109, ptr noundef nonnull %112, ptr noundef nonnull %113) #23
  br label %114

114:                                              ; preds = %92, %87
  %115 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 44
  %116 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 45
  %117 = call ptr @IMB_colormanagement_imbuf_for_write(ptr noundef %88, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %115, ptr noundef nonnull %116, ptr noundef nonnull %83) #23
  %118 = getelementptr inbounds %struct.bMovieHandle, ptr %3, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !308
  %120 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45
  %121 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 6
  %122 = load i32, ptr %121, align 4, !tbaa !310
  %123 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 5
  %124 = load i32, ptr %123, align 8, !tbaa !282
  %125 = load ptr, ptr %89, align 8, !tbaa !304
  %126 = getelementptr inbounds %struct.ImBuf, ptr %88, i64 0, i32 2
  %127 = load i32, ptr %126, align 8, !tbaa !311
  %128 = getelementptr inbounds %struct.ImBuf, ptr %88, i64 0, i32 3
  %129 = load i32, ptr %128, align 4, !tbaa !312
  %130 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 99
  %131 = load ptr, ptr %130, align 8, !tbaa !148
  %132 = call i32 %119(ptr noundef nonnull %120, i32 noundef %122, i32 noundef %124, ptr noundef %125, i32 noundef %127, i32 noundef %129, ptr noundef %131) #23
  br i1 %91, label %133, label %139

133:                                              ; preds = %114
  %134 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %135 = load ptr, ptr %89, align 8, !tbaa !304
  call void %134(ptr noundef %135) #23
  store ptr null, ptr %89, align 8, !tbaa !304
  %136 = getelementptr inbounds %struct.ImBuf, ptr %88, i64 0, i32 7
  %137 = load i32, ptr %136, align 4, !tbaa !307
  %138 = and i32 %137, -2
  store i32 %138, ptr %136, align 4, !tbaa !307
  br label %139

139:                                              ; preds = %133, %114
  call void @IMB_freeImBuf(ptr noundef %88) #23
  %140 = load i32, ptr %123, align 8, !tbaa !282
  %141 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, i32 noundef %140)
  br label %203

142:                                              ; preds = %82
  %143 = icmp eq ptr %4, null
  br i1 %143, label %146, label %144

144:                                              ; preds = %142
  %145 = call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef nonnull %4, i64 noundef 1024) #23
  br label %156

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 84
  %148 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 2
  %149 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 5
  %150 = load i32, ptr %149, align 8, !tbaa !282
  %151 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 46
  %152 = load i32, ptr %151, align 4, !tbaa !277
  %153 = trunc i32 %152 to i8
  %154 = lshr i8 %153, 4
  %155 = and i8 %154, 1
  call void @BKE_makepicstring(ptr noundef nonnull %6, ptr noundef nonnull %147, ptr noundef nonnull %148, i32 noundef %150, ptr noundef nonnull %83, i8 noundef zeroext %155, i8 noundef zeroext 1) #23
  br label %156

156:                                              ; preds = %146, %144
  %157 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45
  %158 = load i8, ptr %157, align 8, !tbaa !313
  %159 = icmp eq i8 %158, 28
  br i1 %159, label %160, label %172

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %162 = load ptr, ptr %161, align 8, !tbaa !66
  %163 = icmp eq ptr %162, null
  br i1 %163, label %203, label %164

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 99
  %166 = load ptr, ptr %165, align 8, !tbaa !148
  %167 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 0, i32 6
  %168 = load i8, ptr %167, align 2, !tbaa !314
  %169 = zext i8 %168 to i32
  %170 = call zeroext i8 @RE_WriteRenderResult(ptr noundef %166, ptr noundef nonnull %162, ptr noundef nonnull %6, i32 noundef %169) #23
  %171 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, ptr noundef nonnull %6)
  br label %203

172:                                              ; preds = %156
  %173 = call ptr @render_result_rect_to_ibuf(ptr noundef nonnull %7, ptr noundef nonnull %83) #23
  %174 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 44
  %175 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 45
  %176 = call ptr @IMB_colormanagement_imbuf_for_write(ptr noundef %173, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %174, ptr noundef nonnull %175, ptr noundef nonnull %83) #23
  %177 = call i32 @BKE_imbuf_write_stamp(ptr noundef %2, ptr noundef %9, ptr noundef %173, ptr noundef nonnull %6, ptr noundef nonnull %83) #23
  %178 = icmp eq i32 %177, 0
  %179 = select i1 %178, ptr @.str.39, ptr @.str.38
  %180 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %179, ptr noundef nonnull %6)
  br i1 %178, label %202, label %181

181:                                              ; preds = %172
  %182 = load i8, ptr %83, align 8, !tbaa !283
  %183 = icmp eq i8 %182, 23
  br i1 %183, label %184, label %202

184:                                              ; preds = %181
  %185 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 0, i32 3
  %186 = load i8, ptr %185, align 1, !tbaa !315
  %187 = and i8 %186, 2
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %202, label %189

189:                                              ; preds = %184
  call void @llvm.lifetime.start.p0(i64 248, ptr nonnull %8) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %8, ptr noundef nonnull align 8 dereferenceable(248) %83, i64 248, i1 false), !tbaa.struct !316
  store i8 4, ptr %8, align 8, !tbaa !317
  %190 = call zeroext i8 @BLI_testextensie(ptr noundef nonnull %6, ptr noundef nonnull @.str.40) #23
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %196, label %192

192:                                              ; preds = %189
  %193 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #24
  %194 = add i64 %193, -4
  %195 = getelementptr inbounds [1024 x i8], ptr %6, i64 0, i64 %194
  store i8 0, ptr %195, align 1, !tbaa !125
  br label %196

196:                                              ; preds = %192, %189
  %197 = call i32 @BKE_add_image_extension(ptr noundef nonnull %6, ptr noundef nonnull %8) #23
  %198 = getelementptr inbounds %struct.ImBuf, ptr %173, i64 0, i32 4
  store i8 24, ptr %198, align 8, !tbaa !318
  %199 = call ptr @IMB_colormanagement_imbuf_for_write(ptr noundef %173, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %174, ptr noundef nonnull %175, ptr noundef nonnull %8) #23
  %200 = call i32 @BKE_imbuf_write_stamp(ptr noundef %2, ptr noundef %9, ptr noundef %173, ptr noundef nonnull %6, ptr noundef nonnull %8) #23
  %201 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, ptr noundef nonnull %6)
  call void @llvm.lifetime.end.p0(i64 248, ptr nonnull %8) #23
  br label %202

202:                                              ; preds = %196, %184, %181, %172
  call void @IMB_freeImBuf(ptr noundef %173) #23
  br label %203

203:                                              ; preds = %202, %164, %160, %139
  %204 = phi i32 [ %132, %139 ], [ 1, %164 ], [ 1, %160 ], [ %177, %202 ]
  br i1 %10, label %207, label %205

205:                                              ; preds = %203
  %206 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  call void @BLI_rw_mutex_unlock(ptr noundef nonnull %206) #23
  br label %207

207:                                              ; preds = %203, %205
  %208 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 15
  %209 = load double, ptr %208, align 8, !tbaa !181
  %210 = call double @PIL_check_seconds_timer() #23
  %211 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 14
  %212 = load double, ptr %211, align 8, !tbaa !123
  %213 = fsub double %210, %212
  store double %213, ptr %208, align 8, !tbaa !181
  call void @BLI_timestr(double noundef %213, ptr noundef nonnull %6, i64 noundef 1024) #23
  %214 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, ptr noundef nonnull %6)
  %215 = load ptr, ptr @G, align 8, !tbaa !111
  call void @BLI_callback_exec(ptr noundef %215, ptr noundef null, i32 noundef 4) #23
  %216 = load double, ptr %208, align 8, !tbaa !181
  %217 = fsub double %216, %209
  call void @BLI_timestr(double noundef %217, ptr noundef nonnull %6, i64 noundef 1024) #23
  %218 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, ptr noundef nonnull %6)
  %219 = load ptr, ptr @stdout, align 8, !tbaa !34
  %220 = call i32 @fputc(i32 noundef 10, ptr noundef %219)
  %221 = load ptr, ptr @stdout, align 8, !tbaa !34
  %222 = call i32 @fflush(ptr noundef %221)
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #23
  ret i32 %204
}

; Function Attrs: nounwind uwtable
define dso_local void @RE_BlenderAnim(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = alloca %struct.RenderData, align 8
  %10 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 3984, ptr nonnull %9) #23
  %11 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3984) %9, ptr noundef nonnull align 8 dereferenceable(3984) %11, i64 3984, i1 false), !tbaa.struct !124
  %12 = load i8, ptr %11, align 8, !tbaa !283
  %13 = tail call ptr @BKE_movie_handle_get(i8 noundef zeroext %12) #23
  %14 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !282
  %16 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %17 = load ptr, ptr %16, align 8, !tbaa !219
  tail call void @BLI_callback_exec(ptr noundef %17, ptr noundef %2, i32 noundef 5) #23
  %18 = call fastcc i32 @render_initialize_from_main(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef %3, i32 noundef %4, i32 noundef 0)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %236, label %20

20:                                               ; preds = %8
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !281
  %21 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 4
  %22 = load i16, ptr %21, align 8, !tbaa !319
  %23 = or i16 %22, 128
  store i16 %23, ptr %21, align 8, !tbaa !319
  %24 = load i8, ptr %11, align 8, !tbaa !283
  %25 = tail call zeroext i8 @BKE_imtype_is_movie(i8 noundef zeroext %24) #23
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %56, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45
  %29 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %30 = load i32, ptr %29, align 8, !tbaa !121
  %31 = and i32 %30, 512
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %27
  %34 = and i32 %30, 2048
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %38 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  br label %45

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 20
  %41 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 21
  br label %45

42:                                               ; preds = %27
  %43 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 20
  %44 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 21
  br label %45

45:                                               ; preds = %36, %39, %42
  %46 = phi ptr [ %37, %36 ], [ %40, %39 ], [ %43, %42 ]
  %47 = phi ptr [ %38, %36 ], [ %41, %39 ], [ %44, %42 ]
  %48 = load i32, ptr %47, align 4, !tbaa !128
  %49 = load i32, ptr %46, align 4, !tbaa !128
  %50 = load ptr, ptr %13, align 8, !tbaa !320
  %51 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 99
  %52 = load ptr, ptr %51, align 8, !tbaa !148
  %53 = tail call i32 %50(ptr noundef %2, ptr noundef nonnull %28, i32 noundef %49, i32 noundef %48, ptr noundef %52) #23
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !102
  br label %56

56:                                               ; preds = %45, %55, %20
  %57 = getelementptr inbounds %struct.bMovieHandle, ptr %13, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !321
  %59 = icmp eq ptr %58, null
  br i1 %59, label %73, label %60

60:                                               ; preds = %56
  %61 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !102
  %62 = icmp eq i8 %61, 1
  br i1 %62, label %214, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45
  %65 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 99
  %66 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 6
  %67 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 7
  %68 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 5
  %69 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %70 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %71 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %72 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  br label %86

73:                                               ; preds = %56
  store i32 %5, ptr %14, align 8, !tbaa !282
  %74 = icmp sgt i32 %5, %6
  br i1 %74, label %214, label %75

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 48
  %77 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 101
  %78 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 47
  %79 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 84
  %80 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 2
  %81 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 46
  %82 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 5
  %83 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %84 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %85 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 47
  br label %124

86:                                               ; preds = %63, %120
  %87 = phi i32 [ 0, %63 ], [ %121, %120 ]
  %88 = load ptr, ptr %57, align 8, !tbaa !321
  %89 = load ptr, ptr %65, align 8, !tbaa !148
  %90 = tail call i32 %88(ptr noundef nonnull %64, ptr noundef %89) #23
  %91 = icmp sgt i32 %90, -1
  br i1 %91, label %92, label %114

92:                                               ; preds = %86
  %93 = load i32, ptr %66, align 4, !tbaa !310
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %114, label %95

95:                                               ; preds = %92
  %96 = load i32, ptr %67, align 8, !tbaa !322
  %97 = icmp sgt i32 %90, %96
  br i1 %97, label %114, label %98

98:                                               ; preds = %95
  store i32 %90, ptr %68, align 8, !tbaa !296
  store i32 %90, ptr %14, align 8, !tbaa !282
  %99 = load ptr, ptr %16, align 8, !tbaa !219
  tail call void @BLI_callback_exec(ptr noundef %99, ptr noundef %2, i32 noundef 2) #23
  tail call fastcc void @do_render_all_options(ptr noundef %0)
  %100 = add nsw i32 %87, 1
  %101 = load ptr, ptr %69, align 8, !tbaa !91
  %102 = load ptr, ptr %70, align 8, !tbaa !95
  %103 = tail call i32 %101(ptr noundef %102) #23
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %98
  %106 = tail call fastcc i32 @do_write_image_or_movie(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %13, ptr noundef null)
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !102
  br label %109

109:                                              ; preds = %105, %108, %98
  %110 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !102
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %109
  %113 = load ptr, ptr %16, align 8, !tbaa !219
  tail call void @BLI_callback_exec(ptr noundef %113, ptr noundef %2, i32 noundef 3) #23
  br label %120

114:                                              ; preds = %95, %92, %86
  %115 = load ptr, ptr %71, align 8, !tbaa !91
  %116 = load ptr, ptr %72, align 8, !tbaa !95
  %117 = tail call i32 %115(ptr noundef %116) #23
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %114
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !102
  br label %120

120:                                              ; preds = %114, %119, %109, %112
  %121 = phi i32 [ %100, %112 ], [ %100, %109 ], [ %87, %119 ], [ %87, %114 ]
  %122 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !102
  %123 = icmp eq i8 %122, 1
  br i1 %123, label %214, label %86, !llvm.loop !323

124:                                              ; preds = %75, %208
  %125 = phi i32 [ %5, %75 ], [ %207, %208 ]
  %126 = phi i32 [ 0, %75 ], [ %205, %208 ]
  %127 = phi i32 [ 0, %75 ], [ %204, %208 ]
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %10) #23
  %128 = call fastcc i32 @render_initialize_from_main(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef %3, i32 noundef %4, i32 noundef 1)
  %129 = load i32, ptr %14, align 8, !tbaa !282
  %130 = icmp eq i32 %125, %129
  br i1 %130, label %137, label %131

131:                                              ; preds = %124
  %132 = load i32, ptr %76, align 8, !tbaa !293
  %133 = and i32 %132, -16777216
  %134 = icmp eq i32 %133, 0
  %135 = select i1 %134, i32 %132, i32 %133
  %136 = load ptr, ptr %77, align 8, !tbaa !83
  call void @BKE_scene_update_for_newframe(ptr noundef %136, ptr noundef %1, ptr noundef %2, i32 noundef %135) #23
  br label %203

137:                                              ; preds = %124
  %138 = add nsw i32 %125, %7
  %139 = load i8, ptr %11, align 8, !tbaa !283
  %140 = call zeroext i8 @BKE_imtype_is_movie(i8 noundef zeroext %139) #23
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %142, label %171

142:                                              ; preds = %137
  %143 = load i32, ptr %78, align 8, !tbaa !236
  %144 = and i32 %143, 12582912
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %142
  %147 = load i32, ptr %14, align 8, !tbaa !282
  %148 = load i32, ptr %81, align 4, !tbaa !277
  %149 = trunc i32 %148 to i8
  %150 = lshr i8 %149, 4
  %151 = and i8 %150, 1
  call void @BKE_makepicstring(ptr noundef nonnull %10, ptr noundef nonnull %79, ptr noundef nonnull %80, i32 noundef %147, ptr noundef nonnull %11, i8 noundef zeroext %151, i8 noundef zeroext 1) #23
  br label %152

152:                                              ; preds = %146, %142
  %153 = load i32, ptr %78, align 8, !tbaa !236
  %154 = and i32 %153, 4194304
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %162, label %156

156:                                              ; preds = %152
  %157 = call i32 @BLI_exists(ptr noundef nonnull %10) #23
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %156
  %160 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef nonnull %10)
  %161 = add nsw i32 %126, 1
  br label %203

162:                                              ; preds = %156, %152
  %163 = load i32, ptr %78, align 8, !tbaa !236
  %164 = and i32 %163, 8388608
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %162
  %167 = call i32 @BLI_exists(ptr noundef nonnull %10) #23
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %166
  call void @BLI_make_existing_file(ptr noundef nonnull %10) #23
  %170 = call zeroext i8 @BLI_file_touch(ptr noundef nonnull %10) #23
  br label %171

171:                                              ; preds = %162, %166, %169, %137
  %172 = load i32, ptr %14, align 8, !tbaa !282
  store i32 %172, ptr %82, align 8, !tbaa !296
  %173 = load ptr, ptr %16, align 8, !tbaa !219
  call void @BLI_callback_exec(ptr noundef %173, ptr noundef %2, i32 noundef 2) #23
  call fastcc void @do_render_all_options(ptr noundef %0)
  %174 = add nsw i32 %127, 1
  %175 = load ptr, ptr %83, align 8, !tbaa !91
  %176 = load ptr, ptr %84, align 8, !tbaa !95
  %177 = call i32 %175(ptr noundef %176) #23
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %171
  %180 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !102
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %179
  %183 = call fastcc i32 @do_write_image_or_movie(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %13, ptr noundef null)
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %171, %182
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !102
  br label %186

186:                                              ; preds = %185, %179, %182
  %187 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !102
  switch i8 %187, label %203 [
    i8 1, label %188
    i8 0, label %201
  ]

188:                                              ; preds = %186
  %189 = load i8, ptr %11, align 8, !tbaa !283
  %190 = call zeroext i8 @BKE_imtype_is_movie(i8 noundef zeroext %189) #23
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %192, label %203

192:                                              ; preds = %188
  %193 = load i32, ptr %85, align 8, !tbaa !236
  %194 = and i32 %193, 8388608
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %203, label %196

196:                                              ; preds = %192
  %197 = call i64 @BLI_file_size(ptr noundef nonnull %10) #23
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %196
  %200 = call i32 @BLI_delete(ptr noundef nonnull %10, i8 noundef zeroext 0, i8 noundef zeroext 0) #23
  br label %203

201:                                              ; preds = %186
  %202 = load ptr, ptr %16, align 8, !tbaa !219
  call void @BLI_callback_exec(ptr noundef %202, ptr noundef %2, i32 noundef 3) #23
  br label %203

203:                                              ; preds = %201, %186, %188, %199, %196, %192, %159, %131
  %204 = phi i32 [ %127, %131 ], [ %127, %159 ], [ %174, %192 ], [ %174, %196 ], [ %174, %199 ], [ %174, %188 ], [ %174, %186 ], [ %174, %201 ]
  %205 = phi i32 [ %126, %131 ], [ %161, %159 ], [ %126, %192 ], [ %126, %196 ], [ %126, %199 ], [ %126, %188 ], [ %126, %186 ], [ %126, %201 ]
  %206 = phi i1 [ false, %131 ], [ false, %159 ], [ true, %192 ], [ true, %196 ], [ true, %199 ], [ true, %188 ], [ false, %186 ], [ false, %201 ]
  %207 = phi i32 [ %125, %131 ], [ %138, %159 ], [ %138, %192 ], [ %138, %196 ], [ %138, %199 ], [ %138, %188 ], [ %138, %186 ], [ %138, %201 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %10) #23
  br i1 %206, label %212, label %208

208:                                              ; preds = %203
  %209 = load i32, ptr %14, align 8, !tbaa !282
  %210 = add nsw i32 %209, 1
  store i32 %210, ptr %14, align 8, !tbaa !282
  %211 = icmp slt i32 %209, %6
  br i1 %211, label %124, label %212, !llvm.loop !324

212:                                              ; preds = %203, %208
  %213 = icmp ne i32 %205, 0
  br label %214

214:                                              ; preds = %120, %212, %60, %73
  %215 = phi i32 [ 0, %73 ], [ 0, %60 ], [ %204, %212 ], [ %121, %120 ]
  %216 = phi i1 [ false, %73 ], [ false, %60 ], [ %213, %212 ], [ false, %120 ]
  %217 = load i8, ptr %11, align 8, !tbaa !283
  %218 = call zeroext i8 @BKE_imtype_is_movie(i8 noundef zeroext %217) #23
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %223, label %220

220:                                              ; preds = %214
  %221 = getelementptr inbounds %struct.bMovieHandle, ptr %13, i64 0, i32 2
  %222 = load ptr, ptr %221, align 8, !tbaa !325
  call void %222() #23
  br label %223

223:                                              ; preds = %220, %214
  %224 = icmp eq i32 %215, 0
  %225 = select i1 %216, i1 %224, i1 false
  br i1 %225, label %226, label %229

226:                                              ; preds = %223
  %227 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 99
  %228 = load ptr, ptr %227, align 8, !tbaa !148
  call void @BKE_report(ptr noundef %228, i32 noundef 2, ptr noundef nonnull @.str.15) #23
  br label %229

229:                                              ; preds = %226, %223
  store i32 %15, ptr %14, align 8, !tbaa !282
  %230 = load i16, ptr %21, align 8, !tbaa !319
  %231 = and i16 %230, -129
  store i16 %231, ptr %21, align 8, !tbaa !319
  %232 = load ptr, ptr %16, align 8, !tbaa !219
  %233 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !102
  %234 = icmp eq i8 %233, 0
  %235 = select i1 %234, i32 6, i32 7
  call void @BLI_callback_exec(ptr noundef %232, ptr noundef %2, i32 noundef %235) #23
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !281
  br label %236

236:                                              ; preds = %8, %229
  call void @llvm.lifetime.end.p0(i64 3984, ptr nonnull %9) #23
  ret void
}

declare ptr @BKE_movie_handle_get(i8 noundef zeroext) local_unnamed_addr #1

declare void @BKE_scene_update_for_newframe(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @BLI_exists(ptr noundef) local_unnamed_addr #1

declare void @BLI_make_existing_file(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BLI_file_touch(ptr noundef) local_unnamed_addr #1

declare i64 @BLI_file_size(ptr noundef) local_unnamed_addr #1

declare i32 @BLI_delete(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @RE_PreviewRender(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22
  %5 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 30
  %6 = load i16, ptr %5, align 2, !tbaa !238
  %7 = sext i16 %6 to i32
  %8 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 33
  %9 = load i32, ptr %8, align 4, !tbaa !239
  %10 = mul nsw i32 %9, %7
  %11 = sdiv i32 %10, 100
  %12 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 34
  %13 = load i32, ptr %12, align 8, !tbaa !240
  %14 = mul nsw i32 %13, %7
  %15 = sdiv i32 %14, 100
  tail call void @RE_InitState(ptr noundef %0, ptr noundef null, ptr noundef nonnull %4, ptr noundef null, i32 noundef %11, i32 noundef %15, ptr noundef null)
  %16 = tail call ptr @BKE_image_pool_new() #23
  %17 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 100
  store ptr %16, ptr %17, align 8, !tbaa !300
  %18 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  store ptr %1, ptr %18, align 8, !tbaa !219
  %19 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  store ptr %2, ptr %19, align 8, !tbaa !67
  %20 = tail call zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef %2) #23
  %21 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 8
  store i8 %20, ptr %21, align 8, !tbaa !220
  %22 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 12
  %23 = load i32, ptr %22, align 8, !tbaa !292
  %24 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 48
  store i32 %23, ptr %24, align 8, !tbaa !293
  %25 = tail call ptr @RE_GetCamera(ptr noundef %0) #23
  tail call void @RE_SetCamera(ptr noundef %0, ptr noundef %25) #23
  tail call fastcc void @do_render_3d(ptr noundef %0)
  %26 = load ptr, ptr %17, align 8, !tbaa !300
  tail call void @BKE_image_pool_free(ptr noundef %26) #23
  store ptr null, ptr %17, align 8, !tbaa !300
  ret void
}

declare ptr @BKE_image_pool_new() local_unnamed_addr #1

declare ptr @RE_GetCamera(ptr noundef) local_unnamed_addr #1

declare void @RE_SetCamera(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @do_render_3d(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 88
  %3 = load ptr, ptr %2, align 8, !tbaa !89
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 89
  %5 = load ptr, ptr %4, align 8, !tbaa !175
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  tail call void %3(ptr noundef %5, ptr noundef %7) #23
  %8 = tail call i32 @RE_engine_render(ptr noundef %0, i32 noundef 0) #23
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %84

10:                                               ; preds = %1
  tail call void @RE_parts_clamp(ptr noundef %0) #23
  %11 = load ptr, ptr %6, align 8, !tbaa !67
  %12 = getelementptr inbounds %struct.Scene, ptr %11, i64 0, i32 22, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !282
  %14 = sitofp i32 %13 to double
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 58
  %16 = load float, ptr %15, align 8, !tbaa !155
  %17 = fpext float %16 to double
  %18 = fadd double %14, %17
  %19 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 59
  %20 = load float, ptr %19, align 4, !tbaa !154
  %21 = fpext float %20 to double
  %22 = fadd double %18, %21
  tail call void @BKE_scene_frame_set(ptr noundef %11, double noundef %22) #23
  %23 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 94
  %24 = load ptr, ptr %23, align 8, !tbaa !176
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %10
  %27 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 95
  %28 = load ptr, ptr %27, align 8, !tbaa !177
  tail call void %24(ptr noundef %28, i32 noundef 1) #23
  br label %29

29:                                               ; preds = %26, %10
  %30 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 60
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = icmp eq ptr %31, null
  br i1 %32, label %55, label %33

33:                                               ; preds = %29, %45
  %34 = phi i1 [ %47, %45 ], [ %32, %29 ]
  %35 = phi ptr [ %46, %45 ], [ %31, %29 ]
  %36 = getelementptr inbounds %struct.SceneRenderLayer, ptr %35, i64 0, i32 8
  %37 = load i32, ptr %36, align 4, !tbaa !268
  %38 = and i32 %37, 131072
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.SceneRenderLayer, ptr %35, i64 0, i32 9
  %42 = load i32, ptr %41, align 8, !tbaa !326
  %43 = and i32 %42, 512
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40, %33
  %46 = load ptr, ptr %35, align 8, !tbaa !34
  %47 = icmp eq ptr %46, null
  br i1 %47, label %55, label %33, !llvm.loop !327

48:                                               ; preds = %40
  br i1 %34, label %55, label %49

49:                                               ; preds = %48
  %50 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %51 = load ptr, ptr %50, align 8, !tbaa !219
  %52 = load ptr, ptr %6, align 8, !tbaa !67
  %53 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 48
  %54 = load i32, ptr %53, align 8, !tbaa !293
  tail call void @RE_Database_FromScene_Vectors(ptr noundef %0, ptr noundef %51, ptr noundef %52, i32 noundef %54) #23
  br label %61

55:                                               ; preds = %45, %29, %48
  %56 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %57 = load ptr, ptr %56, align 8, !tbaa !219
  %58 = load ptr, ptr %6, align 8, !tbaa !67
  %59 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 48
  %60 = load i32, ptr %59, align 8, !tbaa !293
  tail call void @RE_Database_FromScene(ptr noundef %0, ptr noundef %57, ptr noundef %58, i32 noundef %60, i32 noundef 1) #23
  tail call void @RE_Database_Preprocess(ptr noundef %0) #23
  br label %61

61:                                               ; preds = %55, %49
  %62 = load ptr, ptr %23, align 8, !tbaa !176
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 95
  %66 = load ptr, ptr %65, align 8, !tbaa !177
  tail call void %62(ptr noundef %66, i32 noundef 0) #23
  br label %67

67:                                               ; preds = %64, %61
  tail call fastcc void @threaded_tile_processor(ptr noundef %0)
  %68 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 4
  %69 = load i16, ptr %68, align 8, !tbaa !319
  %70 = and i16 %69, 2
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %74 = load ptr, ptr %73, align 8, !tbaa !91
  %75 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %76 = load ptr, ptr %75, align 8, !tbaa !95
  %77 = tail call i32 %74(ptr noundef %76) #23
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  tail call void @add_halo_flare(ptr noundef %0) #23
  br label %80

80:                                               ; preds = %72, %79, %67
  tail call void @RE_Database_Free(ptr noundef %0) #23
  %81 = load ptr, ptr %6, align 8, !tbaa !67
  %82 = getelementptr inbounds %struct.Scene, ptr %81, i64 0, i32 22, i32 5
  store i32 %13, ptr %82, align 8, !tbaa !282
  %83 = getelementptr inbounds %struct.Scene, ptr %81, i64 0, i32 22, i32 8
  store float 0.000000e+00, ptr %83, align 4, !tbaa !328
  br label %84

84:                                               ; preds = %1, %80
  ret void
}

declare void @BKE_image_pool_free(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @render_result_exr_file_cache_read(ptr noundef) local_unnamed_addr #1

declare i32 @BKE_render_num_threads(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @RE_layer_load_from_file(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @IMB_loadiffname(ptr noundef %2, i32 noundef 1, ptr noundef null) #23
  %7 = icmp eq ptr %6, null
  br i1 %7, label %79, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !304
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !329
  %15 = icmp eq ptr %14, null
  br i1 %15, label %79, label %16

16:                                               ; preds = %12, %8
  %17 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !311
  %19 = getelementptr inbounds %struct.RenderLayer, ptr %0, i64 0, i32 15
  %20 = load i32, ptr %19, align 8, !tbaa !330
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !312
  %25 = getelementptr inbounds %struct.RenderLayer, ptr %0, i64 0, i32 16
  %26 = load i32, ptr %25, align 4, !tbaa !331
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 9
  %30 = load ptr, ptr %29, align 8, !tbaa !329
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  tail call void @IMB_float_from_rect(ptr noundef nonnull %6) #23
  br label %33

33:                                               ; preds = %32, %28
  %34 = getelementptr inbounds %struct.RenderLayer, ptr %0, i64 0, i32 11
  %35 = load ptr, ptr %34, align 8, !tbaa !73
  %36 = load ptr, ptr %29, align 8, !tbaa !329
  %37 = load i32, ptr %19, align 8, !tbaa !330
  %38 = sext i32 %37 to i64
  %39 = shl nsw i64 %38, 4
  %40 = load i32, ptr %25, align 4, !tbaa !331
  %41 = sext i32 %40 to i64
  %42 = mul i64 %39, %41
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %35, ptr align 4 %36, i64 %42, i1 false)
  br label %78

43:                                               ; preds = %22, %16
  %44 = sub nsw i32 %18, %3
  %45 = icmp slt i32 %44, %20
  br i1 %45, label %77, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 3
  %48 = load i32, ptr %47, align 4, !tbaa !312
  %49 = sub nsw i32 %48, %4
  %50 = getelementptr inbounds %struct.RenderLayer, ptr %0, i64 0, i32 16
  %51 = load i32, ptr %50, align 4, !tbaa !331
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %77, label %53

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 9
  %55 = load ptr, ptr %54, align 8, !tbaa !329
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  tail call void @IMB_float_from_rect(ptr noundef nonnull %6) #23
  br label %58

58:                                               ; preds = %57, %53
  %59 = load i32, ptr %19, align 8, !tbaa !330
  %60 = load i32, ptr %50, align 4, !tbaa !331
  %61 = tail call ptr @IMB_allocImBuf(i32 noundef %59, i32 noundef %60, i8 noundef zeroext 32, i32 noundef 32) #23
  %62 = icmp eq ptr %61, null
  br i1 %62, label %76, label %63

63:                                               ; preds = %58
  %64 = load i32, ptr %19, align 8, !tbaa !330
  %65 = load i32, ptr %50, align 4, !tbaa !331
  tail call void @IMB_rectcpy(ptr noundef nonnull %61, ptr noundef nonnull %6, i32 noundef 0, i32 noundef 0, i32 noundef %3, i32 noundef %4, i32 noundef %64, i32 noundef %65) #23
  %66 = getelementptr inbounds %struct.RenderLayer, ptr %0, i64 0, i32 11
  %67 = load ptr, ptr %66, align 8, !tbaa !73
  %68 = getelementptr inbounds %struct.ImBuf, ptr %61, i64 0, i32 9
  %69 = load ptr, ptr %68, align 8, !tbaa !329
  %70 = load i32, ptr %19, align 8, !tbaa !330
  %71 = sext i32 %70 to i64
  %72 = shl nsw i64 %71, 4
  %73 = load i32, ptr %50, align 4, !tbaa !331
  %74 = sext i32 %73 to i64
  %75 = mul i64 %72, %74
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %67, ptr align 4 %69, i64 %75, i1 false)
  tail call void @IMB_freeImBuf(ptr noundef nonnull %61) #23
  br label %78

76:                                               ; preds = %58
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.16, ptr noundef %2) #23
  br label %78

77:                                               ; preds = %46, %43
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.17, ptr noundef %2) #23
  br label %78

78:                                               ; preds = %63, %76, %77, %33
  tail call void @IMB_freeImBuf(ptr noundef nonnull %6) #23
  br label %80

79:                                               ; preds = %12, %5
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.18, ptr noundef %2) #23
  br label %80

80:                                               ; preds = %79, %78
  ret void
}

declare ptr @IMB_loadiffname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @IMB_float_from_rect(ptr noundef) local_unnamed_addr #1

declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

declare void @IMB_rectcpy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #1

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @RE_result_load_from_file(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @render_result_exr_file_read_path(ptr noundef %0, ptr noundef null, ptr noundef %2) #23
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.18, ptr noundef %2) #23
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

declare i32 @render_result_exr_file_read_path(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @RE_WriteEnvmapResult(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i8 noundef zeroext %4, ptr nocapture noundef readonly %5) local_unnamed_addr #0 {
  %7 = alloca %struct.ImageFormatData, align 8
  %8 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 248, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %8) #23
  %9 = getelementptr inbounds %struct.EnvMap, ptr %2, i64 0, i32 2, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %75, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %7, ptr noundef nonnull align 8 dereferenceable(248) %13, i64 248, i1 false), !tbaa.struct !316
  store i8 %4, ptr %7, align 8, !tbaa !317
  %14 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !311
  %16 = getelementptr inbounds %struct.EnvMap, ptr %2, i64 0, i32 5
  %17 = load i16, ptr %16, align 4, !tbaa !332
  switch i16 %17, label %75 [
    i16 0, label %18
    i16 1, label %61
  ]

18:                                               ; preds = %12, %18
  %19 = phi i64 [ %33, %18 ], [ 0, %12 ]
  %20 = phi i32 [ %32, %18 ], [ 0, %12 ]
  %21 = phi i32 [ %26, %18 ], [ 0, %12 ]
  %22 = getelementptr inbounds float, ptr %5, i64 %19
  %23 = load float, ptr %22, align 4, !tbaa !127
  %24 = fptosi float %23 to i32
  %25 = add nsw i32 %24, 1
  %26 = tail call i32 @llvm.smax.i32(i32 %25, i32 %21)
  %27 = or disjoint i64 %19, 1
  %28 = getelementptr inbounds float, ptr %5, i64 %27
  %29 = load float, ptr %28, align 4, !tbaa !127
  %30 = fptosi float %29 to i32
  %31 = add nsw i32 %30, 1
  %32 = tail call i32 @llvm.smax.i32(i32 %31, i32 %20)
  %33 = add nuw nsw i64 %19, 2
  %34 = icmp ult i64 %19, 10
  br i1 %34, label %18, label %35, !llvm.loop !334

35:                                               ; preds = %18
  %36 = mul nsw i32 %26, %15
  %37 = mul nsw i32 %32, %15
  %38 = tail call ptr @IMB_allocImBuf(i32 noundef %36, i32 noundef %37, i8 noundef zeroext 24, i32 noundef 32) #23
  %39 = sitofp i32 %15 to float
  br label %40

40:                                               ; preds = %35, %58
  %41 = phi i64 [ 0, %35 ], [ %59, %58 ]
  %42 = getelementptr inbounds float, ptr %5, i64 %41
  %43 = load float, ptr %42, align 4, !tbaa !127
  %44 = fcmp ogt float %43, -1.000000e+00
  br i1 %44, label %45, label %58

45:                                               ; preds = %40
  %46 = or disjoint i64 %41, 1
  %47 = getelementptr inbounds float, ptr %5, i64 %46
  %48 = load float, ptr %47, align 4, !tbaa !127
  %49 = fcmp ogt float %48, -1.000000e+00
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = lshr exact i64 %41, 1
  %52 = getelementptr inbounds %struct.EnvMap, ptr %2, i64 0, i32 2, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !34
  %54 = fmul float %43, %39
  %55 = fptosi float %54 to i32
  %56 = fmul float %48, %39
  %57 = fptosi float %56 to i32
  tail call void @IMB_rectcpy(ptr noundef %38, ptr noundef %53, i32 noundef %55, i32 noundef %57, i32 noundef 0, i32 noundef 0, i32 noundef %15, i32 noundef %15) #23
  br label %58

58:                                               ; preds = %40, %45, %50
  %59 = add nuw nsw i64 %41, 2
  %60 = icmp ult i64 %41, 10
  br i1 %60, label %40, label %64, !llvm.loop !335

61:                                               ; preds = %12
  %62 = tail call ptr @IMB_allocImBuf(i32 noundef %15, i32 noundef %15, i8 noundef zeroext 24, i32 noundef 32) #23
  %63 = load ptr, ptr %9, align 8, !tbaa !34
  tail call void @IMB_rectcpy(ptr noundef %62, ptr noundef %63, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %15, i32 noundef %15) #23
  br label %64

64:                                               ; preds = %58, %61
  %65 = phi ptr [ %62, %61 ], [ %38, %58 ]
  %66 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 44
  %67 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 45
  %68 = call ptr @IMB_colormanagement_imbuf_for_write(ptr noundef %65, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %66, ptr noundef nonnull %67, ptr noundef nonnull %7) #23
  %69 = call ptr @BLI_strncpy(ptr noundef nonnull %8, ptr noundef %3, i64 noundef 1024) #23
  %70 = load ptr, ptr @G, align 8, !tbaa !111
  %71 = getelementptr inbounds %struct.Main, ptr %70, i64 0, i32 2
  %72 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %8, ptr noundef nonnull %71) #23
  %73 = call i32 @BKE_imbuf_write(ptr noundef %65, ptr noundef nonnull %8, ptr noundef nonnull %7) #23
  call void @IMB_freeImBuf(ptr noundef %65) #23
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %64, %12, %6
  %76 = phi ptr [ @.str.19, %6 ], [ @.str.20, %12 ], [ @.str.21, %64 ]
  call void @BKE_report(ptr noundef %0, i32 noundef 32, ptr noundef nonnull %76) #23
  br label %77

77:                                               ; preds = %75, %64
  %78 = phi i8 [ 1, %64 ], [ 0, %75 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 248, ptr nonnull %7) #23
  ret i8 %78
}

declare ptr @IMB_colormanagement_imbuf_for_write(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BLI_path_abs(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BKE_imbuf_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #16

declare ptr @render_result_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @render_result_new_full_sample(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @RE_parts_init(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @render_result_exr_file_begin(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none) uwtable
define internal i32 @thread_break(ptr nocapture readnone %0) #17 {
  %2 = load volatile i32, ptr @g_break, align 4, !tbaa !128
  ret i32 %2
}

declare ptr @BLI_thread_queue_init() local_unnamed_addr #1

declare void @BLI_thread_queue_push(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_thread_queue_nowait(ptr noundef) local_unnamed_addr #1

declare void @BLI_init_threads(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef ptr @do_render_thread(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.RenderThread, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.RenderThread, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %struct.RenderThread, ptr %0, i64 0, i32 4
  %5 = getelementptr inbounds %struct.RenderThread, ptr %0, i64 0, i32 1
  br label %6

6:                                                ; preds = %89, %1
  %7 = load ptr, ptr %0, align 8, !tbaa !200
  %8 = tail call ptr @BLI_thread_queue_pop(ptr noundef %7) #23
  %9 = icmp eq ptr %8, null
  br i1 %9, label %95, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr %2, align 8, !tbaa !203
  %12 = trunc i32 %11 to i16
  %13 = getelementptr inbounds %struct.RenderPart, ptr %8, i64 0, i32 20
  store i16 %12, ptr %13, align 2, !tbaa !336
  %14 = getelementptr inbounds %struct.RenderPart, ptr %8, i64 0, i32 18
  store i16 1, ptr %14, align 2, !tbaa !187
  %15 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 96), align 8, !tbaa !91
  %16 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 97), align 8, !tbaa !95
  %17 = tail call i32 %15(ptr noundef %16) #23
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %82

19:                                               ; preds = %10
  %20 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 75), align 8, !tbaa !183
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !150
  %24 = and i32 %23, 32768
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.RenderPart, ptr %8, i64 0, i32 3
  %28 = getelementptr inbounds %struct.RenderPart, ptr %8, i64 0, i32 13
  %29 = getelementptr inbounds %struct.RenderPart, ptr %8, i64 0, i32 17
  %30 = load i16, ptr %29, align 4, !tbaa !337
  %31 = sext i16 %30 to i32
  %32 = tail call ptr @render_result_new_full_sample(ptr noundef nonnull @R, ptr noundef nonnull %27, ptr noundef nonnull %28, i32 noundef %31, i32 noundef 0) #23
  br label %39

33:                                               ; preds = %22, %19
  %34 = getelementptr inbounds %struct.RenderPart, ptr %8, i64 0, i32 13
  %35 = getelementptr inbounds %struct.RenderPart, ptr %8, i64 0, i32 17
  %36 = load i16, ptr %35, align 4, !tbaa !337
  %37 = sext i16 %36 to i32
  %38 = tail call ptr @render_result_new(ptr noundef nonnull @R, ptr noundef nonnull %34, i32 noundef %37, i32 noundef 0, ptr noundef null) #23
  br label %39

39:                                               ; preds = %33, %26
  %40 = phi ptr [ %38, %33 ], [ %32, %26 ]
  %41 = getelementptr inbounds %struct.RenderPart, ptr %8, i64 0, i32 2
  store ptr %40, ptr %41, align 8, !tbaa !207
  %42 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 9), align 8, !tbaa !66
  %43 = getelementptr inbounds %struct.RenderResult, ptr %42, i64 0, i32 15
  %44 = load i32, ptr %43, align 8, !tbaa !184
  %45 = getelementptr inbounds %struct.RenderPart, ptr %8, i64 0, i32 2
  %46 = getelementptr inbounds %struct.RenderResult, ptr %40, i64 0, i32 15
  store i32 %44, ptr %46, align 8, !tbaa !184
  %47 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 75), align 8, !tbaa !183
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %39
  tail call void @zbufshade_sss_tile(ptr noundef nonnull %8) #23
  br label %55

50:                                               ; preds = %39
  %51 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !152
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  tail call void @zbufshadeDA_tile(ptr noundef nonnull %8) #23
  br label %55

54:                                               ; preds = %50
  tail call void @zbufshade_tile(ptr noundef nonnull %8) #23
  br label %55

55:                                               ; preds = %54, %53, %49
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 12), i32 noundef 1) #23
  %56 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 9), align 8, !tbaa !66
  %57 = getelementptr inbounds %struct.RenderResult, ptr %56, i64 0, i32 15
  %58 = load i32, ptr %57, align 8, !tbaa !184
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  %61 = load ptr, ptr %45, align 8, !tbaa !207
  tail call void @render_result_exr_file_merge(ptr noundef %56, ptr noundef %61) #23
  br label %81

62:                                               ; preds = %55
  %63 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 75), align 8, !tbaa !183
  %64 = icmp ne ptr %63, null
  %65 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4
  %66 = and i32 %65, 524296
  %67 = icmp ne i32 %66, 0
  %68 = select i1 %64, i1 %67, i1 false
  br i1 %68, label %81, label %69

69:                                               ; preds = %62
  %70 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 96), align 8, !tbaa !91
  %71 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 97), align 8, !tbaa !95
  %72 = tail call i32 %70(ptr noundef %71) #23
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %69
  %75 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !150
  %76 = and i32 %75, 524296
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74, %69
  %79 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 9), align 8, !tbaa !66
  %80 = load ptr, ptr %45, align 8, !tbaa !207
  tail call void @render_result_merge(ptr noundef %79, ptr noundef %80) #23
  br label %81

81:                                               ; preds = %78, %74, %62, %60
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 12)) #23
  br label %82

82:                                               ; preds = %10, %81
  store i16 2, ptr %14, align 2, !tbaa !187
  %83 = load ptr, ptr %3, align 8, !tbaa !204
  %84 = icmp eq ptr %83, null
  br i1 %84, label %89, label %85

85:                                               ; preds = %82
  %86 = load ptr, ptr %4, align 8, !tbaa !205
  %87 = getelementptr inbounds %struct.RenderPart, ptr %8, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !207
  tail call void %83(ptr noundef %86, ptr noundef %88, ptr noundef null) #23
  br label %89

89:                                               ; preds = %85, %82
  %90 = load ptr, ptr %5, align 8, !tbaa !202
  tail call void @BLI_thread_queue_push(ptr noundef %90, ptr noundef nonnull %8) #23
  %91 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 96), align 8, !tbaa !91
  %92 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 97), align 8, !tbaa !95
  %93 = tail call i32 %91(ptr noundef %92) #23
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %6, label %95, !llvm.loop !338

95:                                               ; preds = %89, %6
  ret ptr null
}

declare void @BLI_insert_thread(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BLI_thread_queue_pop_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @render_result_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_end_threads(ptr noundef) local_unnamed_addr #1

declare ptr @BLI_thread_queue_pop(ptr noundef) local_unnamed_addr #1

declare void @BLI_thread_queue_free(ptr noundef) local_unnamed_addr #1

declare void @render_result_exr_file_end(ptr noundef) local_unnamed_addr #1

declare void @render_result_exr_file_cache_write(ptr noundef) local_unnamed_addr #1

declare void @RE_parts_free(ptr noundef) local_unnamed_addr #1

declare void @project_renderdata(ptr noundef, ptr noundef, i8 noundef zeroext, float noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @projectverto(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #15

declare void @zbufshade_sss_tile(ptr noundef) local_unnamed_addr #1

declare void @zbufshadeDA_tile(ptr noundef) local_unnamed_addr #1

declare void @zbufshade_tile(ptr noundef) local_unnamed_addr #1

declare void @render_result_exr_file_merge(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @render_result_merge(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @render_composit_stats(ptr nocapture readnone %0, ptr noundef %1) #0 {
  store ptr %1, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 98, i32 16), align 8, !tbaa !209
  %3 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 90), align 8, !tbaa !94
  %4 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 91), align 8, !tbaa !97
  tail call void %3(ptr noundef %4, ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 98)) #23
  store ptr null, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 98, i32 16), align 8, !tbaa !209
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @tag_scenes_for_render(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 48
  %3 = load i32, ptr %2, align 8, !tbaa !293
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %5 = load ptr, ptr %4, align 8, !tbaa !219
  %6 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %1, %9
  %10 = phi ptr [ %14, %9 ], [ %7, %1 ]
  %11 = getelementptr inbounds %struct.ID, ptr %10, i64 0, i32 5
  %12 = load i16, ptr %11, align 2, !tbaa !221
  %13 = and i16 %12, -1025
  store i16 %13, ptr %11, align 2, !tbaa !221
  tail call fastcc void @tag_dependend_objects_for_render(ptr noundef nonnull %10, i32 noundef %3)
  %14 = load ptr, ptr %10, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %9, !llvm.loop !339

16:                                               ; preds = %9, %1
  %17 = tail call ptr @RE_GetCamera(ptr noundef %0) #23
  %18 = icmp eq ptr %17, null
  br i1 %18, label %61, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %21 = load ptr, ptr %20, align 8, !tbaa !67
  %22 = getelementptr inbounds %struct.Scene, ptr %21, i64 0, i32 18
  %23 = load ptr, ptr %22, align 8, !tbaa !272
  %24 = icmp eq ptr %23, null
  br i1 %24, label %57, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.Scene, ptr %21, i64 0, i32 16
  %27 = load i8, ptr %26, align 2, !tbaa !271
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %57, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.Scene, ptr %21, i64 0, i32 22, i32 46
  %31 = load i32, ptr %30, align 4, !tbaa !277
  %32 = and i32 %31, 64
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %57, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.bNodeTree, ptr %23, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !34
  %37 = icmp eq ptr %36, null
  br i1 %37, label %61, label %38

38:                                               ; preds = %34, %54
  %39 = phi ptr [ %55, %54 ], [ %36, %34 ]
  %40 = getelementptr inbounds %struct.bNode, ptr %39, i64 0, i32 8
  %41 = load i16, ptr %40, align 4, !tbaa !232
  %42 = icmp eq i16 %41, 221
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.bNode, ptr %39, i64 0, i32 7
  %45 = load i32, ptr %44, align 8, !tbaa !234
  %46 = and i32 %45, 512
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.bNode, ptr %39, i64 0, i32 20
  %50 = load ptr, ptr %49, align 8, !tbaa !235
  %51 = icmp eq ptr %50, null
  %52 = icmp eq ptr %50, %21
  %53 = or i1 %51, %52
  br i1 %53, label %57, label %54

54:                                               ; preds = %48, %43, %38
  %55 = load ptr, ptr %39, align 8, !tbaa !34
  %56 = icmp eq ptr %55, null
  br i1 %56, label %61, label %38, !llvm.loop !301

57:                                               ; preds = %48, %29, %25, %19
  %58 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 5
  %59 = load i16, ptr %58, align 2, !tbaa !221
  %60 = or i16 %59, 1024
  store i16 %60, ptr %58, align 2, !tbaa !221
  tail call fastcc void @tag_dependend_objects_for_render(ptr noundef %21, i32 noundef %3)
  br label %61

61:                                               ; preds = %54, %34, %57, %16
  %62 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %63 = load ptr, ptr %62, align 8, !tbaa !67
  %64 = getelementptr inbounds %struct.Scene, ptr %63, i64 0, i32 18
  %65 = load ptr, ptr %64, align 8, !tbaa !272
  %66 = icmp eq ptr %65, null
  br i1 %66, label %156, label %67

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.bNodeTree, ptr %65, i64 0, i32 7
  %69 = load ptr, ptr %68, align 8, !tbaa !34
  %70 = icmp eq ptr %69, null
  br i1 %70, label %156, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 99
  br label %73

73:                                               ; preds = %71, %153
  %74 = phi ptr [ %69, %71 ], [ %154, %153 ]
  %75 = getelementptr inbounds %struct.bNode, ptr %74, i64 0, i32 7
  %76 = load i32, ptr %75, align 8, !tbaa !234
  %77 = and i32 %76, -257
  store i32 %77, ptr %75, align 8, !tbaa !234
  %78 = getelementptr inbounds %struct.bNode, ptr %74, i64 0, i32 8
  %79 = load i16, ptr %78, align 4, !tbaa !232
  %80 = icmp eq i16 %79, 221
  %81 = and i32 %76, 512
  %82 = icmp eq i32 %81, 0
  %83 = select i1 %80, i1 %82, i1 false
  br i1 %83, label %84, label %153

84:                                               ; preds = %73
  %85 = getelementptr inbounds %struct.bNode, ptr %74, i64 0, i32 20
  %86 = load ptr, ptr %85, align 8, !tbaa !235
  %87 = icmp eq ptr %86, null
  br i1 %87, label %153, label %88

88:                                               ; preds = %84
  %89 = load ptr, ptr %4, align 8, !tbaa !219
  %90 = getelementptr inbounds %struct.Main, ptr %89, i64 0, i32 3
  %91 = load i16, ptr %90, align 8, !tbaa !340
  %92 = icmp sgt i16 %91, 265
  br i1 %92, label %128, label %93

93:                                               ; preds = %88
  %94 = icmp eq i16 %91, 265
  br i1 %94, label %95, label %99

95:                                               ; preds = %93
  %96 = getelementptr inbounds %struct.Main, ptr %89, i64 0, i32 4
  %97 = load i16, ptr %96, align 2, !tbaa !342
  %98 = icmp sgt i16 %97, 4
  br i1 %98, label %128, label %99

99:                                               ; preds = %95, %93
  %100 = load ptr, ptr %62, align 8, !tbaa !67
  %101 = getelementptr inbounds %struct.Scene, ptr %100, i64 0, i32 18
  %102 = load ptr, ptr %101, align 8, !tbaa !272
  %103 = getelementptr inbounds %struct.bNode, ptr %74, i64 0, i32 18
  %104 = load ptr, ptr %103, align 8, !tbaa !34
  %105 = icmp eq ptr %104, null
  br i1 %105, label %128, label %106

106:                                              ; preds = %99, %115
  %107 = phi i1 [ %117, %115 ], [ %105, %99 ]
  %108 = phi ptr [ %116, %115 ], [ %104, %99 ]
  %109 = getelementptr inbounds %struct.bNodeSocket, ptr %108, i64 0, i32 5
  %110 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %109, ptr noundef nonnull dereferenceable(6) @.str.32) #24
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = tail call i32 @nodeCountSocketLinks(ptr noundef %102, ptr noundef nonnull %108) #23
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %112, %106
  %116 = load ptr, ptr %108, align 8, !tbaa !34
  %117 = icmp eq ptr %116, null
  br i1 %117, label %128, label %106, !llvm.loop !343

118:                                              ; preds = %112
  br i1 %107, label %128, label %119

119:                                              ; preds = %118
  %120 = load ptr, ptr %85, align 8, !tbaa !235
  %121 = getelementptr inbounds %struct.Scene, ptr %120, i64 0, i32 22, i32 53
  %122 = load i16, ptr %121, align 8, !tbaa !344
  %123 = icmp eq i16 %122, 1
  br i1 %123, label %128, label %124

124:                                              ; preds = %119
  %125 = load ptr, ptr %72, align 8, !tbaa !148
  %126 = getelementptr inbounds %struct.ID, ptr %120, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %125, i32 noundef 16, ptr noundef nonnull @.str.30, ptr noundef nonnull %126) #23
  %127 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, ptr noundef nonnull %126)
  store i16 1, ptr %121, align 8, !tbaa !344
  br label %128

128:                                              ; preds = %115, %99, %119, %124, %118, %95, %88
  %129 = load ptr, ptr %85, align 8, !tbaa !235
  %130 = load ptr, ptr %62, align 8, !tbaa !67
  %131 = icmp eq ptr %129, %130
  br i1 %131, label %153, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.ID, ptr %129, i64 0, i32 5
  %134 = load i16, ptr %133, align 2, !tbaa !345
  %135 = and i16 %134, 1024
  %136 = icmp eq i16 %135, 0
  br i1 %136, label %137, label %153

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.Scene, ptr %129, i64 0, i32 22, i32 60
  br label %139

139:                                              ; preds = %143, %137
  %140 = phi ptr [ %138, %137 ], [ %141, %143 ]
  %141 = load ptr, ptr %140, align 8, !tbaa !34
  %142 = icmp eq ptr %141, null
  br i1 %142, label %153, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.SceneRenderLayer, ptr %141, i64 0, i32 8
  %145 = load i32, ptr %144, align 4, !tbaa !268
  %146 = and i32 %145, 131072
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %139, !llvm.loop !280

148:                                              ; preds = %143
  br i1 %142, label %153, label %149

149:                                              ; preds = %148
  %150 = load i32, ptr %75, align 8, !tbaa !234
  %151 = or i32 %150, 256
  store i32 %151, ptr %75, align 8, !tbaa !234
  %152 = or disjoint i16 %134, 1024
  store i16 %152, ptr %133, align 2, !tbaa !345
  tail call fastcc void @tag_dependend_objects_for_render(ptr noundef %129, i32 noundef %3)
  br label %153

153:                                              ; preds = %139, %148, %149, %73, %128, %132, %84
  %154 = load ptr, ptr %74, align 8, !tbaa !34
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %73, !llvm.loop !346

156:                                              ; preds = %153, %67, %61
  ret void
}

declare i32 @render_result_exr_file_read_sample(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @ntreeCompositTagRender(ptr noundef) local_unnamed_addr #1

declare i32 @ntreeCompositTagAnimated(ptr noundef) local_unnamed_addr #1

declare void @ntreeCompositExecTree(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @mask_array(i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @add_filt_fmask_coord(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @tag_dependend_objects_for_render(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.VirtualModifierData, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  store ptr %0, ptr %3, align 8, !tbaa !34
  %5 = call ptr @_setlooper_base_step(ptr noundef nonnull %3, ptr noundef null) #23
  %6 = icmp eq ptr %5, null
  br i1 %6, label %80, label %7

7:                                                ; preds = %2, %77
  %8 = phi ptr [ %78, %77 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.Base, ptr %8, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !347
  %11 = getelementptr inbounds %struct.Base, ptr %8, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !349
  %13 = and i32 %12, %1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %77, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 3
  %17 = load i16, ptr %16, align 8, !tbaa !350
  %18 = icmp eq i16 %17, 1
  br i1 %18, label %19, label %77

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 55
  %21 = load i16, ptr %20, align 8, !tbaa !215
  %22 = zext i16 %21 to i32
  %23 = and i32 %22, 792
  %24 = icmp ne i32 %23, 0
  %25 = and i32 %22, 2056
  %26 = icmp eq i32 %25, 0
  %27 = and i1 %26, %24
  br i1 %27, label %77, label %28

28:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %4) #23
  %29 = call ptr @modifiers_getVirtualModifierList(ptr noundef %10, ptr noundef nonnull %4) #23
  %30 = icmp eq ptr %29, null
  br i1 %30, label %76, label %31

31:                                               ; preds = %28, %73
  %32 = phi ptr [ %74, %73 ], [ %29, %28 ]
  %33 = call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %32, i32 noundef 2) #23
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %73, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ModifierData, ptr %32, i64 0, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !351
  switch i32 %37, label %73 [
    i32 11, label %38
    i32 12, label %46
    i32 25, label %63
  ]

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.BooleanModifierData, ptr %32, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !353
  %41 = icmp eq ptr %40, null
  br i1 %41, label %73, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 3
  %44 = load i16, ptr %43, align 8, !tbaa !350
  %45 = icmp eq i16 %44, 1
  br i1 %45, label %71, label %73

46:                                               ; preds = %35
  %47 = getelementptr inbounds %struct.ArrayModifierData, ptr %32, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !355
  %49 = icmp eq ptr %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.Object, ptr %48, i64 0, i32 3
  %52 = load i16, ptr %51, align 8, !tbaa !350
  %53 = icmp eq i16 %52, 1
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  call void @DAG_id_tag_update(ptr noundef nonnull %48, i16 noundef signext 2) #23
  br label %55

55:                                               ; preds = %54, %50, %46
  %56 = getelementptr inbounds %struct.ArrayModifierData, ptr %32, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !357
  %58 = icmp eq ptr %57, null
  br i1 %58, label %73, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.Object, ptr %57, i64 0, i32 3
  %61 = load i16, ptr %60, align 8, !tbaa !350
  %62 = icmp eq i16 %61, 1
  br i1 %62, label %71, label %73

63:                                               ; preds = %35
  %64 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %32, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !358
  %66 = icmp eq ptr %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.Object, ptr %65, i64 0, i32 3
  %69 = load i16, ptr %68, align 8, !tbaa !350
  %70 = icmp eq i16 %69, 1
  br i1 %70, label %71, label %73

71:                                               ; preds = %67, %59, %42
  %72 = phi ptr [ %40, %42 ], [ %57, %59 ], [ %65, %67 ]
  call void @DAG_id_tag_update(ptr noundef nonnull %72, i16 noundef signext 2) #23
  br label %73

73:                                               ; preds = %71, %63, %67, %35, %55, %59, %38, %42, %31
  %74 = load ptr, ptr %32, align 8, !tbaa !360
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %31, !llvm.loop !361

76:                                               ; preds = %73, %28
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %4) #23
  br label %77

77:                                               ; preds = %15, %76, %19, %7
  %78 = call ptr @_setlooper_base_step(ptr noundef nonnull %3, ptr noundef nonnull %8) #23
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %7, !llvm.loop !362

80:                                               ; preds = %77, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  ret void
}

declare ptr @_setlooper_base_step(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @modifiers_getVirtualModifierList(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @modifier_isEnabled(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare i32 @nodeCountSocketLinks(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @node_tree_has_composite_output(ptr nocapture noundef readonly %0) unnamed_addr #18 {
  %2 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1, %16
  %6 = phi ptr [ %17, %16 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 8
  %8 = load i16, ptr %7, align 4, !tbaa !232
  switch i16 %8, label %16 [
    i16 222, label %19
    i16 223, label %19
    i16 2, label %9
  ]

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !235
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = tail call fastcc zeroext i8 @node_tree_has_composite_output(ptr noundef nonnull %11), !range !273
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %5, %9, %13
  %17 = load ptr, ptr %6, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %5, !llvm.loop !363

19:                                               ; preds = %5, %5, %13, %16, %1
  %20 = phi i8 [ 0, %1 ], [ 1, %5 ], [ 1, %5 ], [ 1, %13 ], [ 0, %16 ]
  ret i8 %20
}

declare ptr @BKE_scene_camera_find(ptr noundef) local_unnamed_addr #1

declare void @render_result_single_layer_begin(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @RE_engine_is_external(ptr noundef) local_unnamed_addr #1

declare i32 @BKE_scene_camera_switch_update(ptr noundef) local_unnamed_addr #1

declare void @BKE_image_all_free_anim_ibufs(i32 noundef) local_unnamed_addr #1

declare i32 @RE_engine_render(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @BKE_animsys_evaluate_all_animation(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

declare void @BKE_sequencer_new_render_data(ptr dead_on_unwind writable sret(%struct.SeqRenderData) align 8, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @BKE_sequencer_give_ibuf(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #1

declare ptr @IMB_dupImBuf(ptr noundef) local_unnamed_addr #1

declare void @BKE_sequencer_imbuf_from_sequencer_space(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @render_result_rect_from_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_sequencer_free_imbuf(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @render_result_rect_fill_zero(ptr noundef) local_unnamed_addr #1

declare void @BLI_srandom(i32 noundef) local_unnamed_addr #1

declare void @ntreeFreeCache(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @do_render_fields_blur_3d(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.rcti, align 4
  %3 = tail call ptr @RE_GetCamera(ptr noundef %0) #23
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 99
  %7 = load ptr, ptr %6, align 8, !tbaa !148
  tail call void @BKE_report(ptr noundef %7, i32 noundef 32, ptr noundef nonnull @.str.35) #23
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !102
  br label %177

8:                                                ; preds = %1
  tail call void @RE_SetCamera(ptr noundef %0, ptr noundef nonnull %3) #23
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %10 = load i32, ptr %9, align 8, !tbaa !121
  %11 = and i32 %10, 64
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %112, label %13

13:                                               ; preds = %8
  %14 = tail call ptr @RE_GetCamera(ptr noundef %0) #23
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  %16 = load i32, ptr %15, align 8, !tbaa !133
  %17 = sdiv i32 %16, 2
  store i32 %17, ptr %15, align 8, !tbaa !133
  %18 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 21
  %19 = load i32, ptr %18, align 4, !tbaa !82
  %20 = sdiv i32 %19, 2
  store i32 %20, ptr %18, align 4, !tbaa !82
  %21 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  %22 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !79
  %24 = sdiv i32 %23, 2
  store i32 %24, ptr %22, align 4, !tbaa !79
  %25 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !139
  %27 = sdiv i32 %26, 2
  store i32 %27, ptr %25, align 4, !tbaa !139
  %28 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 7
  store i16 1, ptr %28, align 4, !tbaa !364
  tail call void @RE_SetCamera(ptr noundef %0, ptr noundef %14) #23
  %29 = load i32, ptr %9, align 8, !tbaa !121
  %30 = and i32 %29, 16384
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %13
  %33 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %34 = load i32, ptr %33, align 4, !tbaa !150
  %35 = and i32 %34, 32768
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  tail call fastcc void @do_render_blur_3d(ptr noundef %0)
  br label %39

38:                                               ; preds = %32, %13
  tail call fastcc void @do_render_3d(ptr noundef %0)
  br label %39

39:                                               ; preds = %38, %37
  %40 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull %40, i32 noundef 2) #23
  %41 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %42 = load ptr, ptr %41, align 8, !tbaa !66
  store ptr null, ptr %41, align 8, !tbaa !66
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull %40) #23
  %43 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %44 = load ptr, ptr %43, align 8, !tbaa !91
  %45 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %46 = load ptr, ptr %45, align 8, !tbaa !95
  %47 = tail call i32 %44(ptr noundef %46) #23
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %74

49:                                               ; preds = %39
  store i16 2, ptr %28, align 4, !tbaa !364
  %50 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 4
  %51 = load i16, ptr %50, align 8, !tbaa !319
  %52 = or i16 %51, 4
  store i16 %52, ptr %50, align 8, !tbaa !319
  %53 = load i32, ptr %9, align 8, !tbaa !121
  %54 = and i32 %53, 128
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 59
  store float 5.000000e-01, ptr %57, align 4, !tbaa !154
  br label %58

58:                                               ; preds = %56, %49
  tail call void @RE_SetCamera(ptr noundef %0, ptr noundef %14) #23
  %59 = load i32, ptr %9, align 8, !tbaa !121
  %60 = and i32 %59, 16384
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %64 = load i32, ptr %63, align 4, !tbaa !150
  %65 = and i32 %64, 32768
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  tail call fastcc void @do_render_blur_3d(ptr noundef %0)
  br label %69

68:                                               ; preds = %62, %58
  tail call fastcc void @do_render_3d(ptr noundef %0)
  br label %69

69:                                               ; preds = %68, %67
  %70 = load i16, ptr %50, align 8, !tbaa !319
  %71 = and i16 %70, -5
  store i16 %71, ptr %50, align 8, !tbaa !319
  %72 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 59
  store float 0.000000e+00, ptr %72, align 4, !tbaa !154
  %73 = load ptr, ptr %41, align 8, !tbaa !66
  br label %74

74:                                               ; preds = %69, %39
  %75 = phi ptr [ null, %39 ], [ %73, %69 ]
  %76 = load i32, ptr %15, align 8, !tbaa !133
  %77 = shl nsw i32 %76, 1
  store i32 %77, ptr %15, align 8, !tbaa !133
  %78 = load i32, ptr %18, align 4, !tbaa !82
  %79 = shl nsw i32 %78, 1
  store i32 %79, ptr %18, align 4, !tbaa !82
  %80 = load i32, ptr %22, align 4, !tbaa !79
  %81 = shl nsw i32 %80, 1
  store i32 %81, ptr %22, align 4, !tbaa !79
  %82 = load i32, ptr %25, align 4, !tbaa !139
  %83 = shl nsw i32 %82, 1
  store i32 %83, ptr %25, align 4, !tbaa !139
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull %40, i32 noundef 2) #23
  %84 = tail call ptr @render_result_new(ptr noundef %0, ptr noundef nonnull %21, i32 noundef 0, i32 noundef 0, ptr noundef null) #23
  store ptr %84, ptr %41, align 8, !tbaa !66
  %85 = icmp eq ptr %75, null
  br i1 %85, label %93, label %86

86:                                               ; preds = %74
  %87 = load i32, ptr %9, align 8, !tbaa !121
  %88 = and i32 %87, 8192
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %86
  tail call fastcc void @merge_renderresult_fields(ptr noundef %84, ptr noundef nonnull %75, ptr noundef %42)
  br label %92

91:                                               ; preds = %86
  tail call fastcc void @merge_renderresult_fields(ptr noundef %84, ptr noundef %42, ptr noundef nonnull %75)
  br label %92

92:                                               ; preds = %91, %90
  tail call void @render_result_free(ptr noundef nonnull %75) #23
  br label %93

93:                                               ; preds = %92, %74
  tail call void @render_result_free(ptr noundef %42) #23
  store i16 0, ptr %28, align 4, !tbaa !364
  %94 = load ptr, ptr %41, align 8, !tbaa !66
  %95 = getelementptr inbounds %struct.RenderResult, ptr %94, i64 0, i32 12
  %96 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 61
  %97 = load i16, ptr %96, align 8, !tbaa !45
  %98 = sext i16 %97 to i32
  %99 = tail call ptr @BLI_findlink(ptr noundef nonnull %95, i32 noundef %98) #23
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %93
  %102 = load ptr, ptr %95, align 8, !tbaa !63
  br label %103

103:                                              ; preds = %93, %101
  %104 = phi ptr [ %102, %101 ], [ %99, %93 ]
  %105 = load ptr, ptr %41, align 8, !tbaa !66
  %106 = getelementptr inbounds %struct.RenderResult, ptr %105, i64 0, i32 14
  store ptr %104, ptr %106, align 8, !tbaa !257
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull %40) #23
  %107 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 86
  %108 = load ptr, ptr %107, align 8, !tbaa !88
  %109 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 87
  %110 = load ptr, ptr %109, align 8, !tbaa !98
  %111 = load ptr, ptr %41, align 8, !tbaa !66
  tail call void %108(ptr noundef %110, ptr noundef %111, ptr noundef null) #23
  br label %122

112:                                              ; preds = %8
  %113 = and i32 %10, 16384
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %117 = load i32, ptr %116, align 4, !tbaa !150
  %118 = and i32 %117, 32768
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  tail call fastcc void @do_render_blur_3d(ptr noundef %0)
  br label %122

121:                                              ; preds = %115, %112
  tail call fastcc void @do_render_3d(ptr noundef %0)
  br label %122

122:                                              ; preds = %120, %121, %103
  %123 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %124 = load ptr, ptr %123, align 8, !tbaa !66
  %125 = icmp eq ptr %124, null
  br i1 %125, label %177, label %126

126:                                              ; preds = %122
  %127 = load i32, ptr %9, align 8, !tbaa !121
  %128 = and i32 %127, 512
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %177, label %130

130:                                              ; preds = %126
  %131 = and i32 %127, 2048
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %174

133:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2)
  %134 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %134, i64 16, i1 false), !tbaa.struct !141
  %135 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 20
  %136 = load i32, ptr %135, align 8, !tbaa !81
  %137 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 21
  %138 = load i32, ptr %137, align 4, !tbaa !82
  %139 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull %139, i32 noundef 2) #23
  %140 = load ptr, ptr %123, align 8, !tbaa !66
  %141 = getelementptr inbounds %struct.RenderResult, ptr %140, i64 0, i32 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %141, ptr noundef nonnull align 4 dereferenceable(16) %134, i64 16, i1 false), !tbaa.struct !141
  %142 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 2
  store i32 0, ptr %142, align 4, !tbaa !79
  store i32 0, ptr %134, align 4, !tbaa !77
  %143 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %144 = load i32, ptr %143, align 4, !tbaa !132
  %145 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 1
  store i32 %144, ptr %145, align 4, !tbaa !136
  %146 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  %147 = load i32, ptr %146, align 8, !tbaa !133
  %148 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 3
  store i32 %147, ptr %148, align 4, !tbaa !139
  store i32 %144, ptr %135, align 8, !tbaa !81
  store i32 %147, ptr %137, align 4, !tbaa !82
  %149 = tail call ptr @render_result_new(ptr noundef %0, ptr noundef nonnull %134, i32 noundef 0, i32 noundef 0, ptr noundef null) #23
  %150 = load ptr, ptr %123, align 8, !tbaa !66
  tail call void @render_result_merge(ptr noundef %149, ptr noundef %150) #23
  %151 = load ptr, ptr %123, align 8, !tbaa !66
  tail call void @render_result_free(ptr noundef %151) #23
  store ptr %149, ptr %123, align 8, !tbaa !66
  %152 = getelementptr inbounds %struct.RenderResult, ptr %149, i64 0, i32 12
  %153 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 61
  %154 = load i16, ptr %153, align 8, !tbaa !45
  %155 = sext i16 %154 to i32
  %156 = tail call ptr @BLI_findlink(ptr noundef nonnull %152, i32 noundef %155) #23
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %160

158:                                              ; preds = %133
  %159 = load ptr, ptr %152, align 8, !tbaa !63
  br label %160

160:                                              ; preds = %133, %158
  %161 = phi ptr [ %159, %158 ], [ %156, %133 ]
  %162 = load ptr, ptr %123, align 8, !tbaa !66
  %163 = getelementptr inbounds %struct.RenderResult, ptr %162, i64 0, i32 14
  store ptr %161, ptr %163, align 8, !tbaa !257
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull %139) #23
  %164 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 82
  %165 = load ptr, ptr %164, align 8, !tbaa !86
  %166 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 83
  %167 = load ptr, ptr %166, align 8, !tbaa !100
  %168 = load ptr, ptr %123, align 8, !tbaa !66
  tail call void %165(ptr noundef %167, ptr noundef %168) #23
  %169 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 86
  %170 = load ptr, ptr %169, align 8, !tbaa !88
  %171 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 87
  %172 = load ptr, ptr %171, align 8, !tbaa !98
  %173 = load ptr, ptr %123, align 8, !tbaa !66
  tail call void %170(ptr noundef %172, ptr noundef %173, ptr noundef null) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %134, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !141
  store i32 %136, ptr %135, align 8, !tbaa !81
  store i32 %138, ptr %137, align 4, !tbaa !82
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2)
  br label %177

174:                                              ; preds = %130
  %175 = getelementptr inbounds %struct.RenderResult, ptr %124, i64 0, i32 10
  store i32 0, ptr %175, align 8, !tbaa !78
  %176 = getelementptr inbounds %struct.RenderResult, ptr %124, i64 0, i32 11
  store i32 0, ptr %176, align 4, !tbaa !80
  br label %177

177:                                              ; preds = %122, %160, %174, %126, %5
  ret void
}

declare void @render_result_single_layer_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @do_render_blur_3d(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 62
  %3 = load i16, ptr %2, align 2, !tbaa !162
  %4 = sext i16 %3 to i32
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  %6 = tail call ptr @render_result_new(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0, ptr noundef null) #23
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 16
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 58
  %10 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 8
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %12 = getelementptr inbounds %struct.RenderResult, ptr %6, i64 0, i32 12
  %13 = getelementptr inbounds %struct.RenderResult, ptr %6, i64 0, i32 2
  %14 = getelementptr inbounds %struct.RenderResult, ptr %6, i64 0, i32 3
  %15 = getelementptr inbounds %struct.RenderResult, ptr %6, i64 0, i32 2
  %16 = getelementptr inbounds %struct.RenderResult, ptr %6, i64 0, i32 3
  %17 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  br label %18

18:                                               ; preds = %161, %1
  %19 = phi i32 [ %4, %1 ], [ %22, %161 ]
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %166, label %21

21:                                               ; preds = %18
  %22 = add nsw i32 %19, -1
  %23 = load float, ptr %8, align 8, !tbaa !164
  %24 = load i16, ptr %2, align 2, !tbaa !162
  %25 = sext i16 %24 to i32
  %26 = sub nsw i32 %25, %22
  %27 = sitofp i32 %26 to float
  %28 = fmul float %23, %27
  %29 = sitofp i16 %24 to float
  %30 = fdiv float %28, %29
  store float %30, ptr %9, align 8, !tbaa !155
  %31 = trunc i32 %22 to i16
  %32 = sub i16 %24, %31
  store i16 %32, ptr %10, align 2, !tbaa !365
  tail call fastcc void @do_render_3d(ptr noundef %0)
  %33 = load i16, ptr %2, align 2, !tbaa !162
  %34 = sext i16 %33 to i32
  %35 = sub nsw i32 %34, %22
  %36 = sitofp i32 %35 to float
  %37 = fdiv float 1.000000e+00, %36
  %38 = load ptr, ptr %11, align 8, !tbaa !66
  %39 = getelementptr inbounds %struct.RenderResult, ptr %38, i64 0, i32 12
  %40 = load ptr, ptr %39, align 8, !tbaa !34
  %41 = load ptr, ptr %12, align 8, !tbaa !34
  %42 = icmp ne ptr %41, null
  %43 = icmp ne ptr %40, null
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %45, label %161

45:                                               ; preds = %21
  %46 = fsub float 1.000000e+00, %37
  %47 = fcmp oeq float %37, 1.000000e+00
  %48 = fsub float 1.000000e+00, %37
  %49 = fcmp oeq float %37, 1.000000e+00
  br label %56

50:                                               ; preds = %111, %103
  %51 = load ptr, ptr %58, align 8, !tbaa !34
  %52 = load ptr, ptr %57, align 8, !tbaa !34
  %53 = icmp ne ptr %52, null
  %54 = icmp ne ptr %51, null
  %55 = select i1 %53, i1 %54, i1 false
  br i1 %55, label %56, label %161, !llvm.loop !366

56:                                               ; preds = %45, %50
  %57 = phi ptr [ %41, %45 ], [ %52, %50 ]
  %58 = phi ptr [ %40, %45 ], [ %51, %50 ]
  %59 = getelementptr inbounds %struct.RenderLayer, ptr %57, i64 0, i32 11
  %60 = load ptr, ptr %59, align 8, !tbaa !73
  %61 = icmp eq ptr %60, null
  br i1 %61, label %103, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.RenderLayer, ptr %58, i64 0, i32 11
  %64 = load ptr, ptr %63, align 8, !tbaa !73
  %65 = icmp eq ptr %64, null
  br i1 %65, label %103, label %66

66:                                               ; preds = %62
  %67 = load i32, ptr %13, align 8, !tbaa !68
  %68 = shl nsw i32 %67, 2
  %69 = sext i32 %68 to i64
  %70 = load i32, ptr %14, align 4, !tbaa !69
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %103

72:                                               ; preds = %66
  %73 = shl i32 %67, 4
  %74 = sext i32 %73 to i64
  br label %75

75:                                               ; preds = %72, %97
  %76 = phi ptr [ %60, %72 ], [ %98, %97 ]
  %77 = phi ptr [ %64, %72 ], [ %99, %97 ]
  %78 = phi i32 [ 0, %72 ], [ %100, %97 ]
  br i1 %47, label %79, label %80

79:                                               ; preds = %75
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %76, ptr align 4 %77, i64 %74, i1 false)
  br label %97

80:                                               ; preds = %75
  %81 = load i32, ptr %13, align 8, !tbaa !68
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %80
  %84 = shl nsw i32 %81, 2
  br label %85

85:                                               ; preds = %83, %85
  %86 = phi ptr [ %95, %85 ], [ %77, %83 ]
  %87 = phi ptr [ %94, %85 ], [ %76, %83 ]
  %88 = phi i32 [ %93, %85 ], [ %84, %83 ]
  %89 = load float, ptr %87, align 4, !tbaa !127
  %90 = load float, ptr %86, align 4, !tbaa !127
  %91 = fmul float %37, %90
  %92 = tail call float @llvm.fmuladd.f32(float %46, float %89, float %91)
  store float %92, ptr %87, align 4, !tbaa !127
  %93 = add nsw i32 %88, -1
  %94 = getelementptr inbounds float, ptr %87, i64 1
  %95 = getelementptr inbounds float, ptr %86, i64 1
  %96 = icmp sgt i32 %88, 1
  br i1 %96, label %85, label %97, !llvm.loop !367

97:                                               ; preds = %85, %80, %79
  %98 = getelementptr inbounds float, ptr %76, i64 %69
  %99 = getelementptr inbounds float, ptr %77, i64 %69
  %100 = add nuw nsw i32 %78, 1
  %101 = load i32, ptr %14, align 4, !tbaa !69
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %75, label %103, !llvm.loop !368

103:                                              ; preds = %97, %66, %62, %56
  %104 = getelementptr inbounds %struct.RenderLayer, ptr %58, i64 0, i32 18
  %105 = getelementptr inbounds %struct.RenderLayer, ptr %57, i64 0, i32 18
  %106 = load ptr, ptr %104, align 8, !tbaa !34
  %107 = load ptr, ptr %105, align 8, !tbaa !34
  %108 = icmp ne ptr %107, null
  %109 = icmp ne ptr %106, null
  %110 = select i1 %108, i1 %109, i1 false
  br i1 %110, label %117, label %50

111:                                              ; preds = %155, %117
  %112 = load ptr, ptr %119, align 8, !tbaa !34
  %113 = load ptr, ptr %118, align 8, !tbaa !34
  %114 = icmp ne ptr %113, null
  %115 = icmp ne ptr %112, null
  %116 = select i1 %114, i1 %115, i1 false
  br i1 %116, label %117, label %50, !llvm.loop !369

117:                                              ; preds = %103, %111
  %118 = phi ptr [ %113, %111 ], [ %107, %103 ]
  %119 = phi ptr [ %112, %111 ], [ %106, %103 ]
  %120 = getelementptr inbounds %struct.RenderPass, ptr %118, i64 0, i32 3
  %121 = load i32, ptr %120, align 4, !tbaa !370
  %122 = load i32, ptr %15, align 8, !tbaa !68
  %123 = mul nsw i32 %122, %121
  %124 = sext i32 %123 to i64
  %125 = load i32, ptr %16, align 4, !tbaa !69
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %111

127:                                              ; preds = %117
  %128 = shl i32 %123, 2
  %129 = getelementptr inbounds %struct.RenderPass, ptr %119, i64 0, i32 6
  %130 = load ptr, ptr %129, align 8, !tbaa !44
  %131 = getelementptr inbounds %struct.RenderPass, ptr %118, i64 0, i32 6
  %132 = load ptr, ptr %131, align 8, !tbaa !44
  %133 = sext i32 %128 to i64
  br label %134

134:                                              ; preds = %127, %155
  %135 = phi ptr [ %132, %127 ], [ %156, %155 ]
  %136 = phi ptr [ %130, %127 ], [ %157, %155 ]
  %137 = phi i32 [ 0, %127 ], [ %158, %155 ]
  br i1 %49, label %138, label %139

138:                                              ; preds = %134
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %135, ptr align 4 %136, i64 %133, i1 false)
  br label %155

139:                                              ; preds = %134
  %140 = load i32, ptr %15, align 8, !tbaa !68
  %141 = mul nsw i32 %140, %121
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %155

143:                                              ; preds = %139, %143
  %144 = phi ptr [ %153, %143 ], [ %136, %139 ]
  %145 = phi ptr [ %152, %143 ], [ %135, %139 ]
  %146 = phi i32 [ %151, %143 ], [ %141, %139 ]
  %147 = load float, ptr %145, align 4, !tbaa !127
  %148 = load float, ptr %144, align 4, !tbaa !127
  %149 = fmul float %37, %148
  %150 = tail call float @llvm.fmuladd.f32(float %48, float %147, float %149)
  store float %150, ptr %145, align 4, !tbaa !127
  %151 = add nsw i32 %146, -1
  %152 = getelementptr inbounds float, ptr %145, i64 1
  %153 = getelementptr inbounds float, ptr %144, i64 1
  %154 = icmp sgt i32 %146, 1
  br i1 %154, label %143, label %155, !llvm.loop !367

155:                                              ; preds = %143, %139, %138
  %156 = getelementptr inbounds float, ptr %135, i64 %124
  %157 = getelementptr inbounds float, ptr %136, i64 %124
  %158 = add nuw nsw i32 %137, 1
  %159 = load i32, ptr %16, align 4, !tbaa !69
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %134, label %111, !llvm.loop !368

161:                                              ; preds = %50, %21
  %162 = load ptr, ptr %7, align 8, !tbaa !91
  %163 = load ptr, ptr %17, align 8, !tbaa !95
  %164 = tail call i32 %162(ptr noundef %163) #23
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %18, label %166, !llvm.loop !371

166:                                              ; preds = %161, %18
  %167 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull %167, i32 noundef 2) #23
  %168 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %169 = load ptr, ptr %168, align 8, !tbaa !66
  tail call void @render_result_free(ptr noundef %169) #23
  store ptr %6, ptr %168, align 8, !tbaa !66
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull %167) #23
  %170 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 58
  store float 0.000000e+00, ptr %170, align 8, !tbaa !155
  %171 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 8
  store i16 0, ptr %171, align 2, !tbaa !365
  %172 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %173 = load i32, ptr %172, align 4, !tbaa !150
  %174 = and i32 %173, 540680
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %166
  %177 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 101
  %178 = load ptr, ptr %177, align 8, !tbaa !83
  %179 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %180 = load ptr, ptr %179, align 8, !tbaa !219
  %181 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %182 = load ptr, ptr %181, align 8, !tbaa !67
  %183 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 48
  %184 = load i32, ptr %183, align 8, !tbaa !293
  tail call void @BKE_scene_update_for_newframe(ptr noundef %178, ptr noundef %180, ptr noundef %182, i32 noundef %184) #23
  br label %185

185:                                              ; preds = %176, %166
  %186 = load ptr, ptr %168, align 8, !tbaa !66
  %187 = getelementptr inbounds %struct.RenderResult, ptr %186, i64 0, i32 12
  %188 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 61
  %189 = load i16, ptr %188, align 8, !tbaa !45
  %190 = sext i16 %189 to i32
  %191 = tail call ptr @BLI_findlink(ptr noundef nonnull %187, i32 noundef %190) #23
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %195

193:                                              ; preds = %185
  %194 = load ptr, ptr %187, align 8, !tbaa !63
  br label %195

195:                                              ; preds = %185, %193
  %196 = phi ptr [ %194, %193 ], [ %191, %185 ]
  %197 = load ptr, ptr %168, align 8, !tbaa !66
  %198 = getelementptr inbounds %struct.RenderResult, ptr %197, i64 0, i32 14
  store ptr %196, ptr %198, align 8, !tbaa !257
  %199 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 86
  %200 = load ptr, ptr %199, align 8, !tbaa !88
  %201 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 87
  %202 = load ptr, ptr %201, align 8, !tbaa !98
  tail call void %200(ptr noundef %202, ptr noundef %197, ptr noundef null) #23
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @merge_renderresult_fields(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #19 {
  %4 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 12
  %5 = getelementptr inbounds %struct.RenderResult, ptr %2, i64 0, i32 12
  %6 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 12
  %7 = load ptr, ptr %5, align 8, !tbaa !34
  %8 = load ptr, ptr %4, align 8, !tbaa !34
  %9 = load ptr, ptr %6, align 8, !tbaa !34
  %10 = icmp ne ptr %9, null
  %11 = icmp ne ptr %8, null
  %12 = select i1 %10, i1 %11, i1 false
  %13 = icmp ne ptr %7, null
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %15, label %118

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 2
  %17 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 3
  %18 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 2
  %19 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 3
  br label %29

20:                                               ; preds = %77, %65
  %21 = load ptr, ptr %32, align 8, !tbaa !34
  %22 = load ptr, ptr %31, align 8, !tbaa !34
  %23 = load ptr, ptr %30, align 8, !tbaa !34
  %24 = icmp ne ptr %23, null
  %25 = icmp ne ptr %22, null
  %26 = select i1 %24, i1 %25, i1 false
  %27 = icmp ne ptr %21, null
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %29, label %118, !llvm.loop !372

29:                                               ; preds = %15, %20
  %30 = phi ptr [ %9, %15 ], [ %23, %20 ]
  %31 = phi ptr [ %8, %15 ], [ %22, %20 ]
  %32 = phi ptr [ %7, %15 ], [ %21, %20 ]
  %33 = getelementptr inbounds %struct.RenderLayer, ptr %30, i64 0, i32 11
  %34 = load ptr, ptr %33, align 8, !tbaa !73
  %35 = icmp eq ptr %34, null
  br i1 %35, label %65, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.RenderLayer, ptr %31, i64 0, i32 11
  %38 = load ptr, ptr %37, align 8, !tbaa !73
  %39 = icmp eq ptr %38, null
  br i1 %39, label %65, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.RenderLayer, ptr %32, i64 0, i32 11
  %42 = load ptr, ptr %41, align 8, !tbaa !73
  %43 = icmp eq ptr %42, null
  br i1 %43, label %65, label %44

44:                                               ; preds = %40
  %45 = load i32, ptr %16, align 8, !tbaa !68
  %46 = shl nsw i32 %45, 2
  %47 = sext i32 %46 to i64
  %48 = load i32, ptr %17, align 4, !tbaa !69
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %44
  %51 = shl i32 %45, 4
  %52 = sext i32 %51 to i64
  br label %53

53:                                               ; preds = %50, %53
  %54 = phi ptr [ %34, %50 ], [ %60, %53 ]
  %55 = phi ptr [ %38, %50 ], [ %59, %53 ]
  %56 = phi i32 [ 0, %50 ], [ %62, %53 ]
  %57 = phi ptr [ %42, %50 ], [ %61, %53 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %54, ptr align 4 %55, i64 %52, i1 false)
  %58 = getelementptr inbounds float, ptr %54, i64 %47
  %59 = getelementptr inbounds float, ptr %55, i64 %47
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %58, ptr align 4 %57, i64 %52, i1 false)
  %60 = getelementptr inbounds float, ptr %58, i64 %47
  %61 = getelementptr inbounds float, ptr %57, i64 %47
  %62 = add nuw nsw i32 %56, 2
  %63 = load i32, ptr %17, align 4, !tbaa !69
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %53, label %65, !llvm.loop !373

65:                                               ; preds = %53, %44, %40, %36, %29
  %66 = getelementptr inbounds %struct.RenderLayer, ptr %31, i64 0, i32 18
  %67 = getelementptr inbounds %struct.RenderLayer, ptr %32, i64 0, i32 18
  %68 = getelementptr inbounds %struct.RenderLayer, ptr %30, i64 0, i32 18
  %69 = load ptr, ptr %67, align 8, !tbaa !34
  %70 = load ptr, ptr %66, align 8, !tbaa !34
  %71 = load ptr, ptr %68, align 8, !tbaa !34
  %72 = icmp ne ptr %71, null
  %73 = icmp ne ptr %70, null
  %74 = select i1 %72, i1 %73, i1 false
  %75 = icmp ne ptr %69, null
  %76 = select i1 %74, i1 %75, i1 false
  br i1 %76, label %86, label %20

77:                                               ; preds = %106, %86
  %78 = load ptr, ptr %89, align 8, !tbaa !34
  %79 = load ptr, ptr %88, align 8, !tbaa !34
  %80 = load ptr, ptr %87, align 8, !tbaa !34
  %81 = icmp ne ptr %80, null
  %82 = icmp ne ptr %79, null
  %83 = select i1 %81, i1 %82, i1 false
  %84 = icmp ne ptr %78, null
  %85 = select i1 %83, i1 %84, i1 false
  br i1 %85, label %86, label %20, !llvm.loop !374

86:                                               ; preds = %65, %77
  %87 = phi ptr [ %80, %77 ], [ %71, %65 ]
  %88 = phi ptr [ %79, %77 ], [ %70, %65 ]
  %89 = phi ptr [ %78, %77 ], [ %69, %65 ]
  %90 = getelementptr inbounds %struct.RenderPass, ptr %87, i64 0, i32 3
  %91 = load i32, ptr %90, align 4, !tbaa !370
  %92 = load i32, ptr %18, align 8, !tbaa !68
  %93 = mul nsw i32 %92, %91
  %94 = sext i32 %93 to i64
  %95 = load i32, ptr %19, align 4, !tbaa !69
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %77

97:                                               ; preds = %86
  %98 = shl i32 %93, 2
  %99 = getelementptr inbounds %struct.RenderPass, ptr %89, i64 0, i32 6
  %100 = load ptr, ptr %99, align 8, !tbaa !44
  %101 = getelementptr inbounds %struct.RenderPass, ptr %88, i64 0, i32 6
  %102 = load ptr, ptr %101, align 8, !tbaa !44
  %103 = getelementptr inbounds %struct.RenderPass, ptr %87, i64 0, i32 6
  %104 = load ptr, ptr %103, align 8, !tbaa !44
  %105 = sext i32 %98 to i64
  br label %106

106:                                              ; preds = %97, %106
  %107 = phi ptr [ %104, %97 ], [ %113, %106 ]
  %108 = phi ptr [ %102, %97 ], [ %112, %106 ]
  %109 = phi i32 [ 0, %97 ], [ %115, %106 ]
  %110 = phi ptr [ %100, %97 ], [ %114, %106 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %107, ptr align 4 %108, i64 %105, i1 false)
  %111 = getelementptr inbounds float, ptr %107, i64 %94
  %112 = getelementptr inbounds float, ptr %108, i64 %94
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %111, ptr align 4 %110, i64 %105, i1 false)
  %113 = getelementptr inbounds float, ptr %111, i64 %94
  %114 = getelementptr inbounds float, ptr %110, i64 %94
  %115 = add nuw nsw i32 %109, 2
  %116 = load i32, ptr %19, align 4, !tbaa !69
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %106, label %77, !llvm.loop !373

118:                                              ; preds = %20, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #20

declare void @nodeUpdate(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_scene_set_background(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_stamp_buf(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @render_result_rect_to_ibuf(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @RE_WriteRenderResult(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @BKE_imbuf_write_stamp(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BLI_testextensie(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

declare i32 @BKE_add_image_extension(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_timestr(double noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @BKE_scene_frame_set(ptr noundef, double noundef) local_unnamed_addr #1

declare void @RE_Database_FromScene_Vectors(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @RE_Database_FromScene(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @RE_Database_Preprocess(ptr noundef) local_unnamed_addr #1

declare void @add_halo_flare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #22

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nofree nounwind }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nounwind }
attributes #24 = { nounwind willreturn memory(read) }

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
!38 = !{!39, !40, i64 16}
!39 = !{!"RenderPass", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !36, i64 24, !36, i64 88, !35, i64 96, !40, i64 104, !40, i64 108, !40, i64 112}
!40 = !{!"int", !36, i64 0}
!41 = distinct !{!41, !42, !43}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!"llvm.loop.unroll.disable"}
!44 = !{!39, !35, i64 96}
!45 = !{!46, !47, i64 1712}
!46 = !{!"Render", !35, i64 0, !35, i64 8, !36, i64 16, !40, i64 92, !47, i64 96, !47, i64 98, !47, i64 100, !47, i64 102, !36, i64 104, !35, i64 112, !35, i64 120, !48, i64 128, !40, i64 144, !40, i64 148, !40, i64 152, !49, i64 156, !50, i64 172, !51, i64 188, !51, i64 192, !51, i64 196, !40, i64 200, !40, i64 204, !40, i64 208, !40, i64 212, !51, i64 216, !51, i64 220, !51, i64 224, !51, i64 228, !51, i64 232, !51, i64 236, !36, i64 240, !36, i64 252, !36, i64 288, !36, i64 352, !36, i64 416, !36, i64 480, !51, i64 544, !51, i64 548, !35, i64 552, !36, i64 560, !36, i64 816, !35, i64 1072, !36, i64 1080, !35, i64 1088, !35, i64 1096, !52, i64 1104, !59, i64 5088, !35, i64 5616, !40, i64 5624, !40, i64 5628, !48, i64 5632, !35, i64 5648, !35, i64 5656, !35, i64 5664, !35, i64 5672, !51, i64 5680, !35, i64 5688, !48, i64 5696, !51, i64 5712, !51, i64 5716, !40, i64 5720, !40, i64 5724, !40, i64 5728, !40, i64 5732, !40, i64 5736, !35, i64 5744, !48, i64 5752, !48, i64 5768, !48, i64 5784, !35, i64 5800, !48, i64 5808, !40, i64 5824, !35, i64 5832, !35, i64 5840, !35, i64 5848, !35, i64 5856, !35, i64 5864, !48, i64 5872, !35, i64 5888, !48, i64 5896, !48, i64 5912, !35, i64 5928, !35, i64 5936, !35, i64 5944, !35, i64 5952, !35, i64 5960, !35, i64 5968, !35, i64 5976, !35, i64 5984, !35, i64 5992, !35, i64 6000, !35, i64 6008, !35, i64 6016, !35, i64 6024, !35, i64 6032, !35, i64 6040, !35, i64 6048, !35, i64 6056, !61, i64 6064, !35, i64 6216, !35, i64 6224, !35, i64 6232}
!47 = !{!"short", !36, i64 0}
!48 = !{!"ListBase", !35, i64 0, !35, i64 8}
!49 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!50 = !{!"rctf", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12}
!51 = !{!"float", !36, i64 0}
!52 = !{!"RenderData", !53, i64 0, !35, i64 248, !35, i64 256, !56, i64 264, !57, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !51, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !47, i64 432, !47, i64 434, !51, i64 436, !51, i64 440, !51, i64 444, !51, i64 448, !51, i64 452, !47, i64 456, !47, i64 458, !47, i64 460, !47, i64 462, !47, i64 464, !47, i64 466, !40, i64 468, !47, i64 472, !47, i64 474, !47, i64 476, !47, i64 478, !47, i64 480, !47, i64 482, !40, i64 484, !40, i64 488, !47, i64 492, !47, i64 494, !40, i64 496, !40, i64 500, !47, i64 504, !47, i64 506, !47, i64 508, !47, i64 510, !47, i64 512, !36, i64 514, !36, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !47, i64 528, !47, i64 530, !47, i64 532, !47, i64 534, !47, i64 536, !47, i64 538, !47, i64 540, !47, i64 542, !50, i64 544, !50, i64 560, !49, i64 576, !48, i64 592, !47, i64 608, !47, i64 610, !51, i64 612, !51, i64 616, !51, i64 620, !51, i64 624, !40, i64 628, !51, i64 632, !51, i64 636, !51, i64 640, !51, i64 644, !47, i64 648, !47, i64 650, !47, i64 652, !47, i64 654, !47, i64 656, !47, i64 658, !51, i64 660, !51, i64 664, !47, i64 668, !47, i64 670, !51, i64 672, !51, i64 676, !36, i64 680, !40, i64 1704, !47, i64 1708, !47, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !40, i64 2520, !47, i64 2524, !47, i64 2526, !51, i64 2528, !51, i64 2532, !47, i64 2536, !47, i64 2538, !51, i64 2540, !47, i64 2544, !47, i64 2546, !40, i64 2548, !47, i64 2552, !47, i64 2554, !47, i64 2556, !47, i64 2558, !51, i64 2560, !51, i64 2564, !35, i64 2568, !40, i64 2576, !51, i64 2580, !36, i64 2584, !58, i64 2616, !40, i64 3976, !40, i64 3980}
!53 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !47, i64 8, !47, i64 10, !51, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !54, i64 24, !55, i64 184}
!54 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !36, i64 8, !36, i64 72, !51, i64 136, !51, i64 140, !35, i64 144, !35, i64 152}
!55 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!56 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !47, i64 48, !47, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!57 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !51, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !35, i64 64}
!58 = !{!"BakeData", !53, i64 0, !36, i64 248, !47, i64 1272, !47, i64 1274, !47, i64 1276, !47, i64 1278, !51, i64 1280, !51, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!59 = !{!"World", !60, i64 0, !35, i64 120, !47, i64 128, !47, i64 130, !47, i64 132, !47, i64 134, !51, i64 136, !51, i64 140, !51, i64 144, !51, i64 148, !51, i64 152, !51, i64 156, !51, i64 160, !51, i64 164, !51, i64 168, !51, i64 172, !51, i64 176, !51, i64 180, !51, i64 184, !51, i64 188, !51, i64 192, !51, i64 196, !47, i64 200, !47, i64 202, !47, i64 204, !47, i64 206, !47, i64 208, !47, i64 210, !47, i64 212, !47, i64 214, !51, i64 216, !51, i64 220, !51, i64 224, !51, i64 228, !51, i64 232, !51, i64 236, !51, i64 240, !51, i64 244, !51, i64 248, !51, i64 252, !51, i64 256, !51, i64 260, !47, i64 264, !47, i64 266, !47, i64 268, !47, i64 270, !51, i64 272, !51, i64 276, !51, i64 280, !51, i64 284, !47, i64 288, !47, i64 290, !47, i64 292, !47, i64 294, !51, i64 296, !51, i64 300, !51, i64 304, !51, i64 308, !51, i64 312, !51, i64 316, !51, i64 320, !47, i64 324, !47, i64 326, !47, i64 328, !47, i64 330, !47, i64 332, !47, i64 334, !35, i64 336, !35, i64 344, !35, i64 352, !36, i64 360, !47, i64 504, !47, i64 506, !36, i64 508, !35, i64 512, !35, i64 520}
!60 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !47, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !35, i64 112}
!61 = !{!"RenderStats", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !47, i64 28, !47, i64 30, !47, i64 32, !47, i64 34, !47, i64 36, !47, i64 38, !36, i64 40, !62, i64 48, !62, i64 56, !35, i64 64, !35, i64 72, !36, i64 80, !51, i64 144, !51, i64 148}
!62 = !{!"double", !36, i64 0}
!63 = !{!64, !35, i64 80}
!64 = !{!"RenderResult", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !47, i64 24, !47, i64 26, !35, i64 32, !35, i64 40, !35, i64 48, !49, i64 56, !40, i64 72, !40, i64 76, !48, i64 80, !49, i64 96, !35, i64 112, !40, i64 120, !40, i64 124, !40, i64 128, !35, i64 136}
!65 = distinct !{!65, !42, !43}
!66 = !{!46, !35, i64 112}
!67 = !{!46, !35, i64 1096}
!68 = !{!64, !40, i64 16}
!69 = !{!64, !40, i64 20}
!70 = !{!64, !35, i64 40}
!71 = !{!64, !35, i64 48}
!72 = !{!64, !35, i64 32}
!73 = !{!74, !35, i64 136}
!74 = !{!"RenderLayer", !35, i64 0, !35, i64 8, !36, i64 16, !40, i64 92, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !40, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !40, i64 168, !40, i64 172, !35, i64 176, !48, i64 184}
!75 = !{!64, !40, i64 128}
!76 = !{i64 0, i64 8, !34, i64 8, i64 8, !34}
!77 = !{!46, !40, i64 156}
!78 = !{!64, !40, i64 72}
!79 = !{!46, !40, i64 164}
!80 = !{!64, !40, i64 76}
!81 = !{!46, !40, i64 200}
!82 = !{!46, !40, i64 204}
!83 = !{!46, !35, i64 6232}
!84 = !{!85, !40, i64 0}
!85 = !{!"EvaluationContext", !40, i64 0}
!86 = !{!46, !35, i64 5936}
!87 = !{!46, !35, i64 5952}
!88 = !{!46, !35, i64 5968}
!89 = !{!46, !35, i64 5984}
!90 = !{!46, !35, i64 6016}
!91 = !{!46, !35, i64 6048}
!92 = !{!93, !36, i64 2081}
!93 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !48, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !47, i64 2084, !47, i64 2086, !47, i64 2088, !36, i64 2090, !47, i64 2092, !40, i64 2096, !40, i64 2100, !36, i64 2104, !40, i64 2108, !40, i64 2112, !36, i64 2116}
!94 = !{!46, !35, i64 6000}
!95 = !{!46, !35, i64 6056}
!96 = !{!46, !35, i64 6024}
!97 = !{!46, !35, i64 6008}
!98 = !{!46, !35, i64 5976}
!99 = !{!46, !35, i64 5960}
!100 = !{!46, !35, i64 5944}
!101 = !{!46, !51, i64 216}
!102 = !{!93, !36, i64 2080}
!103 = !{!61, !40, i64 0}
!104 = !{!61, !47, i64 28}
!105 = !{!61, !47, i64 30}
!106 = !{!61, !35, i64 64}
!107 = !{!61, !40, i64 16}
!108 = !{!61, !40, i64 8}
!109 = !{!61, !40, i64 4}
!110 = !{!61, !40, i64 20}
!111 = !{!93, !35, i64 0}
!112 = !{!46, !35, i64 5648}
!113 = !{!46, !35, i64 120}
!114 = !{!115, !35, i64 0}
!115 = !{!"", !48, i64 0}
!116 = distinct !{!116, !42, !43}
!117 = distinct !{!117, !42, !43}
!118 = !{!119, !40, i64 16}
!119 = !{!"RenderEngine", !35, i64 0, !35, i64 8, !40, i64 16, !35, i64 24, !40, i64 32, !40, i64 36, !40, i64 40, !35, i64 48, !48, i64 56, !36, i64 72, !40, i64 584, !40, i64 588, !35, i64 592, !40, i64 600, !40, i64 604, !50, i64 608, !49, i64 624, !36, i64 640, !40, i64 704, !40, i64 708}
!120 = distinct !{!120, !42, !43}
!121 = !{!46, !40, i64 1624}
!122 = !{!46, !47, i64 100}
!123 = !{!46, !62, i64 6112}
!124 = !{i64 0, i64 1, !125, i64 1, i64 1, !125, i64 2, i64 1, !125, i64 3, i64 1, !125, i64 4, i64 1, !125, i64 5, i64 1, !125, i64 6, i64 1, !125, i64 7, i64 1, !125, i64 8, i64 2, !126, i64 10, i64 2, !126, i64 12, i64 4, !127, i64 16, i64 1, !125, i64 17, i64 1, !125, i64 18, i64 6, !125, i64 24, i64 4, !128, i64 28, i64 4, !128, i64 32, i64 64, !125, i64 96, i64 64, !125, i64 160, i64 4, !127, i64 164, i64 4, !127, i64 168, i64 8, !34, i64 176, i64 8, !34, i64 184, i64 64, !125, i64 248, i64 8, !34, i64 256, i64 8, !34, i64 264, i64 4, !128, i64 268, i64 4, !128, i64 272, i64 4, !128, i64 276, i64 4, !128, i64 280, i64 4, !128, i64 284, i64 4, !128, i64 288, i64 4, !128, i64 292, i64 4, !128, i64 296, i64 4, !128, i64 300, i64 4, !128, i64 304, i64 4, !128, i64 308, i64 4, !128, i64 312, i64 2, !126, i64 314, i64 2, !126, i64 316, i64 4, !128, i64 320, i64 4, !128, i64 324, i64 4, !128, i64 328, i64 4, !128, i64 332, i64 4, !128, i64 336, i64 4, !128, i64 340, i64 4, !128, i64 344, i64 4, !128, i64 348, i64 4, !128, i64 352, i64 4, !128, i64 356, i64 4, !128, i64 360, i64 4, !127, i64 364, i64 4, !128, i64 368, i64 4, !128, i64 372, i64 4, !128, i64 376, i64 4, !128, i64 380, i64 4, !128, i64 384, i64 4, !128, i64 388, i64 4, !128, i64 392, i64 8, !34, i64 400, i64 4, !128, i64 404, i64 4, !128, i64 408, i64 4, !128, i64 412, i64 4, !127, i64 416, i64 4, !128, i64 420, i64 4, !128, i64 424, i64 4, !128, i64 428, i64 4, !128, i64 432, i64 2, !126, i64 434, i64 2, !126, i64 436, i64 4, !127, i64 440, i64 4, !127, i64 444, i64 4, !127, i64 448, i64 4, !127, i64 452, i64 4, !127, i64 456, i64 2, !126, i64 458, i64 2, !126, i64 460, i64 2, !126, i64 462, i64 2, !126, i64 464, i64 2, !126, i64 466, i64 2, !126, i64 468, i64 4, !128, i64 472, i64 2, !126, i64 474, i64 2, !126, i64 476, i64 2, !126, i64 478, i64 2, !126, i64 480, i64 2, !126, i64 482, i64 2, !126, i64 484, i64 4, !128, i64 488, i64 4, !128, i64 492, i64 2, !126, i64 494, i64 2, !126, i64 496, i64 4, !128, i64 500, i64 4, !128, i64 504, i64 2, !126, i64 506, i64 2, !126, i64 508, i64 2, !126, i64 510, i64 2, !126, i64 512, i64 2, !126, i64 514, i64 1, !125, i64 515, i64 1, !125, i64 516, i64 4, !128, i64 520, i64 4, !128, i64 524, i64 4, !128, i64 528, i64 2, !126, i64 530, i64 2, !126, i64 532, i64 2, !126, i64 534, i64 2, !126, i64 536, i64 2, !126, i64 538, i64 2, !126, i64 540, i64 2, !126, i64 542, i64 2, !126, i64 544, i64 4, !127, i64 548, i64 4, !127, i64 552, i64 4, !127, i64 556, i64 4, !127, i64 560, i64 4, !127, i64 564, i64 4, !127, i64 568, i64 4, !127, i64 572, i64 4, !127, i64 576, i64 4, !128, i64 580, i64 4, !128, i64 584, i64 4, !128, i64 588, i64 4, !128, i64 592, i64 8, !34, i64 600, i64 8, !34, i64 608, i64 2, !126, i64 610, i64 2, !126, i64 612, i64 4, !127, i64 616, i64 4, !127, i64 620, i64 4, !127, i64 624, i64 4, !127, i64 628, i64 4, !128, i64 632, i64 4, !127, i64 636, i64 4, !127, i64 640, i64 4, !127, i64 644, i64 4, !127, i64 648, i64 2, !126, i64 650, i64 2, !126, i64 652, i64 2, !126, i64 654, i64 2, !126, i64 656, i64 2, !126, i64 658, i64 2, !126, i64 660, i64 4, !127, i64 664, i64 4, !127, i64 668, i64 2, !126, i64 670, i64 2, !126, i64 672, i64 4, !127, i64 676, i64 4, !127, i64 680, i64 1024, !125, i64 1704, i64 4, !128, i64 1708, i64 2, !126, i64 1710, i64 2, !126, i64 1712, i64 768, !125, i64 2480, i64 16, !125, i64 2496, i64 16, !125, i64 2512, i64 1, !125, i64 2513, i64 1, !125, i64 2514, i64 1, !125, i64 2515, i64 5, !125, i64 2520, i64 4, !128, i64 2524, i64 2, !126, i64 2526, i64 2, !126, i64 2528, i64 4, !127, i64 2532, i64 4, !127, i64 2536, i64 2, !126, i64 2538, i64 2, !126, i64 2540, i64 4, !127, i64 2544, i64 2, !126, i64 2546, i64 2, !126, i64 2548, i64 4, !128, i64 2552, i64 2, !126, i64 2554, i64 2, !126, i64 2556, i64 2, !126, i64 2558, i64 2, !126, i64 2560, i64 4, !127, i64 2564, i64 4, !127, i64 2568, i64 8, !34, i64 2576, i64 4, !128, i64 2580, i64 4, !127, i64 2584, i64 32, !125, i64 2616, i64 1, !125, i64 2617, i64 1, !125, i64 2618, i64 1, !125, i64 2619, i64 1, !125, i64 2620, i64 1, !125, i64 2621, i64 1, !125, i64 2622, i64 1, !125, i64 2623, i64 1, !125, i64 2624, i64 2, !126, i64 2626, i64 2, !126, i64 2628, i64 4, !127, i64 2632, i64 1, !125, i64 2633, i64 1, !125, i64 2634, i64 6, !125, i64 2640, i64 4, !128, i64 2644, i64 4, !128, i64 2648, i64 64, !125, i64 2712, i64 64, !125, i64 2776, i64 4, !127, i64 2780, i64 4, !127, i64 2784, i64 8, !34, i64 2792, i64 8, !34, i64 2800, i64 64, !125, i64 2864, i64 1024, !125, i64 3888, i64 2, !126, i64 3890, i64 2, !126, i64 3892, i64 2, !126, i64 3894, i64 2, !126, i64 3896, i64 4, !127, i64 3900, i64 4, !127, i64 3904, i64 3, !125, i64 3907, i64 1, !125, i64 3908, i64 1, !125, i64 3909, i64 3, !125, i64 3912, i64 64, !125, i64 3976, i64 4, !128, i64 3980, i64 4, !128}
!125 = !{!36, !36, i64 0}
!126 = !{!47, !47, i64 0}
!127 = !{!51, !51, i64 0}
!128 = !{!40, !40, i64 0}
!129 = !{!46, !40, i64 1588}
!130 = !{!46, !40, i64 1592}
!131 = !{!46, !47, i64 1582}
!132 = !{!46, !40, i64 148}
!133 = !{!46, !40, i64 152}
!134 = !{!46, !51, i64 1664}
!135 = !{!46, !51, i64 1668}
!136 = !{!46, !40, i64 160}
!137 = !{!46, !51, i64 1672}
!138 = !{!46, !51, i64 1676}
!139 = !{!46, !40, i64 168}
!140 = !{i64 0, i64 4, !127, i64 4, i64 4, !127, i64 8, i64 4, !127, i64 12, i64 4, !127}
!141 = !{i64 0, i64 4, !128, i64 4, i64 4, !128, i64 8, i64 4, !128, i64 12, i64 4, !128}
!142 = !{!49, !40, i64 4}
!143 = !{!49, !40, i64 0}
!144 = !{!49, !40, i64 12}
!145 = !{!49, !40, i64 8}
!146 = !{!46, !51, i64 196}
!147 = !{!52, !36, i64 0}
!148 = !{!46, !35, i64 6216}
!149 = !{!52, !40, i64 516}
!150 = !{!46, !40, i64 1620}
!151 = !{!46, !47, i64 1642}
!152 = !{!46, !47, i64 98}
!153 = distinct !{!153, !42, !43}
!154 = !{!46, !51, i64 5716}
!155 = !{!46, !51, i64 5712}
!156 = !{!46, !47, i64 1538}
!157 = distinct !{!157, !42, !43}
!158 = distinct !{!158, !42, !43}
!159 = !{!52, !51, i64 624}
!160 = !{!46, !51, i64 1728}
!161 = !{!52, !47, i64 610}
!162 = !{!46, !47, i64 1714}
!163 = !{!52, !51, i64 440}
!164 = !{!46, !51, i64 1544}
!165 = !{!52, !40, i64 2576}
!166 = !{!46, !40, i64 3680}
!167 = !{!52, !51, i64 2580}
!168 = !{!46, !51, i64 3684}
!169 = !{!46, !51, i64 544}
!170 = !{!46, !51, i64 548}
!171 = !{!46, !51, i64 172}
!172 = !{!46, !51, i64 176}
!173 = !{!46, !51, i64 180}
!174 = !{!46, !51, i64 184}
!175 = !{!46, !35, i64 5992}
!176 = !{!46, !35, i64 6032}
!177 = !{!46, !35, i64 6040}
!178 = !{!46, !40, i64 208}
!179 = !{!50, !51, i64 4}
!180 = !{!50, !51, i64 0}
!181 = !{!46, !62, i64 6120}
!182 = !{i64 0, i64 4, !127, i64 4, i64 4, !127, i64 8, i64 4, !127}
!183 = !{!46, !35, i64 5856}
!184 = !{!64, !40, i64 120}
!185 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 74, !125, i64 92, i64 4, !128, i64 96, i64 2, !126, i64 98, i64 2, !126, i64 100, i64 2, !126, i64 102, i64 2, !126, i64 104, i64 1, !125, i64 112, i64 8, !34, i64 120, i64 8, !34, i64 128, i64 8, !34, i64 136, i64 8, !34, i64 144, i64 4, !128, i64 148, i64 4, !128, i64 152, i64 4, !128, i64 156, i64 4, !128, i64 160, i64 4, !128, i64 164, i64 4, !128, i64 168, i64 4, !128, i64 172, i64 4, !127, i64 176, i64 4, !127, i64 180, i64 4, !127, i64 184, i64 4, !127, i64 188, i64 4, !127, i64 192, i64 4, !127, i64 196, i64 4, !127, i64 200, i64 4, !128, i64 204, i64 4, !128, i64 208, i64 4, !128, i64 212, i64 4, !128, i64 216, i64 4, !127, i64 220, i64 4, !127, i64 224, i64 4, !127, i64 228, i64 4, !127, i64 232, i64 4, !127, i64 236, i64 4, !127, i64 240, i64 12, !125, i64 252, i64 36, !125, i64 288, i64 64, !125, i64 352, i64 64, !125, i64 416, i64 64, !125, i64 480, i64 64, !125, i64 544, i64 4, !127, i64 548, i64 4, !127, i64 552, i64 8, !34, i64 560, i64 256, !125, i64 816, i64 256, !125, i64 1072, i64 8, !34, i64 1080, i64 4, !125, i64 1088, i64 8, !34, i64 1096, i64 8, !34, i64 1104, i64 1, !125, i64 1105, i64 1, !125, i64 1106, i64 1, !125, i64 1107, i64 1, !125, i64 1108, i64 1, !125, i64 1109, i64 1, !125, i64 1110, i64 1, !125, i64 1111, i64 1, !125, i64 1112, i64 2, !126, i64 1114, i64 2, !126, i64 1116, i64 4, !127, i64 1120, i64 1, !125, i64 1121, i64 1, !125, i64 1122, i64 6, !125, i64 1128, i64 4, !128, i64 1132, i64 4, !128, i64 1136, i64 64, !125, i64 1200, i64 64, !125, i64 1264, i64 4, !127, i64 1268, i64 4, !127, i64 1272, i64 8, !34, i64 1280, i64 8, !34, i64 1288, i64 64, !125, i64 1352, i64 8, !34, i64 1360, i64 8, !34, i64 1368, i64 4, !128, i64 1372, i64 4, !128, i64 1376, i64 4, !128, i64 1380, i64 4, !128, i64 1384, i64 4, !128, i64 1388, i64 4, !128, i64 1392, i64 4, !128, i64 1396, i64 4, !128, i64 1400, i64 4, !128, i64 1404, i64 4, !128, i64 1408, i64 4, !128, i64 1412, i64 4, !128, i64 1416, i64 2, !126, i64 1418, i64 2, !126, i64 1420, i64 4, !128, i64 1424, i64 4, !128, i64 1428, i64 4, !128, i64 1432, i64 4, !128, i64 1436, i64 4, !128, i64 1440, i64 4, !128, i64 1444, i64 4, !128, i64 1448, i64 4, !128, i64 1452, i64 4, !128, i64 1456, i64 4, !128, i64 1460, i64 4, !128, i64 1464, i64 4, !127, i64 1468, i64 4, !128, i64 1472, i64 4, !128, i64 1476, i64 4, !128, i64 1480, i64 4, !128, i64 1484, i64 4, !128, i64 1488, i64 4, !128, i64 1492, i64 4, !128, i64 1496, i64 8, !34, i64 1504, i64 4, !128, i64 1508, i64 4, !128, i64 1512, i64 4, !128, i64 1516, i64 4, !127, i64 1520, i64 4, !128, i64 1524, i64 4, !128, i64 1528, i64 4, !128, i64 1532, i64 4, !128, i64 1536, i64 2, !126, i64 1538, i64 2, !126, i64 1540, i64 4, !127, i64 1544, i64 4, !127, i64 1548, i64 4, !127, i64 1552, i64 4, !127, i64 1556, i64 4, !127, i64 1560, i64 2, !126, i64 1562, i64 2, !126, i64 1564, i64 2, !126, i64 1566, i64 2, !126, i64 1568, i64 2, !126, i64 1570, i64 2, !126, i64 1572, i64 4, !128, i64 1576, i64 2, !126, i64 1578, i64 2, !126, i64 1580, i64 2, !126, i64 1582, i64 2, !126, i64 1584, i64 2, !126, i64 1586, i64 2, !126, i64 1588, i64 4, !128, i64 1592, i64 4, !128, i64 1596, i64 2, !126, i64 1598, i64 2, !126, i64 1600, i64 4, !128, i64 1604, i64 4, !128, i64 1608, i64 2, !126, i64 1610, i64 2, !126, i64 1612, i64 2, !126, i64 1614, i64 2, !126, i64 1616, i64 2, !126, i64 1618, i64 1, !125, i64 1619, i64 1, !125, i64 1620, i64 4, !128, i64 1624, i64 4, !128, i64 1628, i64 4, !128, i64 1632, i64 2, !126, i64 1634, i64 2, !126, i64 1636, i64 2, !126, i64 1638, i64 2, !126, i64 1640, i64 2, !126, i64 1642, i64 2, !126, i64 1644, i64 2, !126, i64 1646, i64 2, !126, i64 1648, i64 4, !127, i64 1652, i64 4, !127, i64 1656, i64 4, !127, i64 1660, i64 4, !127, i64 1664, i64 4, !127, i64 1668, i64 4, !127, i64 1672, i64 4, !127, i64 1676, i64 4, !127, i64 1680, i64 4, !128, i64 1684, i64 4, !128, i64 1688, i64 4, !128, i64 1692, i64 4, !128, i64 1696, i64 8, !34, i64 1704, i64 8, !34, i64 1712, i64 2, !126, i64 1714, i64 2, !126, i64 1716, i64 4, !127, i64 1720, i64 4, !127, i64 1724, i64 4, !127, i64 1728, i64 4, !127, i64 1732, i64 4, !128, i64 1736, i64 4, !127, i64 1740, i64 4, !127, i64 1744, i64 4, !127, i64 1748, i64 4, !127, i64 1752, i64 2, !126, i64 1754, i64 2, !126, i64 1756, i64 2, !126, i64 1758, i64 2, !126, i64 1760, i64 2, !126, i64 1762, i64 2, !126, i64 1764, i64 4, !127, i64 1768, i64 4, !127, i64 1772, i64 2, !126, i64 1774, i64 2, !126, i64 1776, i64 4, !127, i64 1780, i64 4, !127, i64 1784, i64 1024, !125, i64 2808, i64 4, !128, i64 2812, i64 2, !126, i64 2814, i64 2, !126, i64 2816, i64 768, !125, i64 3584, i64 16, !125, i64 3600, i64 16, !125, i64 3616, i64 1, !125, i64 3617, i64 1, !125, i64 3618, i64 1, !125, i64 3619, i64 5, !125, i64 3624, i64 4, !128, i64 3628, i64 2, !126, i64 3630, i64 2, !126, i64 3632, i64 4, !127, i64 3636, i64 4, !127, i64 3640, i64 2, !126, i64 3642, i64 2, !126, i64 3644, i64 4, !127, i64 3648, i64 2, !126, i64 3650, i64 2, !126, i64 3652, i64 4, !128, i64 3656, i64 2, !126, i64 3658, i64 2, !126, i64 3660, i64 2, !126, i64 3662, i64 2, !126, i64 3664, i64 4, !127, i64 3668, i64 4, !127, i64 3672, i64 8, !34, i64 3680, i64 4, !128, i64 3684, i64 4, !127, i64 3688, i64 32, !125, i64 3720, i64 1, !125, i64 3721, i64 1, !125, i64 3722, i64 1, !125, i64 3723, i64 1, !125, i64 3724, i64 1, !125, i64 3725, i64 1, !125, i64 3726, i64 1, !125, i64 3727, i64 1, !125, i64 3728, i64 2, !126, i64 3730, i64 2, !126, i64 3732, i64 4, !127, i64 3736, i64 1, !125, i64 3737, i64 1, !125, i64 3738, i64 6, !125, i64 3744, i64 4, !128, i64 3748, i64 4, !128, i64 3752, i64 64, !125, i64 3816, i64 64, !125, i64 3880, i64 4, !127, i64 3884, i64 4, !127, i64 3888, i64 8, !34, i64 3896, i64 8, !34, i64 3904, i64 64, !125, i64 3968, i64 1024, !125, i64 4992, i64 2, !126, i64 4994, i64 2, !126, i64 4996, i64 2, !126, i64 4998, i64 2, !126, i64 5000, i64 4, !127, i64 5004, i64 4, !127, i64 5008, i64 3, !125, i64 5011, i64 1, !125, i64 5012, i64 1, !125, i64 5013, i64 3, !125, i64 5016, i64 64, !125, i64 5080, i64 4, !128, i64 5084, i64 4, !128, i64 5088, i64 8, !34, i64 5096, i64 8, !34, i64 5104, i64 8, !34, i64 5112, i64 8, !34, i64 5120, i64 66, !125, i64 5186, i64 2, !126, i64 5188, i64 4, !128, i64 5192, i64 4, !128, i64 5196, i64 4, !128, i64 5200, i64 8, !34, i64 5208, i64 8, !34, i64 5216, i64 2, !126, i64 5218, i64 2, !126, i64 5220, i64 2, !126, i64 5222, i64 2, !126, i64 5224, i64 4, !127, i64 5228, i64 4, !127, i64 5232, i64 4, !127, i64 5236, i64 4, !127, i64 5240, i64 4, !127, i64 5244, i64 4, !127, i64 5248, i64 4, !127, i64 5252, i64 4, !127, i64 5256, i64 4, !127, i64 5260, i64 4, !127, i64 5264, i64 4, !127, i64 5268, i64 4, !127, i64 5272, i64 4, !127, i64 5276, i64 4, !127, i64 5280, i64 4, !127, i64 5284, i64 4, !127, i64 5288, i64 2, !126, i64 5290, i64 2, !126, i64 5292, i64 2, !126, i64 5294, i64 2, !126, i64 5296, i64 2, !126, i64 5298, i64 2, !126, i64 5300, i64 2, !126, i64 5302, i64 2, !126, i64 5304, i64 4, !127, i64 5308, i64 4, !127, i64 5312, i64 4, !127, i64 5316, i64 4, !127, i64 5320, i64 4, !127, i64 5324, i64 4, !127, i64 5328, i64 4, !127, i64 5332, i64 4, !127, i64 5336, i64 4, !127, i64 5340, i64 4, !127, i64 5344, i64 4, !127, i64 5348, i64 4, !127, i64 5352, i64 2, !126, i64 5354, i64 2, !126, i64 5356, i64 2, !126, i64 5358, i64 2, !126, i64 5360, i64 4, !127, i64 5364, i64 4, !127, i64 5368, i64 4, !127, i64 5372, i64 4, !127, i64 5376, i64 2, !126, i64 5378, i64 2, !126, i64 5380, i64 2, !126, i64 5382, i64 2, !126, i64 5384, i64 4, !127, i64 5388, i64 4, !127, i64 5392, i64 4, !127, i64 5396, i64 4, !127, i64 5400, i64 4, !127, i64 5404, i64 4, !127, i64 5408, i64 4, !127, i64 5412, i64 2, !126, i64 5414, i64 2, !126, i64 5416, i64 2, !126, i64 5418, i64 2, !126, i64 5420, i64 2, !126, i64 5422, i64 2, !126, i64 5424, i64 8, !34, i64 5432, i64 8, !34, i64 5440, i64 8, !34, i64 5448, i64 144, !125, i64 5592, i64 2, !126, i64 5594, i64 2, !126, i64 5596, i64 4, !125, i64 5600, i64 8, !34, i64 5608, i64 8, !34, i64 5616, i64 8, !34, i64 5624, i64 4, !128, i64 5628, i64 4, !128, i64 5632, i64 8, !34, i64 5640, i64 8, !34, i64 5648, i64 8, !34, i64 5656, i64 8, !34, i64 5664, i64 8, !34, i64 5672, i64 8, !34, i64 5680, i64 4, !127, i64 5688, i64 8, !34, i64 5696, i64 8, !34, i64 5704, i64 8, !34, i64 5712, i64 4, !127, i64 5716, i64 4, !127, i64 5720, i64 4, !128, i64 5724, i64 4, !128, i64 5728, i64 4, !128, i64 5732, i64 4, !128, i64 5736, i64 4, !128, i64 5744, i64 8, !34, i64 5752, i64 8, !34, i64 5760, i64 8, !34, i64 5768, i64 8, !34, i64 5776, i64 8, !34, i64 5784, i64 8, !34, i64 5792, i64 8, !34, i64 5800, i64 8, !34, i64 5808, i64 8, !34, i64 5816, i64 8, !34, i64 5824, i64 4, !128, i64 5832, i64 8, !34, i64 5840, i64 8, !34, i64 5848, i64 8, !34, i64 5856, i64 8, !34, i64 5864, i64 8, !34, i64 5872, i64 8, !34, i64 5880, i64 8, !34, i64 5888, i64 8, !34, i64 5896, i64 8, !34, i64 5904, i64 8, !34, i64 5912, i64 8, !34, i64 5920, i64 8, !34, i64 5928, i64 8, !34, i64 5936, i64 8, !34, i64 5944, i64 8, !34, i64 5952, i64 8, !34, i64 5960, i64 8, !34, i64 5968, i64 8, !34, i64 5976, i64 8, !34, i64 5984, i64 8, !34, i64 5992, i64 8, !34, i64 6000, i64 8, !34, i64 6008, i64 8, !34, i64 6016, i64 8, !34, i64 6024, i64 8, !34, i64 6032, i64 8, !34, i64 6040, i64 8, !34, i64 6048, i64 8, !34, i64 6056, i64 8, !34, i64 6064, i64 4, !128, i64 6068, i64 4, !128, i64 6072, i64 4, !128, i64 6076, i64 4, !128, i64 6080, i64 4, !128, i64 6084, i64 4, !128, i64 6088, i64 4, !128, i64 6092, i64 2, !126, i64 6094, i64 2, !126, i64 6096, i64 2, !126, i64 6098, i64 2, !126, i64 6100, i64 2, !126, i64 6102, i64 2, !126, i64 6104, i64 1, !125, i64 6112, i64 8, !186, i64 6120, i64 8, !186, i64 6128, i64 8, !34, i64 6136, i64 8, !34, i64 6144, i64 64, !125, i64 6208, i64 4, !127, i64 6212, i64 4, !127, i64 6216, i64 8, !34, i64 6224, i64 8, !34, i64 6232, i64 8, !34}
!186 = !{!62, !62, i64 0}
!187 = !{!188, !47, i64 142}
!188 = !{!"RenderPart", !35, i64 0, !35, i64 8, !35, i64 16, !48, i64 24, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !49, i64 112, !40, i64 128, !40, i64 132, !40, i64 136, !47, i64 140, !47, i64 142, !47, i64 144, !47, i64 146, !35, i64 152}
!189 = !{!188, !40, i64 136}
!190 = !{!188, !40, i64 112}
!191 = distinct !{!191, !42, !43}
!192 = !{!188, !40, i64 116}
!193 = !{!46, !51, i64 232}
!194 = !{!46, !51, i64 236}
!195 = !{!46, !51, i64 224}
!196 = !{!46, !51, i64 228}
!197 = distinct !{!197, !42, !43}
!198 = distinct !{!198, !42, !43}
!199 = distinct !{!199, !42, !43}
!200 = !{!201, !35, i64 0}
!201 = !{!"RenderThread", !35, i64 0, !35, i64 8, !40, i64 16, !35, i64 24, !35, i64 32}
!202 = !{!201, !35, i64 8}
!203 = !{!201, !40, i64 16}
!204 = !{!201, !35, i64 24}
!205 = !{!201, !35, i64 32}
!206 = distinct !{!206, !42, !43}
!207 = !{!188, !35, i64 16}
!208 = !{!46, !40, i64 6088}
!209 = !{!46, !35, i64 6128}
!210 = !{!46, !47, i64 6098}
!211 = distinct !{!211, !43}
!212 = distinct !{!212, !42, !43}
!213 = distinct !{!213, !42, !43}
!214 = distinct !{!214, !42, !43}
!215 = !{!216, !47, i64 952}
!216 = !{!"Object", !60, i64 0, !35, i64 120, !35, i64 128, !47, i64 136, !47, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !217, i64 312, !35, i64 360, !48, i64 368, !48, i64 384, !48, i64 400, !48, i64 416, !40, i64 432, !40, i64 436, !35, i64 440, !35, i64 448, !40, i64 456, !40, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !51, i64 616, !51, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !40, i64 944, !47, i64 948, !47, i64 950, !47, i64 952, !47, i64 954, !47, i64 956, !47, i64 958, !47, i64 960, !47, i64 962, !47, i64 964, !36, i64 966, !36, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !51, i64 988, !51, i64 992, !51, i64 996, !51, i64 1000, !51, i64 1004, !51, i64 1008, !51, i64 1012, !51, i64 1016, !51, i64 1020, !51, i64 1024, !51, i64 1028, !51, i64 1032, !47, i64 1036, !47, i64 1038, !47, i64 1040, !36, i64 1042, !36, i64 1043, !47, i64 1044, !36, i64 1046, !36, i64 1047, !51, i64 1048, !51, i64 1052, !48, i64 1056, !48, i64 1072, !48, i64 1088, !48, i64 1104, !51, i64 1120, !47, i64 1124, !47, i64 1126, !36, i64 1128, !40, i64 1144, !40, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !47, i64 1162, !36, i64 1164, !48, i64 1176, !48, i64 1192, !48, i64 1208, !48, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !47, i64 1266, !51, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !218, i64 1304, !218, i64 1312, !40, i64 1320, !40, i64 1324, !48, i64 1328, !48, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !48, i64 1400, !35, i64 1416}
!217 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !47, i64 16, !47, i64 18, !47, i64 20, !47, i64 22, !47, i64 24, !47, i64 26, !47, i64 28, !47, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!218 = !{!"long", !36, i64 0}
!219 = !{!46, !35, i64 1088}
!220 = !{!46, !36, i64 104}
!221 = !{!222, !47, i64 98}
!222 = !{!"Scene", !60, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !48, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !47, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !52, i64 280, !223, i64 4264, !48, i64 4296, !48, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !47, i64 4376, !47, i64 4378, !40, i64 4380, !48, i64 4384, !224, i64 4400, !225, i64 4416, !228, i64 4600, !35, i64 4608, !229, i64 4616, !35, i64 4640, !218, i64 4648, !218, i64 4656, !54, i64 4664, !55, i64 4824, !230, i64 4888, !35, i64 4952}
!223 = !{!"AudioData", !40, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !40, i64 16, !47, i64 20, !47, i64 22, !51, i64 24, !51, i64 28}
!224 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!225 = !{!"GameData", !224, i64 0, !47, i64 16, !47, i64 18, !47, i64 20, !47, i64 22, !47, i64 24, !47, i64 26, !47, i64 28, !47, i64 30, !47, i64 32, !36, i64 34, !226, i64 40, !47, i64 64, !47, i64 66, !51, i64 68, !227, i64 72, !51, i64 128, !51, i64 132, !40, i64 136, !47, i64 140, !47, i64 142, !47, i64 144, !47, i64 146, !47, i64 148, !47, i64 150, !47, i64 152, !47, i64 154, !47, i64 156, !47, i64 158, !47, i64 160, !47, i64 162, !51, i64 164, !51, i64 168, !51, i64 172, !51, i64 176, !51, i64 180}
!226 = !{!"GameDome", !47, i64 0, !47, i64 2, !47, i64 4, !47, i64 6, !51, i64 8, !51, i64 12, !35, i64 16}
!227 = !{!"RecastData", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20, !51, i64 24, !51, i64 28, !51, i64 32, !51, i64 36, !40, i64 40, !51, i64 44, !51, i64 48, !47, i64 52, !47, i64 54}
!228 = !{!"UnitSettings", !51, i64 0, !36, i64 4, !36, i64 5, !47, i64 6}
!229 = !{!"PhysicsSettings", !36, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!230 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!231 = distinct !{!231, !42, !43}
!232 = !{!233, !47, i64 172}
!233 = !{!"bNode", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !36, i64 104, !40, i64 168, !47, i64 172, !47, i64 174, !47, i64 176, !47, i64 178, !47, i64 180, !47, i64 182, !47, i64 184, !47, i64 186, !36, i64 188, !48, i64 200, !48, i64 216, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !48, i64 264, !51, i64 280, !51, i64 284, !51, i64 288, !51, i64 292, !51, i64 296, !51, i64 300, !51, i64 304, !40, i64 308, !36, i64 312, !47, i64 376, !47, i64 378, !51, i64 380, !51, i64 384, !47, i64 388, !47, i64 390, !35, i64 392, !50, i64 400, !50, i64 416, !50, i64 432, !47, i64 448, !47, i64 450, !40, i64 452, !35, i64 456}
!234 = !{!233, !40, i64 168}
!235 = !{!233, !35, i64 240}
!236 = !{!222, !40, i64 800}
!237 = distinct !{!237, !42, !43}
!238 = !{!222, !47, i64 758}
!239 = !{!222, !40, i64 764}
!240 = !{!222, !40, i64 768}
!241 = !{!222, !51, i64 840}
!242 = !{!222, !51, i64 844}
!243 = !{!222, !51, i64 848}
!244 = !{!222, !51, i64 852}
!245 = !{!246, !35, i64 376}
!246 = !{!"bNodeTree", !60, i64 0, !35, i64 120, !35, i64 128, !36, i64 136, !35, i64 200, !35, i64 208, !36, i64 216, !48, i64 224, !48, i64 240, !40, i64 256, !40, i64 260, !40, i64 264, !40, i64 268, !40, i64 272, !47, i64 276, !47, i64 278, !40, i64 280, !40, i64 284, !47, i64 288, !47, i64 290, !40, i64 292, !50, i64 296, !48, i64 312, !48, i64 328, !35, i64 344, !247, i64 352, !40, i64 356, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !35, i64 408, !35, i64 416, !35, i64 424}
!247 = !{!"bNodeInstanceKey", !40, i64 0}
!248 = !{!246, !35, i64 384}
!249 = !{!246, !35, i64 368}
!250 = !{!246, !35, i64 416}
!251 = !{!246, !35, i64 400}
!252 = !{!246, !35, i64 408}
!253 = !{!46, !47, i64 6102}
!254 = distinct !{!254, !42, !43}
!255 = distinct !{!255, !42, !43}
!256 = distinct !{!256, !42, !43}
!257 = !{!64, !35, i64 112}
!258 = distinct !{!258, !42, !43}
!259 = distinct !{!259, !42, !43}
!260 = !{!222, !35, i64 256}
!261 = !{!262, !35, i64 8}
!262 = !{!"Editing", !35, i64 0, !48, i64 8, !48, i64 24, !35, i64 40, !36, i64 48, !36, i64 1072, !40, i64 2096, !40, i64 2100, !40, i64 2104, !40, i64 2108, !50, i64 2112}
!263 = !{!264, !40, i64 100}
!264 = !{!"Sequence", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !40, i64 112, !40, i64 116, !40, i64 120, !40, i64 124, !40, i64 128, !40, i64 132, !40, i64 136, !40, i64 140, !51, i64 144, !51, i64 148, !51, i64 152, !47, i64 156, !47, i64 158, !40, i64 160, !40, i64 164, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !35, i64 208, !35, i64 216, !51, i64 224, !51, i64 228, !35, i64 232, !35, i64 240, !35, i64 248, !48, i64 256, !35, i64 272, !35, i64 280, !51, i64 288, !51, i64 292, !51, i64 296, !51, i64 300, !35, i64 304, !40, i64 312, !40, i64 316, !40, i64 320, !51, i64 324, !40, i64 328, !36, i64 332, !36, i64 333, !48, i64 336}
!265 = !{!264, !35, i64 0}
!266 = distinct !{!266, !42, !43}
!267 = !{!222, !47, i64 888}
!268 = !{!269, !40, i64 108}
!269 = !{!"SceneRenderLayer", !35, i64 0, !35, i64 8, !36, i64 16, !35, i64 80, !35, i64 88, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !40, i64 112, !40, i64 116, !40, i64 120, !51, i64 124, !270, i64 128}
!270 = !{!"FreestyleConfig", !48, i64 0, !40, i64 16, !40, i64 20, !40, i64 24, !51, i64 28, !51, i64 32, !51, i64 36, !48, i64 40}
!271 = !{!222, !36, i64 246}
!272 = !{!222, !35, i64 248}
!273 = !{i8 0, i8 2}
!274 = !{!222, !35, i64 128}
!275 = !{!264, !35, i64 184}
!276 = !{!264, !35, i64 192}
!277 = !{!222, !40, i64 796}
!278 = distinct !{!278, !42, !43}
!279 = distinct !{!279, !42, !43}
!280 = distinct !{!280, !42, !43}
!281 = !{!93, !36, i64 2090}
!282 = !{!222, !40, i64 680}
!283 = !{!222, !36, i64 280}
!284 = !{!52, !47, i64 478}
!285 = !{!52, !40, i64 484}
!286 = !{!52, !40, i64 488}
!287 = !{!52, !51, i64 560}
!288 = !{!52, !51, i64 564}
!289 = !{!52, !51, i64 568}
!290 = !{!52, !51, i64 572}
!291 = !{!46, !35, i64 5616}
!292 = !{!222, !40, i64 232}
!293 = !{!46, !40, i64 5624}
!294 = !{!46, !40, i64 5628}
!295 = !{!46, !36, i64 6104}
!296 = !{!46, !40, i64 1504}
!297 = !{!46, !40, i64 6064}
!298 = !{!46, !40, i64 1512}
!299 = !{!46, !40, i64 1508}
!300 = !{!46, !35, i64 6224}
!301 = distinct !{!301, !42, !43}
!302 = distinct !{!302, !42, !43}
!303 = !{!46, !40, i64 2808}
!304 = !{!305, !35, i64 40}
!305 = !{!"ImBuf", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !36, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !35, i64 40, !35, i64 48, !36, i64 56, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !51, i64 112, !36, i64 120, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !35, i64 296, !35, i64 304, !40, i64 312, !36, i64 316, !36, i64 1340, !35, i64 2368, !40, i64 2376, !35, i64 2384, !40, i64 2392, !40, i64 2396, !35, i64 2400, !35, i64 2408, !35, i64 2416, !35, i64 2424, !40, i64 2432, !49, i64 2436, !306, i64 2456}
!306 = !{!"DDSData", !40, i64 0, !40, i64 4, !35, i64 8, !40, i64 16}
!307 = !{!305, !40, i64 36}
!308 = !{!309, !35, i64 8}
!309 = !{!"bMovieHandle", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32}
!310 = !{!222, !40, i64 684}
!311 = !{!305, !40, i64 16}
!312 = !{!305, !40, i64 20}
!313 = !{!46, !36, i64 1104}
!314 = !{!222, !36, i64 286}
!315 = !{!222, !36, i64 283}
!316 = !{i64 0, i64 1, !125, i64 1, i64 1, !125, i64 2, i64 1, !125, i64 3, i64 1, !125, i64 4, i64 1, !125, i64 5, i64 1, !125, i64 6, i64 1, !125, i64 7, i64 1, !125, i64 8, i64 2, !126, i64 10, i64 2, !126, i64 12, i64 4, !127, i64 16, i64 1, !125, i64 17, i64 1, !125, i64 18, i64 6, !125, i64 24, i64 4, !128, i64 28, i64 4, !128, i64 32, i64 64, !125, i64 96, i64 64, !125, i64 160, i64 4, !127, i64 164, i64 4, !127, i64 168, i64 8, !34, i64 176, i64 8, !34, i64 184, i64 64, !125}
!317 = !{!53, !36, i64 0}
!318 = !{!305, !36, i64 24}
!319 = !{!46, !47, i64 96}
!320 = !{!309, !35, i64 0}
!321 = !{!309, !35, i64 24}
!322 = !{!222, !40, i64 688}
!323 = distinct !{!323, !42, !43}
!324 = distinct !{!324, !42, !43}
!325 = !{!309, !35, i64 16}
!326 = !{!269, !40, i64 112}
!327 = distinct !{!327, !42, !43}
!328 = !{!222, !51, i64 692}
!329 = !{!305, !35, i64 48}
!330 = !{!74, !40, i64 168}
!331 = !{!74, !40, i64 172}
!332 = !{!333, !47, i64 164}
!333 = !{!"EnvMap", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 64, !36, i64 128, !47, i64 164, !47, i64 166, !51, i64 168, !51, i64 172, !51, i64 176, !40, i64 180, !47, i64 184, !47, i64 186, !40, i64 188, !40, i64 192, !47, i64 196, !47, i64 198}
!334 = distinct !{!334, !42, !43}
!335 = distinct !{!335, !42, !43}
!336 = !{!188, !47, i64 146}
!337 = !{!188, !47, i64 140}
!338 = distinct !{!338, !42, !43}
!339 = distinct !{!339, !42, !43}
!340 = !{!341, !47, i64 1040}
!341 = !{!"Main", !35, i64 0, !35, i64 8, !36, i64 16, !47, i64 1040, !47, i64 1042, !47, i64 1044, !47, i64 1046, !218, i64 1048, !36, i64 1056, !47, i64 1072, !35, i64 1080, !48, i64 1088, !48, i64 1104, !48, i64 1120, !48, i64 1136, !48, i64 1152, !48, i64 1168, !48, i64 1184, !48, i64 1200, !48, i64 1216, !48, i64 1232, !48, i64 1248, !48, i64 1264, !48, i64 1280, !48, i64 1296, !48, i64 1312, !48, i64 1328, !48, i64 1344, !48, i64 1360, !48, i64 1376, !48, i64 1392, !48, i64 1408, !48, i64 1424, !48, i64 1440, !48, i64 1456, !48, i64 1472, !48, i64 1488, !48, i64 1504, !48, i64 1520, !48, i64 1536, !48, i64 1552, !48, i64 1568, !48, i64 1584, !48, i64 1600, !48, i64 1616, !36, i64 1632, !35, i64 1888, !35, i64 1896}
!342 = !{!341, !47, i64 1042}
!343 = distinct !{!343, !42, !43}
!344 = !{!222, !47, i64 816}
!345 = !{!60, !47, i64 98}
!346 = distinct !{!346, !42, !43}
!347 = !{!348, !35, i64 32}
!348 = !{!"Base", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !47, i64 28, !47, i64 30, !35, i64 32}
!349 = !{!348, !40, i64 16}
!350 = !{!216, !47, i64 136}
!351 = !{!352, !40, i64 16}
!352 = !{!"ModifierData", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !36, i64 32, !35, i64 96, !35, i64 104}
!353 = !{!354, !35, i64 112}
!354 = !{!"BooleanModifierData", !352, i64 0, !35, i64 112, !40, i64 120, !40, i64 124}
!355 = !{!356, !35, i64 112}
!356 = !{!"ArrayModifierData", !352, i64 0, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !36, i64 144, !36, i64 156, !51, i64 168, !51, i64 172, !40, i64 176, !40, i64 180, !40, i64 184, !40, i64 188}
!357 = !{!356, !35, i64 120}
!358 = !{!359, !35, i64 112}
!359 = !{!"ShrinkwrapModifierData", !352, i64 0, !35, i64 112, !35, i64 120, !36, i64 128, !51, i64 192, !47, i64 196, !36, i64 198, !36, i64 199, !51, i64 200, !36, i64 204, !36, i64 205, !36, i64 206}
!360 = !{!352, !35, i64 0}
!361 = distinct !{!361, !42, !43}
!362 = distinct !{!362, !42, !43}
!363 = distinct !{!363, !42, !43}
!364 = !{!46, !47, i64 6092}
!365 = !{!46, !47, i64 6094}
!366 = distinct !{!366, !42, !43}
!367 = distinct !{!367, !42, !43}
!368 = distinct !{!368, !42, !43}
!369 = distinct !{!369, !42, !43}
!370 = !{!39, !40, i64 20}
!371 = distinct !{!371, !42, !43}
!372 = distinct !{!372, !42, !43}
!373 = distinct !{!373, !42, !43}
!374 = distinct !{!374, !42, !43}
