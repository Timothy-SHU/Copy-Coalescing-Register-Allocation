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
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.bMovieHandle = type { ptr, ptr, ptr, ptr, ptr }
%struct.EnvMap = type { ptr, ptr, [6 x ptr], [4 x [4 x float]], [3 x [3 x float]], i16, i16, float, float, float, i32, i16, i16, i32, i32, i16, i16 }
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
%struct.bNodeSocket = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], ptr, i16, i16, i16, i16, ptr, [64 x i8], float, float, ptr, i16, i16, i32, ptr, i32, i32, ptr, ptr, %struct.bNodeStack }
%struct.bNodeStack = type { [4 x float], float, float, ptr, i16, i16, i16, i16, i16, i16, [2 x i16] }
%struct.SeqRenderData = type { ptr, ptr, ptr, i32, i32, i32, i32, float, i8, i8 }

@RenderGlobal = internal global %struct.anon zeroinitializer, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [11 x i8] c"new render\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"re->eval_ctx\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"Image too small\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"new render result\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"No border area selected\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"Cannot save render buffers, check the temp default path\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Full sample does not support edge enhance\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"No node tree in scene\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"No render output node in scene\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"Full sample AA not supported without 3D rendering\00", align 1
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_FreeRenderResult(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @render_result_free(ptr noundef %0) #24
  ret void
}

; Function Attrs: optsize
declare void @render_result_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
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
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  br label %15

15:                                               ; preds = %4, %12
  %16 = phi ptr [ %14, %12 ], [ null, %4 ]
  ret ptr %16
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RE_GetRenderLayer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 12
  %6 = tail call ptr @BLI_findstring(ptr noundef nonnull %5, ptr noundef %1, i32 noundef 16) #24
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi ptr [ %6, %4 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RE_MultilayerConvert(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @render_result_new_from_exr(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3, i32 noundef %4) #24
  ret ptr %6
}

; Function Attrs: optsize
declare ptr @render_result_new_from_exr(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @render_get_active_layer(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 12
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 61
  %5 = load i16, ptr %4, align 8, !tbaa !44
  %6 = sext i16 %5 to i32
  %7 = tail call ptr @BLI_findlink(ptr noundef nonnull %3, i32 noundef %6) #24
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !tbaa !62
  br label %11

11:                                               ; preds = %2, %9
  %12 = phi ptr [ %10, %9 ], [ %7, %2 ]
  ret ptr %12
}

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @RE_GetRender(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @RenderGlobal, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Render, ptr %4, i64 0, i32 2
  %8 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %0, i64 noundef 74) #25
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %2, !llvm.loop !64

10:                                               ; preds = %6, %2
  ret ptr %4
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RE_AcquireResultRead(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull %4, i32 noundef 1) #24
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi ptr [ %6, %3 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare void @BLI_rw_mutex_lock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RE_AcquireResultWrite(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull %4, i32 noundef 2) #24
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi ptr [ %6, %3 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @RE_SwapResult(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #6 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = load ptr, ptr %1, align 8, !tbaa !34
  store ptr %7, ptr %5, align 8, !tbaa !65
  store ptr %6, ptr %1, align 8, !tbaa !34
  br label %8

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_ReleaseResult(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull %4) #24
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: optsize
declare void @BLI_rw_mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @RE_GetScene(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %5 = load ptr, ptr %4, align 8, !tbaa !66
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_AcquireResultImage(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %1, i8 0, i64 144, i1 false)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %48, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull %5, i32 noundef 1) #24
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = icmp eq ptr %7, null
  br i1 %8, label %48, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 2
  %11 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 2
  %12 = load <2 x i32>, ptr %10, align 8, !tbaa !67
  store <2 x i32> %12, ptr %11, align 8, !tbaa !67
  %13 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 7
  %14 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !68
  %16 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 8
  store ptr %15, ptr %16, align 8, !tbaa !68
  %17 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 6
  %18 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 6
  %19 = load <2 x ptr>, ptr %17, align 8, !tbaa !34
  store <2 x ptr> %19, ptr %18, align 8, !tbaa !34
  %20 = tail call ptr @render_get_active_layer(ptr noundef nonnull %0, ptr noundef nonnull %7) #26
  %21 = icmp eq ptr %20, null
  br i1 %21, label %33, label %22

22:                                               ; preds = %9
  %23 = load ptr, ptr %13, align 8, !tbaa !69
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.RenderLayer, ptr %20, i64 0, i32 11
  %27 = load ptr, ptr %26, align 8, !tbaa !70
  store ptr %27, ptr %13, align 8, !tbaa !69
  br label %28

28:                                               ; preds = %25, %22
  %29 = load ptr, ptr %16, align 8, !tbaa !68
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = tail call ptr @RE_RenderLayerGetPass(ptr noundef nonnull %20, i32 noundef 2) #26
  store ptr %32, ptr %16, align 8, !tbaa !68
  br label %33

33:                                               ; preds = %28, %31, %9
  %34 = load ptr, ptr %6, align 8, !tbaa !65
  %35 = getelementptr inbounds %struct.RenderResult, ptr %34, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !69
  %37 = icmp ne ptr %36, null
  %38 = zext i1 %37 to i32
  %39 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 17
  store i32 %38, ptr %39, align 8, !tbaa !72
  %40 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 12
  %41 = getelementptr inbounds %struct.RenderResult, ptr %34, i64 0, i32 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %40, ptr noundef nonnull align 8 dereferenceable(16) %41, i64 16, i1 false), !tbaa.struct !73
  %42 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  %43 = load i32, ptr %42, align 4, !tbaa !74
  %44 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 10
  store i32 %43, ptr %44, align 8, !tbaa !75
  %45 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !76
  %47 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 11
  store i32 %46, ptr %47, align 4, !tbaa !77
  br label %48

48:                                               ; preds = %4, %33, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_ReleaseResultImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull %4) #24
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_ResultGet32(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.RenderResult, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #27
  call void @RE_AcquireResultImage(ptr noundef %0, ptr noundef nonnull %3) #26
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 20
  %5 = load i32, ptr %4, align 8, !tbaa !78
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 21
  %7 = load i32, ptr %6, align 4, !tbaa !79
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  %10 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 44
  %11 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 45
  call void @render_result_rect_get_pixels(ptr noundef nonnull %3, ptr noundef %1, i32 noundef %5, i32 noundef %7, ptr noundef nonnull %10, ptr noundef nonnull %11) #24
  call void @RE_ReleaseResultImage(ptr noundef %0) #26
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #27
  ret void
}

; Function Attrs: optsize
declare void @render_result_rect_get_pixels(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_AcquiredResultGet32(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 20
  %5 = load i32, ptr %4, align 8, !tbaa !78
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 21
  %7 = load i32, ptr %6, align 4, !tbaa !79
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  %10 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 44
  %11 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 45
  tail call void @render_result_rect_get_pixels(ptr noundef %1, ptr noundef %2, i32 noundef %5, i32 noundef %7, ptr noundef nonnull %10, ptr noundef nonnull %11) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local nonnull ptr @RE_GetStats(ptr noundef readnone %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @RE_NewRender(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @RE_GetRender(ptr noundef %0) #26
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %6 = tail call ptr %5(i64 noundef 6240, ptr noundef nonnull @.str) #24
  tail call void @BLI_addtail(ptr noundef nonnull @RenderGlobal, ptr noundef %6) #24
  %7 = getelementptr inbounds %struct.Render, ptr %6, i64 0, i32 2
  %8 = tail call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef %0, i64 noundef 74) #24
  %9 = getelementptr inbounds %struct.Render, ptr %6, i64 0, i32 12
  tail call void @BLI_rw_mutex_init(ptr noundef nonnull %9) #24
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %11 = tail call ptr %10(i64 noundef 4, ptr noundef nonnull @.str.1) #24
  %12 = getelementptr inbounds %struct.Render, ptr %6, i64 0, i32 101
  store ptr %11, ptr %12, align 8, !tbaa !80
  store i32 2, ptr %11, align 4, !tbaa !81
  br label %13

13:                                               ; preds = %4, %1
  %14 = phi ptr [ %6, %4 ], [ %2, %1 ]
  tail call void @RE_InitRenderCB(ptr noundef nonnull %14) #26
  %15 = getelementptr inbounds %struct.Render, ptr %14, i64 0, i32 24
  store float 1.000000e+00, ptr %15, align 8, !tbaa !83
  ret ptr %14
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_rw_mutex_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @RE_InitRenderCB(ptr nocapture noundef writeonly %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 82
  store ptr @result_nothing, ptr %2, align 8, !tbaa !84
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 84
  store ptr @result_nothing, ptr %3, align 8, !tbaa !85
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 86
  store ptr @result_rcti_nothing, ptr %4, align 8, !tbaa !86
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 88
  store ptr @current_scene_nothing, ptr %5, align 8, !tbaa !87
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 92
  store ptr @float_nothing, ptr %6, align 8, !tbaa !88
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  store ptr @default_break, ptr %7, align 8, !tbaa !89
  %8 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !90
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, ptr @stats_nothing, ptr @stats_background
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 90
  store ptr %10, ptr %11, align 8
  %12 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  store ptr null, ptr %12, align 8, !tbaa !92
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 93
  store ptr null, ptr %13, align 8, !tbaa !93
  %14 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 91
  store ptr null, ptr %14, align 8, !tbaa !94
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 87
  store ptr null, ptr %15, align 8, !tbaa !95
  %16 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 85
  store ptr null, ptr %16, align 8, !tbaa !96
  %17 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 83
  store ptr null, ptr %17, align 8, !tbaa !97
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @result_nothing(ptr nocapture readnone %0, ptr nocapture readnone %1) #10 !PGOFuncName !98 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @result_rcti_nothing(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #10 !PGOFuncName !99 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @current_scene_nothing(ptr nocapture readnone %0, ptr nocapture readnone %1) #10 !PGOFuncName !100 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @float_nothing(ptr nocapture readnone %0, float %1) #10 !PGOFuncName !101 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal i32 @default_break(ptr nocapture readnone %0) #12 !PGOFuncName !102 {
  %2 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !103
  %3 = icmp eq i8 %2, 1
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @stats_background(ptr nocapture readnone %0, ptr noundef %1) #0 !PGOFuncName !104 {
  %3 = load ptr, ptr @MEM_get_memory_in_use, align 8, !tbaa !34
  %4 = tail call i64 %3() #24
  %5 = load ptr, ptr @MEM_get_mapped_memory_in_use, align 8, !tbaa !34
  %6 = tail call i64 %5() #24
  %7 = load ptr, ptr @MEM_get_peak_memory, align 8, !tbaa !34
  %8 = tail call i64 %7() #24
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
  %20 = load i32, ptr %1, align 8, !tbaa !105
  %21 = fpext float %12 to double
  %22 = fpext float %15 to double
  %23 = fpext float %18 to double
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.22, i32 noundef %20, double noundef %21, double noundef %22, double noundef %23) #26
  %25 = getelementptr inbounds %struct.RenderStats, ptr %1, i64 0, i32 7
  %26 = load i16, ptr %25, align 4, !tbaa !106
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %2
  %29 = load ptr, ptr @stdout, align 8, !tbaa !34
  %30 = sext i16 %26 to i32
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str.23, i32 noundef %30) #26
  br label %32

32:                                               ; preds = %28, %2
  %33 = getelementptr inbounds %struct.RenderStats, ptr %1, i64 0, i32 8
  %34 = load i16, ptr %33, align 2, !tbaa !107
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr @stdout, align 8, !tbaa !34
  %38 = sext i16 %34 to i32
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef nonnull @.str.24, i32 noundef %38) #26
  br label %40

40:                                               ; preds = %36, %32
  %41 = getelementptr inbounds %struct.RenderStats, ptr %1, i64 0, i32 16
  %42 = load ptr, ptr %41, align 8, !tbaa !108
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr @stdout, align 8, !tbaa !34
  %46 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef nonnull @.str.25, ptr noundef nonnull %42) #26
  br label %63

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.RenderStats, ptr %1, i64 0, i32 4
  %49 = load i32, ptr %48, align 8, !tbaa !109
  %50 = icmp eq i32 %49, 0
  %51 = load ptr, ptr @stdout, align 8, !tbaa !34
  %52 = getelementptr inbounds %struct.RenderStats, ptr %1, i64 0, i32 18
  %53 = getelementptr inbounds %struct.RenderStats, ptr %1, i64 0, i32 2
  %54 = load i32, ptr %53, align 8, !tbaa !110
  %55 = getelementptr inbounds %struct.RenderStats, ptr %1, i64 0, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !111
  %57 = getelementptr inbounds %struct.RenderStats, ptr %1, i64 0, i32 5
  %58 = load i32, ptr %57, align 4, !tbaa !112
  br i1 %50, label %61, label %59

59:                                               ; preds = %47
  %60 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef nonnull @.str.26, ptr noundef nonnull %52, i32 noundef %54, i32 noundef %56, i32 noundef %49, i32 noundef %58) #26
  br label %63

61:                                               ; preds = %47
  %62 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef nonnull @.str.27, ptr noundef nonnull %52, i32 noundef %54, i32 noundef %56, i32 noundef %58) #26
  br label %63

63:                                               ; preds = %59, %61, %44
  %64 = load ptr, ptr @G, align 8, !tbaa !113
  tail call void @BLI_callback_exec(ptr noundef %64, ptr noundef null, i32 noundef 4) #24
  %65 = load ptr, ptr @stdout, align 8, !tbaa !34
  %66 = tail call i32 @fputc(i32 noundef 10, ptr noundef %65) #26
  %67 = load ptr, ptr @stdout, align 8, !tbaa !34
  %68 = tail call i32 @fflush(ptr noundef %67) #26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @stats_nothing(ptr nocapture readnone %0, ptr nocapture readnone %1) #10 !PGOFuncName !114 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_FreeRender(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 51
  %3 = load ptr, ptr %2, align 8, !tbaa !115
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @RE_engine_free(ptr noundef nonnull %3) #24
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  tail call void @BLI_rw_mutex_end(ptr noundef nonnull %7) #24
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 60
  tail call void @BLI_freelistN(ptr noundef nonnull %8) #24
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  tail call void @RE_Database_Free(ptr noundef nonnull %0) #24
  tail call void @free_sample_tables(ptr noundef nonnull %0) #24
  %10 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  tail call void @render_result_free(ptr noundef %11) #24
  %12 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !116
  tail call void @render_result_free(ptr noundef %13) #24
  tail call void @BLI_remlink(ptr noundef nonnull @RenderGlobal, ptr noundef nonnull %0) #24
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 101
  %16 = load ptr, ptr %15, align 8, !tbaa !80
  tail call void %14(ptr noundef %16) #24
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %17(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: optsize
declare void @RE_engine_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_rw_mutex_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RE_Database_Free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @free_sample_tables(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_FreeAllRender() local_unnamed_addr #0 {
  %1 = load ptr, ptr @RenderGlobal, align 8, !tbaa !117
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %0, %3
  %4 = phi ptr [ %5, %3 ], [ %1, %0 ]
  tail call void @RE_FreeRender(ptr noundef nonnull %4) #26
  %5 = load ptr, ptr @RenderGlobal, align 8, !tbaa !117
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %3, !llvm.loop !119

7:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_FreeAllRenderResults() local_unnamed_addr #0 {
  %1 = load ptr, ptr @RenderGlobal, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %0, %3
  %4 = phi ptr [ %9, %3 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.Render, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  tail call void @render_result_free(ptr noundef %6) #24
  %7 = getelementptr inbounds %struct.Render, ptr %4, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !116
  tail call void @render_result_free(ptr noundef %8) #24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %9 = load ptr, ptr %4, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %3, !llvm.loop !120

11:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_FreePersistentData() local_unnamed_addr #0 {
  %1 = load ptr, ptr @RenderGlobal, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %0, %15
  %4 = phi ptr [ %16, %15 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.Render, ptr %4, i64 0, i32 51
  %6 = load ptr, ptr %5, align 8, !tbaa !115
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.RenderEngine, ptr %6, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !121
  %11 = and i32 %10, 16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  tail call void @RE_engine_free(ptr noundef nonnull %6) #24
  br label %14

14:                                               ; preds = %13, %8
  store ptr null, ptr %5, align 8, !tbaa !115
  br label %15

15:                                               ; preds = %3, %14
  %16 = load ptr, ptr %4, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %3, !llvm.loop !123

18:                                               ; preds = %15, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_InitState(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %10 = load i32, ptr %9, align 8, !tbaa !124
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 6
  store i16 1, ptr %11, align 4, !tbaa !125
  %12 = tail call double @PIL_check_seconds_timer() #24
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 14
  store double %12, ptr %13, align 8, !tbaa !126
  %14 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 60
  tail call void @BLI_freelistN(ptr noundef nonnull %14) #24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3984) %8, ptr noundef nonnull align 8 dereferenceable(3984) %2, i64 3984, i1 false), !tbaa.struct !127
  %15 = getelementptr inbounds %struct.RenderData, ptr %2, i64 0, i32 60
  tail call void @BLI_duplicatelist(ptr noundef nonnull %14, ptr noundef nonnull %15) #24
  %16 = icmp eq ptr %1, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %7
  %18 = load i32, ptr %9, align 8, !tbaa !124
  %19 = and i32 %18, -2561
  store i32 %19, ptr %9, align 8, !tbaa !124
  %20 = getelementptr inbounds %struct.Render, ptr %1, i64 0, i32 45, i32 47
  %21 = load i32, ptr %20, align 8, !tbaa !124
  %22 = and i32 %21, 2560
  %23 = or disjoint i32 %22, %19
  store i32 %23, ptr %9, align 8, !tbaa !124
  %24 = getelementptr inbounds %struct.Render, ptr %1, i64 0, i32 45, i32 33
  %25 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 33
  %26 = load <2 x i32>, ptr %24, align 4, !tbaa !67
  store <2 x i32> %26, ptr %25, align 4, !tbaa !67
  %27 = getelementptr inbounds %struct.Render, ptr %1, i64 0, i32 45, i32 30
  %28 = load i16, ptr %27, align 2, !tbaa !131
  %29 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 30
  store i16 %28, ptr %29, align 2, !tbaa !131
  br label %30

30:                                               ; preds = %17, %7
  tail call fastcc void @re_init_resolution(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %4, i32 noundef %5, ptr noundef %6) #26
  %31 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 20
  %32 = load i32, ptr %31, align 8, !tbaa !78
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %48, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 21
  %36 = load i32, ptr %35, align 4, !tbaa !79
  %37 = icmp slt i32 %36, 1
  br i1 %37, label %48, label %38

38:                                               ; preds = %34
  %39 = load i8, ptr %2, align 8, !tbaa !132
  %40 = tail call zeroext i8 @BKE_imtype_is_movie(i8 noundef zeroext %39) #24
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %38
  %43 = load i32, ptr %31, align 8, !tbaa !78
  %44 = icmp slt i32 %43, 16
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, ptr %35, align 4, !tbaa !79
  %47 = icmp slt i32 %46, 16
  br i1 %47, label %48, label %51

48:                                               ; preds = %45, %42, %34, %30
  %49 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 99
  %50 = load ptr, ptr %49, align 8, !tbaa !133
  tail call void @BKE_report(ptr noundef %50, i32 noundef 32, ptr noundef nonnull @.str.2) #24
  store i16 0, ptr %11, align 4, !tbaa !125
  br label %159

51:                                               ; preds = %45, %38
  %52 = tail call fastcc i32 @check_mode_full_sample(ptr noundef nonnull %8) #26, !range !134
  %53 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  store i32 %52, ptr %53, align 4, !tbaa !135
  %54 = and i32 %52, 32768
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %16, i1 true, i1 %55
  br i1 %56, label %69, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.Render, ptr %1, i64 0, i32 45, i32 46
  %59 = load i32, ptr %58, align 4, !tbaa !135
  %60 = and i32 %59, 32768
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = and i32 %52, -32769
  store i32 %63, ptr %53, align 4, !tbaa !135
  br label %80

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.Render, ptr %1, i64 0, i32 5
  %66 = load i16, ptr %65, align 2, !tbaa !136
  %67 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 5
  store i16 %66, ptr %67, align 2, !tbaa !136
  %68 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 54
  store i16 %66, ptr %68, align 2, !tbaa !137
  br label %80

69:                                               ; preds = %51
  %70 = load i32, ptr %9, align 8, !tbaa !124
  %71 = and i32 %70, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 54
  %75 = load i16, ptr %74, align 2, !tbaa !137
  %76 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 5
  %77 = tail call i16 @llvm.smin.i16(i16 %75, i16 16)
  store i16 %77, ptr %76, align 2
  br label %80

78:                                               ; preds = %69
  %79 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 5
  store i16 0, ptr %79, align 2, !tbaa !136
  br label %80

80:                                               ; preds = %73, %78, %62, %64
  %81 = icmp eq ptr %3, null
  br i1 %81, label %90, label %82

82:                                               ; preds = %80
  %83 = tail call i32 @BLI_findindex(ptr noundef nonnull %15, ptr noundef nonnull %3) #24
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %90, label %85

85:                                               ; preds = %82
  %86 = trunc i32 %83 to i16
  %87 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 61
  store i16 %86, ptr %87, align 8, !tbaa !44
  %88 = load i32, ptr %53, align 4, !tbaa !135
  %89 = or i32 %88, 512
  store i32 %89, ptr %53, align 4, !tbaa !135
  br label %90

90:                                               ; preds = %82, %85, %80
  tail call void @make_sample_tables(ptr noundef nonnull %0) #24
  %91 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull %91, i32 noundef 2) #24
  %92 = load i32, ptr %53, align 4, !tbaa !135
  %93 = and i32 %92, 524296
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %144, label %95

95:                                               ; preds = %90
  %96 = and i32 %10, 33554432
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i32, ptr %9, align 8, !tbaa !124
  %100 = and i32 %99, 33554432
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %98, %95
  %103 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %104 = load ptr, ptr %103, align 8, !tbaa !65
  tail call void @render_result_free(ptr noundef %104) #24
  store ptr null, ptr %103, align 8, !tbaa !65
  br label %151

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %107 = load ptr, ptr %106, align 8, !tbaa !65
  %108 = icmp eq ptr %107, null
  br i1 %108, label %151, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 61
  %111 = load i16, ptr %110, align 8, !tbaa !44
  %112 = sext i16 %111 to i32
  %113 = tail call ptr @BLI_findlink(ptr noundef nonnull %14, i32 noundef %112) #24
  %114 = load ptr, ptr %106, align 8, !tbaa !65
  %115 = getelementptr inbounds %struct.RenderResult, ptr %114, i64 0, i32 12
  %116 = load ptr, ptr %115, align 8, !tbaa !34
  %117 = icmp eq ptr %116, null
  br i1 %117, label %131, label %118

118:                                              ; preds = %109
  %119 = getelementptr inbounds %struct.SceneRenderLayer, ptr %113, i64 0, i32 2
  br label %120

120:                                              ; preds = %118, %120
  %121 = phi ptr [ %116, %118 ], [ %127, %120 ]
  %122 = phi i8 [ 0, %118 ], [ %126, %120 ]
  %123 = getelementptr inbounds %struct.RenderLayer, ptr %121, i64 0, i32 2
  %124 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %123, ptr noundef nonnull dereferenceable(1) %119) #25
  %125 = icmp eq i32 %124, 0
  %126 = select i1 %125, i8 1, i8 %122
  %127 = load ptr, ptr %121, align 8, !tbaa !34
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %120, !llvm.loop !138

129:                                              ; preds = %120
  %130 = icmp ne i8 %126, 0
  br label %131

131:                                              ; preds = %129, %109
  %132 = phi i1 [ false, %109 ], [ %130, %129 ]
  %133 = getelementptr inbounds %struct.RenderResult, ptr %114, i64 0, i32 2
  %134 = load i32, ptr %133, align 8, !tbaa !139
  %135 = load i32, ptr %31, align 8, !tbaa !78
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %131
  %138 = getelementptr inbounds %struct.RenderResult, ptr %114, i64 0, i32 3
  %139 = load i32, ptr %138, align 4, !tbaa !140
  %140 = load i32, ptr %35, align 4, !tbaa !79
  %141 = icmp eq i32 %139, %140
  %142 = select i1 %141, i1 %132, i1 false
  br i1 %142, label %151, label %143

143:                                              ; preds = %137, %131
  tail call void @render_result_free(ptr noundef nonnull %114) #24
  store ptr null, ptr %106, align 8, !tbaa !65
  br label %151

144:                                              ; preds = %90
  %145 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %146 = load ptr, ptr %145, align 8, !tbaa !65
  tail call void @render_result_free(ptr noundef %146) #24
  %147 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %148 = tail call ptr %147(i64 noundef 144, ptr noundef nonnull @.str.3) #24
  store ptr %148, ptr %145, align 8, !tbaa !65
  %149 = getelementptr inbounds %struct.RenderResult, ptr %148, i64 0, i32 2
  %150 = load <2 x i32>, ptr %31, align 8, !tbaa !67
  store <2 x i32> %150, ptr %149, align 8, !tbaa !67
  br label %151

151:                                              ; preds = %143, %137, %102, %105, %144
  %152 = load i32, ptr %53, align 4, !tbaa !135
  %153 = and i32 %152, 524288
  %154 = icmp eq i32 %153, 0
  %155 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 101
  %156 = load ptr, ptr %155, align 8, !tbaa !80
  %157 = select i1 %154, i32 2, i32 1
  store i32 %157, ptr %156, align 4, !tbaa !81
  tail call void @RE_parts_clamp(ptr noundef nonnull %0) #24
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull %91) #24
  %158 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 58
  store <2 x float> zeroinitializer, ptr %158, align 8, !tbaa !130
  tail call void @RE_init_threadcount(ptr noundef nonnull %0) #26
  br label %159

159:                                              ; preds = %151, %48
  ret void
}

; Function Attrs: optsize
declare double @PIL_check_seconds_timer() local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @re_init_resolution(ptr nocapture noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef readonly %4) unnamed_addr #6 !PGOFuncName !141 {
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  store i32 %2, ptr %6, align 4, !tbaa !142
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  store i32 %3, ptr %7, align 8, !tbaa !143
  %8 = icmp eq ptr %1, null
  br i1 %8, label %29, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Render, ptr %1, i64 0, i32 45, i32 47
  %11 = load i32, ptr %10, align 8, !tbaa !124
  %12 = and i32 %11, 512
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.Render, ptr %1, i64 0, i32 45, i32 58
  %16 = insertelement <2 x i32> poison, i32 %2, i64 0
  %17 = insertelement <2 x i32> %16, i32 %3, i64 1
  %18 = sitofp <2 x i32> %17 to <2 x float>
  %19 = shufflevector <2 x float> %18, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %20 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  %21 = load <4 x float>, ptr %15, align 8, !tbaa !130
  %22 = fmul <4 x float> %21, %19
  %23 = fptosi <4 x float> %22 to <4 x i32>
  store <4 x i32> %23, ptr %20, align 4, !tbaa !67
  %24 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %20) #26
  %25 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 20
  store i32 %24, ptr %25, align 8, !tbaa !78
  %26 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %20) #26
  %27 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 21
  store i32 %26, ptr %27, align 4, !tbaa !79
  %28 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 58
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(16) %15, i64 16, i1 false), !tbaa.struct !144
  br label %43

29:                                               ; preds = %9, %5
  %30 = icmp eq ptr %4, null
  %31 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  br i1 %30, label %37, label %32

32:                                               ; preds = %29
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %31, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !145
  %33 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %31) #26
  %34 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 20
  store i32 %33, ptr %34, align 8, !tbaa !78
  %35 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %31) #26
  %36 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 21
  store i32 %35, ptr %36, align 4, !tbaa !79
  br label %43

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 2
  store i32 0, ptr %38, align 4, !tbaa !76
  store i32 0, ptr %31, align 4, !tbaa !74
  %39 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 1
  store i32 %2, ptr %39, align 4, !tbaa !146
  %40 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 3
  store i32 %3, ptr %40, align 4, !tbaa !147
  %41 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 20
  store i32 %2, ptr %41, align 8, !tbaa !78
  %42 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 21
  store i32 %3, ptr %42, align 4, !tbaa !79
  br label %43

43:                                               ; preds = %32, %37, %14
  %44 = tail call i32 @llvm.smin.i32(i32 %2, i32 %3)
  %45 = sitofp i32 %44 to float
  %46 = fdiv float 2.000000e+00, %45
  %47 = fadd float %46, 1.000000e+00
  %48 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 19
  store float %47, ptr %48, align 4, !tbaa !148
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BKE_imtype_is_movie(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @check_mode_full_sample(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !149 {
  %2 = getelementptr inbounds %struct.RenderData, ptr %0, i64 0, i32 46
  %3 = load i32, ptr %2, align 4, !tbaa !150
  %4 = and i32 %3, -33793
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @make_sample_tables(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @RE_parts_clamp(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_init_threadcount(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45
  %3 = tail call i32 @BKE_render_num_threads(ptr noundef nonnull %2) #24
  %4 = trunc i32 %3 to i16
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 14
  store i16 %4, ptr %5, align 2, !tbaa !151
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_ChangeResolution(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  tail call fastcc void @re_init_resolution(ptr noundef %0, ptr noundef null, i32 noundef %1, i32 noundef %2, ptr noundef %3) #26
  tail call void @RE_parts_clamp(ptr noundef %0) #24
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull %9, i32 noundef 2) #24
  tail call fastcc void @render_result_rescale(ptr noundef nonnull %0) #26
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull %9) #24
  br label %10

10:                                               ; preds = %8, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @render_result_rescale(ptr noundef %0) unnamed_addr #0 !PGOFuncName !152 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct.RenderResult, ptr %3, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = tail call ptr @render_get_active_layer(ptr noundef nonnull %0, ptr noundef nonnull %3) #26
  %9 = icmp eq ptr %8, null
  br i1 %9, label %87, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.RenderLayer, ptr %8, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !70
  %13 = icmp eq ptr %12, null
  br i1 %13, label %87, label %14

14:                                               ; preds = %1, %10
  %15 = phi ptr [ %12, %10 ], [ %5, %1 ]
  %16 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  %17 = tail call ptr @render_result_new(ptr noundef nonnull %0, ptr noundef nonnull %16, i32 noundef 0, i32 noundef 0, ptr noundef null) #24
  store ptr %17, ptr %2, align 8, !tbaa !65
  %18 = icmp eq ptr %17, null
  br i1 %18, label %87, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.RenderResult, ptr %17, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !69
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = tail call ptr @render_get_active_layer(ptr noundef nonnull %0, ptr noundef nonnull %17) #26
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.RenderLayer, ptr %24, i64 0, i32 11
  %28 = load ptr, ptr %27, align 8, !tbaa !70
  br label %29

29:                                               ; preds = %23, %26, %19
  %30 = phi ptr [ %21, %19 ], [ %28, %26 ], [ null, %23 ]
  %31 = getelementptr inbounds %struct.RenderResult, ptr %3, i64 0, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !139
  %33 = sitofp i32 %32 to float
  %34 = load ptr, ptr %2, align 8, !tbaa !65
  %35 = getelementptr inbounds %struct.RenderResult, ptr %34, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !139
  %37 = sitofp i32 %36 to float
  %38 = fdiv float %33, %37
  %39 = getelementptr inbounds %struct.RenderResult, ptr %3, i64 0, i32 3
  %40 = load i32, ptr %39, align 4, !tbaa !140
  %41 = sitofp i32 %40 to float
  %42 = getelementptr inbounds %struct.RenderResult, ptr %34, i64 0, i32 3
  %43 = load i32, ptr %42, align 4, !tbaa !140
  %44 = sitofp i32 %43 to float
  %45 = fdiv float %41, %44
  %46 = icmp sgt i32 %36, 0
  br i1 %46, label %47, label %87

47:                                               ; preds = %29, %81
  %48 = phi ptr [ %82, %81 ], [ %34, %29 ]
  %49 = phi i32 [ %83, %81 ], [ 0, %29 ]
  %50 = getelementptr inbounds %struct.RenderResult, ptr %48, i64 0, i32 3
  %51 = load i32, ptr %50, align 4, !tbaa !140
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %81

53:                                               ; preds = %47
  %54 = sitofp i32 %49 to float
  %55 = fmul float %38, %54
  %56 = fptosi float %55 to i32
  br label %57

57:                                               ; preds = %53, %57
  %58 = phi ptr [ %48, %53 ], [ %77, %57 ]
  %59 = phi i32 [ 0, %53 ], [ %76, %57 ]
  %60 = sitofp i32 %59 to float
  %61 = fmul float %45, %60
  %62 = fptosi float %61 to i32
  %63 = getelementptr inbounds %struct.RenderResult, ptr %58, i64 0, i32 2
  %64 = load i32, ptr %63, align 8, !tbaa !139
  %65 = mul nsw i32 %64, %59
  %66 = add nsw i32 %65, %49
  %67 = load i32, ptr %31, align 8, !tbaa !139
  %68 = mul nsw i32 %67, %62
  %69 = add nsw i32 %68, %56
  %70 = shl nsw i32 %66, 2
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds float, ptr %30, i64 %71
  %73 = shl nsw i32 %69, 2
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds float, ptr %15, i64 %74
  tail call fastcc void @copy_v4_v4(ptr noundef %72, ptr noundef nonnull %75) #26
  %76 = add nuw nsw i32 %59, 1
  %77 = load ptr, ptr %2, align 8, !tbaa !65
  %78 = getelementptr inbounds %struct.RenderResult, ptr %77, i64 0, i32 3
  %79 = load i32, ptr %78, align 4, !tbaa !140
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %57, label %81, !llvm.loop !153

81:                                               ; preds = %57, %47
  %82 = phi ptr [ %48, %47 ], [ %77, %57 ]
  %83 = add nuw nsw i32 %49, 1
  %84 = getelementptr inbounds %struct.RenderResult, ptr %82, i64 0, i32 2
  %85 = load i32, ptr %84, align 8, !tbaa !139
  %86 = icmp slt i32 %83, %85
  br i1 %86, label %47, label %87, !llvm.loop !154

87:                                               ; preds = %81, %29, %7, %14, %10
  tail call void @render_result_free(ptr noundef %3) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @RE_ChangeModeFlag(ptr nocapture noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #6 {
  %4 = icmp eq i8 %2, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = xor i32 %1, -1
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %8 = load i32, ptr %7, align 8, !tbaa !124
  %9 = and i32 %8, %6
  store i32 %9, ptr %7, align 8, !tbaa !124
  br label %14

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %12 = load i32, ptr %11, align 8, !tbaa !124
  %13 = or i32 %12, %1
  store i32 %13, ptr %11, align 8, !tbaa !124
  br label %14

14:                                               ; preds = %10, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @render_update_anim_renderdata(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.RenderData, ptr %1, i64 0, i32 66
  %4 = load float, ptr %3, align 8, !tbaa !155
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 66
  store float %4, ptr %5, align 8, !tbaa !156
  %6 = getelementptr inbounds %struct.RenderData, ptr %1, i64 0, i32 62
  %7 = load i16, ptr %6, align 2, !tbaa !157
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 62
  store i16 %7, ptr %8, align 2, !tbaa !158
  %9 = getelementptr inbounds %struct.RenderData, ptr %1, i64 0, i32 16
  %10 = load float, ptr %9, align 8, !tbaa !159
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 16
  store float %10, ptr %11, align 8, !tbaa !160
  %12 = getelementptr inbounds %struct.RenderData, ptr %1, i64 0, i32 113
  %13 = load i32, ptr %12, align 8, !tbaa !161
  %14 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 113
  store i32 %13, ptr %14, align 8, !tbaa !162
  %15 = getelementptr inbounds %struct.RenderData, ptr %1, i64 0, i32 114
  %16 = load float, ptr %15, align 4, !tbaa !163
  %17 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 114
  store float %16, ptr %17, align 4, !tbaa !164
  %18 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 60
  tail call void @BLI_freelistN(ptr noundef nonnull %18) #24
  %19 = getelementptr inbounds %struct.RenderData, ptr %1, i64 0, i32 60
  tail call void @BLI_duplicatelist(ptr noundef nonnull %18, ptr noundef nonnull %19) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_SetWindow(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !144
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 36
  store float %2, ptr %6, align 8, !tbaa !165
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 37
  store float %3, ptr %7, align 4, !tbaa !166
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %9 = load i32, ptr %8, align 8, !tbaa !124
  %10 = and i32 %9, -9
  store i32 %10, ptr %8, align 8, !tbaa !124
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35
  %12 = load float, ptr %5, align 4, !tbaa !167
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 16, i32 1
  %14 = load float, ptr %13, align 4, !tbaa !168
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 16, i32 2
  %16 = load float, ptr %15, align 4, !tbaa !169
  %17 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 16, i32 3
  %18 = load float, ptr %17, align 4, !tbaa !170
  tail call void @perspective_m4(ptr noundef nonnull %11, float noundef %12, float noundef %14, float noundef %16, float noundef %18, float noundef %2, float noundef %3) #24
  ret void
}

; Function Attrs: optsize
declare void @perspective_m4(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_SetOrtho(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !144
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 36
  store float %2, ptr %6, align 8, !tbaa !165
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 37
  store float %3, ptr %7, align 4, !tbaa !166
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %9 = load i32, ptr %8, align 8, !tbaa !124
  %10 = or i32 %9, 8
  store i32 %10, ptr %8, align 8, !tbaa !124
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35
  %12 = load float, ptr %5, align 4, !tbaa !167
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 16, i32 1
  %14 = load float, ptr %13, align 4, !tbaa !168
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 16, i32 2
  %16 = load float, ptr %15, align 4, !tbaa !169
  %17 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 16, i32 3
  %18 = load float, ptr %17, align 4, !tbaa !170
  tail call void @orthographic_m4(ptr noundef nonnull %11, float noundef %12, float noundef %14, float noundef %16, float noundef %18, float noundef %2, float noundef %3) #24
  ret void
}

; Function Attrs: optsize
declare void @orthographic_m4(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_SetView(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  tail call void @copy_m4_m4(ptr noundef nonnull %3, ptr noundef %1) #24
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 33
  %5 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %3) #24
  ret void
}

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_GetViewPlane(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !144
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %6 = load i32, ptr %5, align 8, !tbaa !124
  %7 = and i32 %6, 512
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !145
  br label %12

11:                                               ; preds = %3
  tail call void @BLI_rcti_init(ptr noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #24
  br label %12

12:                                               ; preds = %11, %9
  ret void
}

; Function Attrs: optsize
declare void @BLI_rcti_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_GetView(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  tail call void @copy_m4_m4(ptr noundef %1, ptr noundef nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @RE_display_init_cb(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #13 {
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 82
  store ptr %2, ptr %4, align 8, !tbaa !84
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 83
  store ptr %1, ptr %5, align 8, !tbaa !97
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @RE_display_clear_cb(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #13 {
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 84
  store ptr %2, ptr %4, align 8, !tbaa !85
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 85
  store ptr %1, ptr %5, align 8, !tbaa !96
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @RE_display_update_cb(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #13 {
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 86
  store ptr %2, ptr %4, align 8, !tbaa !86
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 87
  store ptr %1, ptr %5, align 8, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @RE_current_scene_update_cb(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #13 {
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 88
  store ptr %2, ptr %4, align 8, !tbaa !87
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 89
  store ptr %1, ptr %5, align 8, !tbaa !171
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @RE_stats_draw_cb(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #13 {
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 90
  store ptr %2, ptr %4, align 8, !tbaa !172
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 91
  store ptr %1, ptr %5, align 8, !tbaa !94
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @RE_progress_cb(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #13 {
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 92
  store ptr %2, ptr %4, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 93
  store ptr %1, ptr %5, align 8, !tbaa !93
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @RE_draw_lock_cb(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #13 {
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 94
  store ptr %2, ptr %4, align 8, !tbaa !173
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 95
  store ptr %1, ptr %5, align 8, !tbaa !174
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @RE_test_break_cb(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #13 {
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  store ptr %2, ptr %4, align 8, !tbaa !89
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  store ptr %1, ptr %5, align 8, !tbaa !92
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @panorama_pixel_rot(ptr nocapture noundef readonly %0) local_unnamed_addr #14 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  %3 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %2) #26
  %4 = sitofp i32 %3 to float
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %6 = load i32, ptr %5, align 4, !tbaa !142
  %7 = sitofp i32 %6 to float
  %8 = fdiv float %4, %7
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 20
  %10 = load i32, ptr %9, align 8, !tbaa !78
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 22
  %12 = load i32, ptr %11, align 8, !tbaa !175
  %13 = add i32 %10, -1
  %14 = add i32 %13, %12
  %15 = sdiv i32 %14, %12
  %16 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 16
  %17 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %16) #26
  %18 = fdiv float %17, %7
  %19 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 36
  %20 = load float, ptr %19, align 8, !tbaa !165
  %21 = fdiv float %18, %20
  %22 = fpext float %21 to double
  %23 = tail call double @atan(double noundef %22) #24
  %24 = fptrunc double %23 to float
  %25 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %16) #26
  %26 = fmul float %8, %25
  %27 = sitofp i32 %15 to float
  %28 = fdiv float %26, %27
  %29 = fmul float %28, 5.000000e-01
  %30 = load float, ptr %19, align 8, !tbaa !165
  %31 = fdiv float %29, %30
  %32 = fpext float %31 to double
  %33 = tail call double @atan(double noundef %32) #24
  %34 = fptrunc double %33 to float
  %35 = fmul float %24, 5.000000e-01
  %36 = load i32, ptr %11, align 8, !tbaa !175
  %37 = sitofp i32 %36 to float
  %38 = fmul float %35, %37
  %39 = fdiv float %34, %38
  %40 = fmul float %39, %24
  ret float %40
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !176 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !177
  %4 = load i32, ptr %0, align 4, !tbaa !178
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !179 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !180
  %4 = load float, ptr %0, align 4, !tbaa !181
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @atan(double noundef) local_unnamed_addr #15

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_TileProcessor(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @threaded_tile_processor(ptr noundef %0) #26
  %2 = tail call double @PIL_check_seconds_timer() #24
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 14
  %5 = load double, ptr %4, align 8, !tbaa !126
  %6 = fsub double %2, %5
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 15
  store double %6, ptr %7, align 8, !tbaa !182
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 90
  %9 = load ptr, ptr %8, align 8, !tbaa !172
  %10 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 91
  %11 = load ptr, ptr %10, align 8, !tbaa !94
  tail call void %9(ptr noundef %11, ptr noundef nonnull %3) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @threaded_tile_processor(ptr noundef %0) unnamed_addr #0 !PGOFuncName !183 {
  %2 = alloca [1 x %struct.RenderThread], align 16
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.rctf, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #27
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !144
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #27
  store i32 0, ptr %5, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  store i32 0, ptr %6, align 4, !tbaa !67
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull %8, i32 noundef 2) #24
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !65
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %14 = load i32, ptr %13, align 4, !tbaa !135
  %15 = and i32 %14, 524296
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %12, %1
  tail call void @render_result_free(ptr noundef %10) #24
  %18 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 75
  %19 = load ptr, ptr %18, align 8, !tbaa !184
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %17
  %22 = tail call fastcc i32 @render_display_update_enabled(ptr noundef nonnull %0) #26, !range !185
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  %26 = tail call ptr @render_result_new(ptr noundef nonnull %0, ptr noundef nonnull %25, i32 noundef 0, i32 noundef 0, ptr noundef null) #24
  br label %41

27:                                               ; preds = %21, %17
  %28 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %29 = load i32, ptr %28, align 4, !tbaa !135
  %30 = and i32 %29, 32768
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 11
  %34 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  %35 = tail call ptr @render_result_new_full_sample(ptr noundef nonnull %0, ptr noundef nonnull %33, ptr noundef nonnull %34, i32 noundef 0, i32 noundef 1) #24
  br label %41

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  %38 = lshr i32 %29, 10
  %39 = and i32 %38, 1
  %40 = tail call ptr @render_result_new(ptr noundef nonnull %0, ptr noundef nonnull %37, i32 noundef 0, i32 noundef %39, ptr noundef null) #24
  br label %41

41:                                               ; preds = %32, %36, %24
  %42 = phi ptr [ %26, %24 ], [ %40, %36 ], [ %35, %32 ]
  store ptr %42, ptr %9, align 8, !tbaa !65
  br label %43

43:                                               ; preds = %41, %12
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull %8) #24
  %44 = load ptr, ptr %9, align 8, !tbaa !65
  %45 = icmp eq ptr %44, null
  br i1 %45, label %209, label %46

46:                                               ; preds = %43
  tail call void @RE_parts_init(ptr noundef nonnull %0, i8 noundef zeroext 1) #24
  %47 = load ptr, ptr %9, align 8, !tbaa !65
  %48 = getelementptr inbounds %struct.RenderResult, ptr %47, i64 0, i32 15
  %49 = load i32, ptr %48, align 8, !tbaa !186
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  tail call void @render_result_exr_file_begin(ptr noundef nonnull %0) #24
  br label %52

52:                                               ; preds = %51, %46
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6240) @R, ptr noundef nonnull align 8 dereferenceable(6240) %0, i64 6240, i1 false), !tbaa.struct !187
  store ptr @thread_break, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 96), align 8, !tbaa !89
  %53 = tail call ptr @BLI_thread_queue_init() #24
  %54 = tail call ptr @BLI_thread_queue_init() #24
  %55 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 14
  %56 = getelementptr inbounds [1 x %struct.RenderThread], ptr %2, i64 0, i64 0, i32 1
  %57 = getelementptr inbounds [1 x %struct.RenderThread], ptr %2, i64 0, i64 0, i32 2
  %58 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 86
  %59 = getelementptr inbounds [1 x %struct.RenderThread], ptr %2, i64 0, i64 0, i32 3
  %60 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 87
  %61 = getelementptr inbounds [1 x %struct.RenderThread], ptr %2, i64 0, i64 0, i32 4
  %62 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 10
  %63 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 92
  %64 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 93
  %65 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 6
  %66 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %67 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %68 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 50
  br label %69

69:                                               ; preds = %175, %52
  %70 = phi i32 [ 0, %52 ], [ %137, %175 ]
  %71 = call fastcc zeroext i8 @find_next_pano_slice(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %4) #26, !range !189
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %180, label %73

73:                                               ; preds = %69
  %74 = load i32, ptr %5, align 4, !tbaa !67
  %75 = call fastcc ptr @find_next_part(ptr noundef nonnull %0, i32 noundef %74) #26
  %76 = icmp eq ptr %75, null
  br i1 %76, label %84, label %77

77:                                               ; preds = %73, %77
  %78 = phi ptr [ %82, %77 ], [ %75, %73 ]
  %79 = phi i32 [ %80, %77 ], [ %70, %73 ]
  %80 = add nsw i32 %79, 1
  %81 = getelementptr inbounds %struct.RenderPart, ptr %78, i64 0, i32 16
  store i32 %80, ptr %81, align 8, !tbaa !190
  call void @BLI_thread_queue_push(ptr noundef %53, ptr noundef nonnull %78) #24
  %82 = call fastcc ptr @find_next_part(ptr noundef %0, i32 noundef %74) #26
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %77, !llvm.loop !192

84:                                               ; preds = %77, %73
  %85 = phi i32 [ %70, %73 ], [ %80, %77 ]
  call void @BLI_thread_queue_nowait(ptr noundef %53) #24
  %86 = load i16, ptr %55, align 2, !tbaa !151
  %87 = sext i16 %86 to i32
  call void @BLI_init_threads(ptr noundef nonnull %3, ptr noundef nonnull @do_render_thread, i32 noundef %87) #24
  %88 = load i16, ptr %55, align 2, !tbaa !151
  %89 = icmp sgt i16 %88, 0
  br i1 %89, label %90, label %106

90:                                               ; preds = %84, %100
  %91 = phi i64 [ %102, %100 ], [ 0, %84 ]
  %92 = getelementptr inbounds [1 x %struct.RenderThread], ptr %2, i64 0, i64 %91
  store ptr %53, ptr %2, align 16, !tbaa !193
  store ptr %54, ptr %56, align 8, !tbaa !195
  %93 = trunc i64 %91 to i32
  store i32 %93, ptr %57, align 16, !tbaa !196
  %94 = call fastcc i32 @render_display_update_enabled(ptr noundef nonnull %0) #26, !range !185
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %90
  %97 = load ptr, ptr %58, align 8, !tbaa !86
  store ptr %97, ptr %59, align 8, !tbaa !197
  %98 = load ptr, ptr %60, align 8, !tbaa !95
  br label %100

99:                                               ; preds = %90
  store ptr null, ptr %59, align 8, !tbaa !197
  br label %100

100:                                              ; preds = %99, %96
  %101 = phi ptr [ %98, %96 ], [ null, %99 ]
  store ptr %101, ptr %61, align 16, !tbaa !198
  call void @BLI_insert_thread(ptr noundef nonnull %3, ptr noundef nonnull %92) #24
  %102 = add nuw nsw i64 %91, 1
  %103 = load i16, ptr %55, align 2, !tbaa !151
  %104 = sext i16 %103 to i64
  %105 = icmp slt i64 %102, %104
  br i1 %105, label %90, label %106, !llvm.loop !199

106:                                              ; preds = %100, %84
  br label %107

107:                                              ; preds = %154, %106
  %108 = phi i32 [ %85, %106 ], [ %137, %154 ]
  %109 = call double @PIL_check_seconds_timer() #24
  br label %110

110:                                              ; preds = %107, %144
  %111 = phi i32 [ %137, %144 ], [ %108, %107 ]
  %112 = call double @PIL_check_seconds_timer() #24
  %113 = fsub double %109, %112
  %114 = fadd double %113, 1.000000e+00
  %115 = fmul double %114, 1.000000e+03
  %116 = fptosi double %115 to i32
  %117 = call ptr @BLI_thread_queue_pop_timeout(ptr noundef %54, i32 noundef %116) #24
  %118 = icmp eq ptr %117, null
  br i1 %118, label %136, label %119

119:                                              ; preds = %110
  %120 = getelementptr inbounds %struct.RenderPart, ptr %117, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !200
  %122 = icmp eq ptr %121, null
  br i1 %122, label %134, label %123

123:                                              ; preds = %119
  call fastcc void @print_part_stats(ptr noundef %0, ptr noundef nonnull %117) #26
  %124 = getelementptr inbounds %struct.RenderPart, ptr %117, i64 0, i32 3
  %125 = load ptr, ptr %120, align 8, !tbaa !200
  call void @render_result_free_list(ptr noundef nonnull %124, ptr noundef %125) #24
  store ptr null, ptr %120, align 8, !tbaa !200
  %126 = load i16, ptr %62, align 2, !tbaa !201
  %127 = add i16 %126, 1
  store i16 %127, ptr %62, align 2, !tbaa !201
  %128 = load ptr, ptr %63, align 8, !tbaa !88
  %129 = load ptr, ptr %64, align 8, !tbaa !93
  %130 = sitofp i16 %127 to float
  %131 = load i32, ptr %65, align 8, !tbaa !202
  %132 = sitofp i32 %131 to float
  %133 = fdiv float %130, %132
  call void %128(ptr noundef %129, float noundef %133) #24
  br label %134

134:                                              ; preds = %123, %119
  %135 = add nsw i32 %111, -1
  br label %136

136:                                              ; preds = %134, %110
  %137 = phi i32 [ %135, %134 ], [ %111, %110 ]
  %138 = load ptr, ptr %66, align 8, !tbaa !89
  %139 = load ptr, ptr %67, align 8, !tbaa !92
  %140 = call i32 %138(ptr noundef %139) #24
  store volatile i32 %140, ptr @g_break, align 4, !tbaa !67
  %141 = icmp ne i32 %140, 0
  %142 = icmp eq i32 %137, 0
  %143 = select i1 %141, i1 true, i1 %142
  br i1 %143, label %175, label %144

144:                                              ; preds = %136
  %145 = call double @PIL_check_seconds_timer() #24
  %146 = fsub double %145, %109
  %147 = fcmp ogt double %146, 1.000000e+00
  br i1 %147, label %148, label %110

148:                                              ; preds = %144
  %149 = call fastcc i32 @render_display_update_enabled(ptr noundef nonnull %0) #26, !range !185
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %148
  %152 = load ptr, ptr %68, align 8, !tbaa !34
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %155

154:                                              ; preds = %172, %151, %148
  br label %107

155:                                              ; preds = %151, %172
  %156 = phi ptr [ %173, %172 ], [ %152, %151 ]
  %157 = getelementptr inbounds %struct.RenderPart, ptr %156, i64 0, i32 18
  %158 = load i16, ptr %157, align 2, !tbaa !203
  %159 = icmp eq i16 %158, 1
  br i1 %159, label %160, label %172

160:                                              ; preds = %155
  %161 = getelementptr inbounds %struct.RenderPart, ptr %156, i64 0, i32 16
  %162 = load i32, ptr %161, align 8, !tbaa !190
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %172, label %164

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.RenderPart, ptr %156, i64 0, i32 2
  %166 = load ptr, ptr %165, align 8, !tbaa !200
  %167 = icmp eq ptr %166, null
  br i1 %167, label %172, label %168

168:                                              ; preds = %164
  %169 = load ptr, ptr %58, align 8, !tbaa !86
  %170 = load ptr, ptr %60, align 8, !tbaa !95
  %171 = getelementptr inbounds %struct.RenderResult, ptr %166, i64 0, i32 13
  call void %169(ptr noundef %170, ptr noundef nonnull %166, ptr noundef nonnull %171) #24
  br label %172

172:                                              ; preds = %155, %160, %164, %168
  %173 = load ptr, ptr %156, align 8, !tbaa !34
  %174 = icmp eq ptr %173, null
  br i1 %174, label %154, label %155, !llvm.loop !204

175:                                              ; preds = %136
  call void @BLI_end_threads(ptr noundef nonnull %3) #24
  %176 = load ptr, ptr %66, align 8, !tbaa !89
  %177 = load ptr, ptr %67, align 8, !tbaa !92
  %178 = call i32 %176(ptr noundef %177) #24
  store volatile i32 %178, ptr @g_break, align 4, !tbaa !67
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %69, label %180, !llvm.loop !205

180:                                              ; preds = %175, %69
  %181 = load volatile i32, ptr @g_break, align 4, !tbaa !67
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %196, label %183

183:                                              ; preds = %180
  call void @BLI_thread_queue_nowait(ptr noundef %54) #24
  %184 = call ptr @BLI_thread_queue_pop(ptr noundef %54) #24
  %185 = icmp eq ptr %184, null
  br i1 %185, label %196, label %186

186:                                              ; preds = %183, %193
  %187 = phi ptr [ %194, %193 ], [ %184, %183 ]
  %188 = getelementptr inbounds %struct.RenderPart, ptr %187, i64 0, i32 2
  %189 = load ptr, ptr %188, align 8, !tbaa !200
  %190 = icmp eq ptr %189, null
  br i1 %190, label %193, label %191

191:                                              ; preds = %186
  %192 = getelementptr inbounds %struct.RenderPart, ptr %187, i64 0, i32 3
  call void @render_result_free_list(ptr noundef nonnull %192, ptr noundef nonnull %189) #24
  store ptr null, ptr %188, align 8, !tbaa !200
  br label %193

193:                                              ; preds = %191, %186
  %194 = call ptr @BLI_thread_queue_pop(ptr noundef %54) #24
  %195 = icmp eq ptr %194, null
  br i1 %195, label %196, label %186, !llvm.loop !206

196:                                              ; preds = %193, %183, %180
  call void @BLI_thread_queue_free(ptr noundef %54) #24
  call void @BLI_thread_queue_free(ptr noundef %53) #24
  %197 = load ptr, ptr %9, align 8, !tbaa !65
  %198 = getelementptr inbounds %struct.RenderResult, ptr %197, i64 0, i32 15
  %199 = load i32, ptr %198, align 8, !tbaa !186
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %196
  call void @BLI_rw_mutex_lock(ptr noundef nonnull %8, i32 noundef 2) #24
  call void @render_result_exr_file_end(ptr noundef nonnull %0) #24
  call void @BLI_rw_mutex_unlock(ptr noundef nonnull %8) #24
  br label %202

202:                                              ; preds = %201, %196
  %203 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %204 = load i32, ptr %203, align 4, !tbaa !135
  %205 = and i32 %204, 1048576
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %208, label %207

207:                                              ; preds = %202
  call void @BLI_rw_mutex_lock(ptr noundef nonnull %8, i32 noundef 2) #24
  call void @render_result_exr_file_cache_write(ptr noundef nonnull %0) #24
  call void @BLI_rw_mutex_unlock(ptr noundef nonnull %8) #24
  br label %208

208:                                              ; preds = %207, %202
  store volatile i32 0, ptr @g_break, align 4, !tbaa !67
  call void @RE_parts_free(ptr noundef nonnull %0) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !144
  br label %209

209:                                              ; preds = %43, %208
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @RE_allow_render_generic_object(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 55
  %3 = load i16, ptr %2, align 8, !tbaa !207
  %4 = zext i16 %3 to i32
  %5 = and i32 %4, 792
  %6 = icmp eq i32 %5, 0
  %7 = and i32 %4, 2056
  %8 = icmp ne i32 %7, 0
  %9 = or i1 %8, %6
  %10 = zext i1 %9 to i8
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_MergeFullSample(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !103
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  store ptr %1, ptr %5, align 8, !tbaa !211
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  store ptr %2, ptr %6, align 8, !tbaa !66
  %7 = tail call zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef %2) #24
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 8
  store i8 %7, ptr %8, align 8, !tbaa !212
  %9 = load ptr, ptr %5, align 8, !tbaa !211
  %10 = getelementptr inbounds %struct.Main, ptr %9, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %4, %13
  %14 = phi ptr [ %18, %13 ], [ %11, %4 ]
  %15 = getelementptr inbounds %struct.ID, ptr %14, i64 0, i32 5
  %16 = load i16, ptr %15, align 2, !tbaa !213
  %17 = or i16 %16, 1024
  store i16 %17, ptr %15, align 2, !tbaa !213
  %18 = load ptr, ptr %14, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %13, !llvm.loop !223

20:                                               ; preds = %13, %4
  %21 = getelementptr inbounds %struct.bNodeTree, ptr %3, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %53, label %24

24:                                               ; preds = %20, %50
  %25 = phi ptr [ %51, %50 ], [ %22, %20 ]
  %26 = getelementptr inbounds %struct.bNode, ptr %25, i64 0, i32 8
  %27 = load i16, ptr %26, align 4, !tbaa !224
  %28 = icmp eq i16 %27, 221
  br i1 %28, label %29, label %50

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.bNode, ptr %25, i64 0, i32 7
  %31 = load i32, ptr %30, align 8, !tbaa !226
  %32 = and i32 %31, 512
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.bNode, ptr %25, i64 0, i32 20
  %36 = load ptr, ptr %35, align 8, !tbaa !227
  %37 = icmp eq ptr %36, null
  %38 = select i1 %37, ptr %2, ptr %36
  %39 = getelementptr inbounds %struct.ID, ptr %38, i64 0, i32 5
  %40 = load i16, ptr %39, align 2, !tbaa !213
  %41 = and i16 %40, 1024
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.Scene, ptr %38, i64 0, i32 22, i32 47
  %45 = load i32, ptr %44, align 8, !tbaa !228
  %46 = or i32 %45, 1
  store i32 %46, ptr %44, align 8, !tbaa !228
  %47 = tail call zeroext i8 @RE_ReadRenderResult(ptr noundef %2, ptr noundef nonnull %38) #26
  %48 = load i16, ptr %39, align 2, !tbaa !213
  %49 = and i16 %48, -1025
  store i16 %49, ptr %39, align 2, !tbaa !213
  br label %50

50:                                               ; preds = %34, %43, %24, %29
  %51 = load ptr, ptr %25, align 8, !tbaa !34
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %24, !llvm.loop !229

53:                                               ; preds = %50, %20
  %54 = load ptr, ptr %6, align 8, !tbaa !66
  %55 = getelementptr inbounds %struct.ID, ptr %54, i64 0, i32 5
  %56 = load i16, ptr %55, align 2, !tbaa !213
  %57 = and i16 %56, 1024
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = tail call zeroext i8 @RE_ReadRenderResult(ptr noundef nonnull %54, ptr noundef nonnull %54) #26
  %61 = load ptr, ptr %6, align 8, !tbaa !66
  %62 = getelementptr inbounds %struct.ID, ptr %61, i64 0, i32 5
  %63 = load i16, ptr %62, align 2, !tbaa !213
  %64 = and i16 %63, -1025
  store i16 %64, ptr %62, align 2, !tbaa !213
  br label %65

65:                                               ; preds = %59, %53
  %66 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 82
  %67 = load ptr, ptr %66, align 8, !tbaa !84
  %68 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 83
  %69 = load ptr, ptr %68, align 8, !tbaa !97
  %70 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %71 = load ptr, ptr %70, align 8, !tbaa !65
  tail call void %67(ptr noundef %69, ptr noundef %71) #24
  %72 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 84
  %73 = load ptr, ptr %72, align 8, !tbaa !85
  %74 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 85
  %75 = load ptr, ptr %74, align 8, !tbaa !96
  %76 = load ptr, ptr %70, align 8, !tbaa !65
  tail call void %73(ptr noundef %75, ptr noundef %76) #24
  tail call fastcc void @do_merge_fullsample(ptr noundef nonnull %0, ptr noundef %3) #26
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @RE_ReadRenderResult(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.rcti, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #27
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 30
  %5 = load i16, ptr %4, align 2, !tbaa !230
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 33
  %8 = load <2 x i32>, ptr %7, align 4, !tbaa !67
  %9 = insertelement <2 x i32> poison, i32 %6, i64 0
  %10 = shufflevector <2 x i32> %9, <2 x i32> poison, <2 x i32> zeroinitializer
  %11 = mul nsw <2 x i32> %8, %10
  %12 = sdiv <2 x i32> %11, <i32 100, i32 100>
  %13 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 47
  %14 = load i32, ptr %13, align 8, !tbaa !228
  %15 = and i32 %14, 512
  %16 = icmp eq i32 %15, 0
  %17 = shufflevector <2 x i32> %12, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 1>
  %18 = shufflevector <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>, <4 x i32> %17, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  br i1 %16, label %26, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 58
  %21 = sitofp <2 x i32> %12 to <2 x float>
  %22 = shufflevector <2 x float> %21, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %23 = load <4 x float>, ptr %20, align 8, !tbaa !130
  %24 = fmul <4 x float> %23, %22
  %25 = fptosi <4 x float> %24 to <4 x i32>
  br label %26

26:                                               ; preds = %2, %19
  %27 = phi <4 x i32> [ %25, %19 ], [ %18, %2 ]
  store <4 x i32> %27, ptr %3, align 16
  %28 = icmp eq ptr %1, null
  %29 = select i1 %28, ptr %0, ptr %1
  %30 = getelementptr inbounds %struct.ID, ptr %29, i64 0, i32 4
  %31 = tail call ptr @RE_GetRender(ptr noundef nonnull %30) #26
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = tail call ptr @RE_NewRender(ptr noundef nonnull %30) #26
  br label %35

35:                                               ; preds = %33, %26
  %36 = phi ptr [ %34, %33 ], [ %31, %26 ]
  %37 = getelementptr inbounds %struct.Scene, ptr %29, i64 0, i32 22
  %38 = extractelement <2 x i32> %12, i64 0
  %39 = extractelement <2 x i32> %12, i64 1
  call void @RE_InitState(ptr noundef %36, ptr noundef null, ptr noundef nonnull %37, ptr noundef null, i32 noundef %38, i32 noundef %39, ptr noundef nonnull %3) #26
  %40 = getelementptr inbounds %struct.Render, ptr %36, i64 0, i32 44
  store ptr %29, ptr %40, align 8, !tbaa !66
  %41 = call zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef nonnull %29) #24
  %42 = getelementptr inbounds %struct.Render, ptr %36, i64 0, i32 8
  store i8 %41, ptr %42, align 8, !tbaa !212
  %43 = getelementptr inbounds %struct.Render, ptr %36, i64 0, i32 12
  call void @BLI_rw_mutex_lock(ptr noundef nonnull %43, i32 noundef 2) #24
  %44 = call zeroext i8 @render_result_exr_file_cache_read(ptr noundef %36) #24
  call void @BLI_rw_mutex_unlock(ptr noundef nonnull %43) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #27
  ret i8 %44
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_merge_fullsample(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !231 {
  %3 = alloca [3 x [3 x float]], align 16
  %4 = alloca %struct.RenderResult, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #27
  %5 = icmp eq ptr %1, null
  br i1 %5, label %23, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 29
  store ptr @render_composit_stats, ptr %7, align 8, !tbaa !232
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %9 = load ptr, ptr %8, align 8, !tbaa !89
  %10 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 30
  store ptr %9, ptr %10, align 8, !tbaa !235
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 92
  %12 = load ptr, ptr %11, align 8, !tbaa !88
  %13 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 28
  store ptr %12, ptr %13, align 8, !tbaa !236
  %14 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 91
  %15 = load ptr, ptr %14, align 8, !tbaa !94
  %16 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 34
  store ptr %15, ptr %16, align 8, !tbaa !237
  %17 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %18 = load ptr, ptr %17, align 8, !tbaa !92
  %19 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 32
  store ptr %18, ptr %19, align 8, !tbaa !238
  %20 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 93
  %21 = load ptr, ptr %20, align 8, !tbaa !93
  %22 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 33
  store ptr %21, ptr %22, align 8, !tbaa !239
  br label %23

23:                                               ; preds = %6, %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6240) @R, ptr noundef nonnull align 8 dereferenceable(6240) %0, i64 6240, i1 false), !tbaa.struct !187
  %24 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !34
  %25 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 20
  %26 = load i32, ptr %25, align 8, !tbaa !78
  %27 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 21
  %28 = load i32, ptr %27, align 4, !tbaa !79
  %29 = mul nsw i32 %28, %26
  %30 = sext i32 %29 to i64
  %31 = shl nsw i64 %30, 4
  %32 = tail call ptr %24(i64 noundef %31, ptr noundef nonnull @.str.29) #24
  %33 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45
  %34 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 54
  %35 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %36 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  %37 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %38 = getelementptr inbounds %struct.RenderResult, ptr %4, i64 0, i32 7
  %39 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 5
  %40 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %41 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 86
  %42 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 87
  %43 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %44 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  br label %45

45:                                               ; preds = %164, %23
  %46 = phi i32 [ 0, %23 ], [ %51, %164 ]
  %47 = load i16, ptr %34, align 2, !tbaa !137
  %48 = sext i16 %47 to i32
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %169

50:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #27
  %51 = add nuw nsw i32 %46, 1
  %52 = trunc i32 %51 to i16
  store i16 %52, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 98, i32 12), align 2, !tbaa !240
  call fastcc void @tag_scenes_for_render(ptr noundef nonnull %0) #26
  %53 = load ptr, ptr %35, align 8, !tbaa !211
  %54 = getelementptr inbounds %struct.Main, ptr %53, i64 0, i32 11
  %55 = load ptr, ptr %54, align 8, !tbaa !34
  %56 = icmp eq ptr %55, null
  br i1 %56, label %83, label %57

57:                                               ; preds = %50
  %58 = icmp eq i32 %46, 0
  br label %59

59:                                               ; preds = %57, %80
  %60 = phi ptr [ %55, %57 ], [ %81, %80 ]
  %61 = getelementptr inbounds %struct.ID, ptr %60, i64 0, i32 5
  %62 = load i16, ptr %61, align 2, !tbaa !213
  %63 = and i16 %62, 1024
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %80, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.ID, ptr %60, i64 0, i32 4
  %67 = call ptr @RE_GetRender(ptr noundef nonnull %66) #26
  %68 = icmp eq ptr %67, null
  br i1 %68, label %80, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.Render, ptr %67, i64 0, i32 45, i32 46
  %71 = load i32, ptr %70, align 4, !tbaa !135
  %72 = and i32 %71, 32768
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %69
  br i1 %58, label %77, label %75

75:                                               ; preds = %74
  call void @BLI_rw_mutex_lock(ptr noundef nonnull %36, i32 noundef 2) #24
  %76 = call i32 @render_result_exr_file_read_sample(ptr noundef nonnull %67, i32 noundef %46) #24
  call void @BLI_rw_mutex_unlock(ptr noundef nonnull %36) #24
  br label %77

77:                                               ; preds = %75, %74
  %78 = getelementptr inbounds %struct.Render, ptr %67, i64 0, i32 44
  %79 = load ptr, ptr %78, align 8, !tbaa !66
  call void @ntreeCompositTagRender(ptr noundef %79) #24
  br label %80

80:                                               ; preds = %59, %77, %69, %65
  %81 = load ptr, ptr %60, align 8, !tbaa !34
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %59, !llvm.loop !241

83:                                               ; preds = %80, %50
  br i1 %5, label %93, label %84

84:                                               ; preds = %83
  %85 = load ptr, ptr %37, align 8, !tbaa !66
  call void @ntreeCompositTagRender(ptr noundef %85) #24
  %86 = call i32 @ntreeCompositTagAnimated(ptr noundef nonnull %1) #24
  %87 = load ptr, ptr %37, align 8, !tbaa !66
  %88 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !90
  %89 = icmp eq i8 %88, 0
  %90 = zext i1 %89 to i32
  %91 = getelementptr inbounds %struct.Scene, ptr %87, i64 0, i32 44
  %92 = getelementptr inbounds %struct.Scene, ptr %87, i64 0, i32 45
  call void @ntreeCompositExecTree(ptr noundef %87, ptr noundef nonnull %1, ptr noundef nonnull %33, i32 noundef 1, i32 noundef %90, ptr noundef nonnull %91, ptr noundef nonnull %92) #24
  br label %93

93:                                               ; preds = %84, %83
  call void @RE_AcquireResultImage(ptr noundef %0, ptr noundef nonnull %4) #26
  %94 = shl nuw i32 1, %46
  call void @mask_array(i32 noundef %94, ptr noundef nonnull %3) #24
  %95 = load i32, ptr %27, align 4, !tbaa !79
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %152

97:                                               ; preds = %93
  %98 = load ptr, ptr %38, align 8, !tbaa !69
  %99 = load i32, ptr %25, align 8, !tbaa !78
  br label %100

100:                                              ; preds = %97, %147
  %101 = phi i32 [ %95, %97 ], [ %148, %147 ]
  %102 = phi i32 [ %99, %97 ], [ %149, %147 ]
  %103 = phi i32 [ 0, %97 ], [ %150, %147 ]
  %104 = icmp sgt i32 %102, 0
  br i1 %104, label %105, label %147

105:                                              ; preds = %100
  %106 = shl nsw i32 %103, 2
  %107 = mul nsw i32 %106, %102
  %108 = zext nneg i32 %107 to i64
  %109 = getelementptr inbounds float, ptr %98, i64 %108
  %110 = getelementptr inbounds float, ptr %32, i64 %108
  br label %111

111:                                              ; preds = %105, %138
  %112 = phi i32 [ %143, %138 ], [ %102, %105 ]
  %113 = phi ptr [ %142, %138 ], [ %109, %105 ]
  %114 = phi ptr [ %141, %138 ], [ %110, %105 ]
  %115 = phi i32 [ %140, %138 ], [ 0, %105 ]
  %116 = load float, ptr %113, align 4, !tbaa !130
  %117 = fcmp olt float %116, 0.000000e+00
  br i1 %117, label %120, label %118

118:                                              ; preds = %111
  %119 = fcmp ogt float %116, 1.000000e+00
  br i1 %119, label %120, label %122

120:                                              ; preds = %118, %111
  %121 = phi float [ 0.000000e+00, %111 ], [ 1.000000e+00, %118 ]
  store float %121, ptr %113, align 4, !tbaa !130
  br label %122

122:                                              ; preds = %120, %118
  %123 = getelementptr inbounds float, ptr %113, i64 1
  %124 = load float, ptr %123, align 4, !tbaa !130
  %125 = fcmp olt float %124, 0.000000e+00
  br i1 %125, label %128, label %126

126:                                              ; preds = %122
  %127 = fcmp ogt float %124, 1.000000e+00
  br i1 %127, label %128, label %130

128:                                              ; preds = %126, %122
  %129 = phi float [ 0.000000e+00, %122 ], [ 1.000000e+00, %126 ]
  store float %129, ptr %123, align 4, !tbaa !130
  br label %130

130:                                              ; preds = %128, %126
  %131 = getelementptr inbounds float, ptr %113, i64 2
  %132 = load float, ptr %131, align 4, !tbaa !130
  %133 = fcmp olt float %132, 0.000000e+00
  br i1 %133, label %136, label %134

134:                                              ; preds = %130
  %135 = fcmp ogt float %132, 1.000000e+00
  br i1 %135, label %136, label %138

136:                                              ; preds = %134, %130
  %137 = phi float [ 0.000000e+00, %130 ], [ 1.000000e+00, %134 ]
  store float %137, ptr %131, align 4, !tbaa !130
  br label %138

138:                                              ; preds = %136, %134
  %139 = load i32, ptr %27, align 4, !tbaa !79
  call void @add_filt_fmask_coord(ptr noundef nonnull %3, ptr noundef nonnull %113, ptr noundef %114, i32 noundef %112, i32 noundef %139, i32 noundef %115, i32 noundef %103) #24
  %140 = add nuw nsw i32 %115, 1
  %141 = getelementptr inbounds float, ptr %114, i64 4
  %142 = getelementptr inbounds float, ptr %113, i64 4
  %143 = load i32, ptr %25, align 8, !tbaa !78
  %144 = icmp slt i32 %140, %143
  br i1 %144, label %111, label %145, !llvm.loop !242

145:                                              ; preds = %138
  %146 = load i32, ptr %27, align 4, !tbaa !79
  br label %147

147:                                              ; preds = %145, %100
  %148 = phi i32 [ %146, %145 ], [ %101, %100 ]
  %149 = phi i32 [ %143, %145 ], [ %102, %100 ]
  %150 = add nuw nsw i32 %103, 1
  %151 = icmp slt i32 %150, %148
  br i1 %151, label %100, label %152, !llvm.loop !243

152:                                              ; preds = %147, %93
  call void @RE_ReleaseResultImage(ptr noundef nonnull %0) #26
  %153 = load i16, ptr %39, align 2, !tbaa !136
  %154 = sext i16 %153 to i32
  %155 = add nsw i32 %154, -1
  %156 = icmp eq i32 %46, %155
  br i1 %156, label %164, label %157

157:                                              ; preds = %152
  %158 = load ptr, ptr %40, align 8, !tbaa !65
  %159 = call ptr @render_get_active_layer(ptr noundef nonnull %0, ptr noundef %158) #26
  %160 = load ptr, ptr %40, align 8, !tbaa !65
  %161 = getelementptr inbounds %struct.RenderResult, ptr %160, i64 0, i32 14
  store ptr %159, ptr %161, align 8, !tbaa !244
  %162 = load ptr, ptr %41, align 8, !tbaa !86
  %163 = load ptr, ptr %42, align 8, !tbaa !95
  call void %162(ptr noundef %163, ptr noundef %160, ptr noundef null) #24
  br label %164

164:                                              ; preds = %157, %152
  %165 = load ptr, ptr %43, align 8, !tbaa !89
  %166 = load ptr, ptr %44, align 8, !tbaa !92
  %167 = call i32 %165(ptr noundef %166) #24
  %168 = icmp eq i32 %167, 0
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #27
  br i1 %168, label %45, label %169

169:                                              ; preds = %164, %45
  %170 = load i32, ptr %27, align 4, !tbaa !79
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %172, label %208

172:                                              ; preds = %169
  %173 = load i32, ptr %25, align 8, !tbaa !78
  %174 = icmp sgt i32 %173, 0
  %175 = zext nneg i32 %170 to i64
  br label %176

176:                                              ; preds = %172, %205
  %177 = phi i64 [ 0, %172 ], [ %206, %205 ]
  br i1 %174, label %178, label %205

178:                                              ; preds = %176
  %179 = trunc i64 %177 to i32
  %180 = shl nsw i32 %179, 2
  %181 = mul nsw i32 %180, %173
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds float, ptr %32, i64 %182
  br label %184

184:                                              ; preds = %178, %201
  %185 = phi ptr [ %203, %201 ], [ %183, %178 ]
  %186 = phi i32 [ %202, %201 ], [ 0, %178 ]
  %187 = load <2 x float>, ptr %185, align 4, !tbaa !130
  %188 = fcmp ogt <2 x float> %187, zeroinitializer
  %189 = select <2 x i1> %188, <2 x float> %187, <2 x float> zeroinitializer
  store <2 x float> %189, ptr %185, align 4, !tbaa !130
  %190 = getelementptr inbounds float, ptr %185, i64 2
  %191 = load float, ptr %190, align 4, !tbaa !130
  %192 = fcmp ogt float %191, 0.000000e+00
  %193 = select i1 %192, float %191, float 0.000000e+00
  store float %193, ptr %190, align 4, !tbaa !130
  %194 = getelementptr inbounds float, ptr %185, i64 3
  %195 = load float, ptr %194, align 4, !tbaa !130
  %196 = fcmp olt float %195, 0.000000e+00
  br i1 %196, label %199, label %197

197:                                              ; preds = %184
  %198 = fcmp ogt float %195, 1.000000e+00
  br i1 %198, label %199, label %201

199:                                              ; preds = %197, %184
  %200 = phi float [ 0.000000e+00, %184 ], [ 1.000000e+00, %197 ]
  store float %200, ptr %194, align 4, !tbaa !130
  br label %201

201:                                              ; preds = %199, %197
  %202 = add nuw nsw i32 %186, 1
  %203 = getelementptr inbounds float, ptr %185, i64 4
  %204 = icmp eq i32 %202, %173
  br i1 %204, label %205, label %184, !llvm.loop !245

205:                                              ; preds = %201, %176
  %206 = add nuw nsw i64 %177, 1
  %207 = icmp eq i64 %206, %175
  br i1 %207, label %208, label %176, !llvm.loop !246

208:                                              ; preds = %205, %169
  br i1 %5, label %212, label %209

209:                                              ; preds = %208
  %210 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 28
  %211 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %210, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %211, i8 0, i64 24, i1 false)
  br label %212

212:                                              ; preds = %209, %208
  store i16 0, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 98, i32 12), align 2, !tbaa !240
  call void @BLI_rw_mutex_lock(ptr noundef nonnull %36, i32 noundef 2) #24
  %213 = load ptr, ptr %40, align 8, !tbaa !65
  %214 = getelementptr inbounds %struct.RenderResult, ptr %213, i64 0, i32 7
  %215 = load ptr, ptr %214, align 8, !tbaa !69
  %216 = icmp eq ptr %215, null
  br i1 %216, label %220, label %217

217:                                              ; preds = %212
  %218 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %218(ptr noundef nonnull %215) #24
  %219 = load ptr, ptr %40, align 8, !tbaa !65
  br label %220

220:                                              ; preds = %217, %212
  %221 = phi ptr [ %219, %217 ], [ %213, %212 ]
  %222 = getelementptr inbounds %struct.RenderResult, ptr %221, i64 0, i32 7
  store ptr %32, ptr %222, align 8, !tbaa !69
  call void @BLI_rw_mutex_unlock(ptr noundef nonnull %36) #24
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #27
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @RE_seq_render_active(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !247
  %5 = getelementptr inbounds %struct.RenderData, ptr %1, i64 0, i32 46
  %6 = load i32, ptr %5, align 4, !tbaa !150
  %7 = and i32 %6, 1
  %8 = icmp ne i32 %7, 0
  %9 = icmp ne ptr %4, null
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Editing, ptr %4, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !248
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %11, %20
  %16 = phi ptr [ %21, %20 ], [ %13, %11 ]
  %17 = getelementptr inbounds %struct.Sequence, ptr %16, i64 0, i32 6
  %18 = load i32, ptr %17, align 4, !tbaa !250
  %19 = icmp eq i32 %18, 4
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load ptr, ptr %16, align 8, !tbaa !252
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %15, !llvm.loop !253

23:                                               ; preds = %20, %15, %2, %11
  %24 = phi i32 [ 0, %11 ], [ 0, %2 ], [ 0, %20 ], [ 1, %15 ]
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @RE_force_single_renderlayer(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22
  %3 = tail call fastcc i32 @check_mode_full_sample(ptr noundef nonnull %2) #26, !range !134
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 60
  %8 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 61
  %9 = load i16, ptr %8, align 8, !tbaa !254
  %10 = sext i16 %9 to i32
  %11 = tail call ptr @BLI_findlink(ptr noundef nonnull %7, i32 noundef %10) #24
  %12 = getelementptr inbounds %struct.SceneRenderLayer, ptr %11, i64 0, i32 8
  %13 = load i32, ptr %12, align 4, !tbaa !255
  %14 = and i32 %13, 131072
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %6
  %17 = and i32 %13, -131073
  store i32 %17, ptr %12, align 4, !tbaa !255
  br label %18

18:                                               ; preds = %1, %6, %16
  %19 = phi i8 [ 1, %16 ], [ 0, %6 ], [ 0, %1 ]
  ret i8 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @RE_is_rendering_allowed(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [1024 x i8], align 16
  %5 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22
  %6 = tail call fastcc i32 @check_mode_full_sample(ptr noundef nonnull %5) #26, !range !134
  %7 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 47
  %8 = load i32, ptr %7, align 8, !tbaa !228
  %9 = and i32 %8, 512
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 58
  %13 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 58, i32 1
  %14 = load float, ptr %13, align 4, !tbaa !258
  %15 = load float, ptr %12, align 8, !tbaa !259
  %16 = fcmp ugt float %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 58, i32 3
  %19 = load float, ptr %18, align 4, !tbaa !260
  %20 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 58, i32 2
  %21 = load float, ptr %20, align 8, !tbaa !261
  %22 = fcmp ugt float %19, %21
  br i1 %22, label %24, label %23

23:                                               ; preds = %17, %11
  tail call void @BKE_report(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.4) #24
  br label %81

24:                                               ; preds = %17, %3
  %25 = and i32 %6, 33792
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #27
  call void @render_result_exr_file_path(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, i32 noundef 0, ptr noundef nonnull %4) #24
  %28 = call zeroext i8 @BLI_file_is_writable(ptr noundef nonnull %4) #24
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %79, label %30

30:                                               ; preds = %27
  %31 = and i32 %6, 32768
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load i32, ptr %7, align 8, !tbaa !228
  %35 = and i32 %34, 32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %79

37:                                               ; preds = %30, %33
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #27
  br label %38

38:                                               ; preds = %37, %24
  %39 = and i32 %6, 64
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %61, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 16
  %43 = load i8, ptr %42, align 2, !tbaa !262
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %61, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 18
  %47 = load ptr, ptr %46, align 8, !tbaa !263
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  call void @BKE_report(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.8) #24
  br label %81

50:                                               ; preds = %45
  %51 = call fastcc i32 @check_composite_output(ptr noundef nonnull %0) #26, !range !185
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  call void @BKE_report(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.9) #24
  br label %81

54:                                               ; preds = %50
  %55 = and i32 %6, 32768
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = call fastcc i32 @composite_needs_render(ptr noundef nonnull %0, i32 noundef 0) #26, !range !185
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  call void @BKE_report(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.10) #24
  br label %81

61:                                               ; preds = %41, %57, %54, %38
  %62 = call fastcc i32 @check_valid_camera(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #26
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %81, label %64

64:                                               ; preds = %61
  %65 = icmp eq ptr %1, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !264
  br label %69

69:                                               ; preds = %64, %66
  %70 = phi ptr [ %68, %66 ], [ %1, %64 ]
  call void @BKE_camera_object_mode(ptr noundef nonnull %5, ptr noundef %70) #24
  %71 = load i32, ptr %7, align 8, !tbaa !228
  %72 = and i32 %71, 1032
  %73 = icmp eq i32 %72, 1032
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  call void @BKE_report(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.11) #24
  br label %81

75:                                               ; preds = %69
  %76 = call fastcc zeroext i8 @render_scene_has_layers_to_render(ptr noundef nonnull %0) #26, !range !189
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  call void @BKE_report(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.12) #24
  br label %81

79:                                               ; preds = %33, %27
  %80 = phi ptr [ @.str.6, %27 ], [ @.str.7, %33 ]
  call void @BKE_report(ptr noundef %2, i32 noundef 32, ptr noundef nonnull %80) #24
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #27
  br label %81

81:                                               ; preds = %75, %61, %79, %78, %74, %60, %53, %49, %23
  %82 = phi i8 [ 0, %23 ], [ 0, %60 ], [ 0, %74 ], [ 0, %78 ], [ 0, %53 ], [ 0, %49 ], [ 0, %79 ], [ 0, %61 ], [ 1, %75 ]
  ret i8 %82
}

; Function Attrs: optsize
declare void @render_result_exr_file_path(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BLI_file_is_writable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @check_composite_output(ptr nocapture noundef readonly %0) unnamed_addr #16 !PGOFuncName !265 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !263
  %4 = tail call fastcc zeroext i8 @node_tree_has_composite_output(ptr noundef %3) #26, !range !189
  %5 = zext nneg i8 %4 to i32
  ret i32 %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @composite_needs_render(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #2 !PGOFuncName !266 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !263
  %5 = icmp eq ptr %4, null
  br i1 %5, label %41, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 16
  %8 = load i8, ptr %7, align 2, !tbaa !262
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %41, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 46
  %12 = load i32, ptr %11, align 4, !tbaa !267
  %13 = and i32 %12, 64
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %41, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.bNodeTree, ptr %4, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19

19:                                               ; preds = %15
  %20 = icmp eq i32 %1, 0
  br label %21

21:                                               ; preds = %19, %38
  %22 = phi ptr [ %17, %19 ], [ %39, %38 ]
  %23 = getelementptr inbounds %struct.bNode, ptr %22, i64 0, i32 8
  %24 = load i16, ptr %23, align 4, !tbaa !224
  %25 = icmp eq i16 %24, 221
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.bNode, ptr %22, i64 0, i32 7
  %28 = load i32, ptr %27, align 8, !tbaa !226
  %29 = and i32 %28, 512
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  br i1 %20, label %41, label %32

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.bNode, ptr %22, i64 0, i32 20
  %34 = load ptr, ptr %33, align 8, !tbaa !227
  %35 = icmp eq ptr %34, null
  %36 = icmp eq ptr %34, %0
  %37 = or i1 %35, %36
  br i1 %37, label %41, label %38

38:                                               ; preds = %32, %21, %26
  %39 = load ptr, ptr %22, align 8, !tbaa !34
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %21, !llvm.loop !268

41:                                               ; preds = %32, %31, %38, %15, %10, %6, %2
  %42 = phi i32 [ 1, %2 ], [ 1, %6 ], [ 1, %10 ], [ 0, %15 ], [ 1, %32 ], [ 1, %31 ], [ 0, %38 ]
  ret i32 %42
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @check_valid_camera(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !269 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !264
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call ptr @BKE_scene_camera_find(ptr noundef nonnull %0) #24
  store ptr %10, ptr %6, align 8, !tbaa !264
  br label %11

11:                                               ; preds = %9, %5, %3
  %12 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22
  %13 = tail call i32 @RE_seq_render_active(ptr noundef %0, ptr noundef nonnull %12) #26, !range !185
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %55, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !247
  %18 = icmp eq ptr %17, null
  br i1 %18, label %59, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Editing, ptr %17, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = icmp eq ptr %21, null
  br i1 %22, label %59, label %23

23:                                               ; preds = %19, %49
  %24 = phi ptr [ %50, %49 ], [ %21, %19 ]
  %25 = getelementptr inbounds %struct.Sequence, ptr %24, i64 0, i32 6
  %26 = load i32, ptr %25, align 4, !tbaa !250
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %49

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.Sequence, ptr %24, i64 0, i32 26
  %30 = load ptr, ptr %29, align 8, !tbaa !270
  %31 = icmp eq ptr %30, null
  br i1 %31, label %49, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.Sequence, ptr %24, i64 0, i32 27
  %34 = load ptr, ptr %33, align 8, !tbaa !271
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.Scene, ptr %30, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !264
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = tail call ptr @BKE_scene_camera_find(ptr noundef nonnull %30) #24
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load ptr, ptr %29, align 8, !tbaa !270
  %45 = icmp eq ptr %44, %0
  %46 = select i1 %45, ptr %1, ptr null
  %47 = tail call fastcc zeroext i8 @check_valid_compositing_camera(ptr noundef %44, ptr noundef %46) #26
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %43, %32, %40, %36, %28, %23
  %50 = load ptr, ptr %24, align 8, !tbaa !34
  %51 = icmp eq ptr %50, null
  br i1 %51, label %59, label %23, !llvm.loop !272

52:                                               ; preds = %43
  %53 = load ptr, ptr %29, align 8, !tbaa !270
  %54 = getelementptr inbounds %struct.ID, ptr %53, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.33, ptr noundef nonnull %54) #24
  br label %59

55:                                               ; preds = %11
  %56 = tail call fastcc zeroext i8 @check_valid_compositing_camera(ptr noundef %0, ptr noundef %1) #26
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  tail call void @BKE_report(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.34) #24
  br label %59

59:                                               ; preds = %49, %19, %15, %55, %52, %58
  %60 = phi i32 [ 0, %52 ], [ 0, %58 ], [ 1, %55 ], [ 1, %15 ], [ 1, %19 ], [ 1, %49 ]
  ret i32 %60
}

; Function Attrs: optsize
declare void @BKE_camera_object_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @render_scene_has_layers_to_render(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !273 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 60
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ %2, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.SceneRenderLayer, ptr %5, i64 0, i32 8
  %9 = load i32, ptr %8, align 4, !tbaa !255
  %10 = and i32 %9, 131072
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %3, !llvm.loop !274

12:                                               ; preds = %3, %7
  %13 = phi i8 [ 1, %7 ], [ 0, %3 ]
  ret i8 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @RE_SetReports(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 99
  store ptr %1, ptr %3, align 8, !tbaa !133
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_BlenderFrame(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i8 noundef zeroext %7) local_unnamed_addr #0 {
  %9 = alloca [1024 x i8], align 16
  %10 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %11 = load ptr, ptr %10, align 8, !tbaa !211
  tail call void @BLI_callback_exec(ptr noundef %11, ptr noundef %2, i32 noundef 5) #24
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !275
  %12 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22
  %13 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 5
  store i32 %6, ptr %13, align 8, !tbaa !276
  %14 = tail call fastcc i32 @render_initialize_from_main(ptr noundef %0, ptr noundef nonnull %12, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef 0) #26
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %41, label %16

16:                                               ; preds = %8
  %17 = load ptr, ptr @MEM_reset_peak_memory, align 8, !tbaa !34
  tail call void %17() #24
  %18 = load ptr, ptr %10, align 8, !tbaa !211
  tail call void @BLI_callback_exec(ptr noundef %18, ptr noundef nonnull %2, i32 noundef 2) #24
  tail call fastcc void @do_render_all_options(ptr noundef nonnull %0) #26
  %19 = icmp eq i8 %7, 0
  %20 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8
  %21 = icmp ne i8 %20, 0
  %22 = select i1 %19, i1 true, i1 %21
  br i1 %22, label %39, label %23

23:                                               ; preds = %16
  %24 = load i8, ptr %12, align 8, !tbaa !277
  %25 = tail call zeroext i8 @BKE_imtype_is_movie(i8 noundef zeroext %24) #24
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %39

29:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %9) #27
  %30 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 84
  %31 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 2
  %32 = load i32, ptr %13, align 8, !tbaa !276
  %33 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 46
  %34 = load i32, ptr %33, align 4, !tbaa !267
  %35 = trunc i32 %34 to i8
  %36 = lshr i8 %35, 4
  %37 = and i8 %36, 1
  call void @BKE_makepicstring(ptr noundef nonnull %9, ptr noundef nonnull %30, ptr noundef nonnull %31, i32 noundef %32, ptr noundef nonnull %12, i8 noundef zeroext %37, i8 noundef zeroext 0) #24
  %38 = call fastcc i32 @do_write_image_or_movie(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull %9) #26
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %9) #27
  br label %39

39:                                               ; preds = %27, %29, %16
  %40 = load ptr, ptr %10, align 8, !tbaa !211
  call void @BLI_callback_exec(ptr noundef %40, ptr noundef nonnull %2, i32 noundef 3) #24
  br label %41

41:                                               ; preds = %39, %8
  %42 = load ptr, ptr %10, align 8, !tbaa !211
  %43 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !103
  %44 = icmp eq i8 %43, 0
  %45 = select i1 %44, i32 6, i32 7
  call void @BLI_callback_exec(ptr noundef %42, ptr noundef nonnull %2, i32 noundef %45) #24
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !275
  ret void
}

; Function Attrs: optsize
declare void @BLI_callback_exec(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @render_initialize_from_main(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 !PGOFuncName !278 {
  %9 = alloca %struct.rcti, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #27
  %10 = getelementptr inbounds %struct.RenderData, ptr %1, i64 0, i32 30
  %11 = load i16, ptr %10, align 2, !tbaa !279
  %12 = sext i16 %11 to i32
  %13 = getelementptr inbounds %struct.RenderData, ptr %1, i64 0, i32 33
  %14 = load <2 x i32>, ptr %13, align 4, !tbaa !67
  %15 = insertelement <2 x i32> poison, i32 %12, i64 0
  %16 = shufflevector <2 x i32> %15, <2 x i32> poison, <2 x i32> zeroinitializer
  %17 = mul nsw <2 x i32> %14, %16
  %18 = sdiv <2 x i32> %17, <i32 100, i32 100>
  %19 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22
  %20 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 47
  %21 = load i32, ptr %20, align 8, !tbaa !228
  %22 = and i32 %21, 512
  %23 = icmp eq i32 %22, 0
  %24 = shufflevector <2 x i32> %18, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 1>
  %25 = shufflevector <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>, <4 x i32> %24, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  br i1 %23, label %33, label %26

26:                                               ; preds = %8
  %27 = getelementptr inbounds %struct.RenderData, ptr %1, i64 0, i32 58
  %28 = sitofp <2 x i32> %18 to <2 x float>
  %29 = shufflevector <2 x float> %28, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %30 = load <4 x float>, ptr %27, align 8, !tbaa !130
  %31 = fmul <4 x float> %30, %29
  %32 = fptosi <4 x float> %31 to <4 x i32>
  br label %33

33:                                               ; preds = %8, %26
  %34 = phi <4 x i32> [ %32, %26 ], [ %25, %8 ]
  store <4 x i32> %34, ptr %9, align 16
  %35 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  store ptr %2, ptr %35, align 8, !tbaa !211
  %36 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  store ptr %3, ptr %36, align 8, !tbaa !66
  %37 = tail call zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef nonnull %3) #24
  %38 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 8
  store i8 %37, ptr %38, align 8, !tbaa !212
  %39 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 47
  store ptr %5, ptr %39, align 8, !tbaa !280
  %40 = icmp eq i32 %6, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 12
  %43 = load i32, ptr %42, align 8, !tbaa !281
  br label %44

44:                                               ; preds = %33, %41
  %45 = phi i32 [ %43, %41 ], [ %6, %33 ]
  %46 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 48
  store i32 %45, ptr %46, align 8, !tbaa !282
  %47 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 49
  store i32 %6, ptr %47, align 4, !tbaa !283
  %48 = icmp ugt i32 %45, 16777215
  %49 = zext i1 %48 to i8
  %50 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 13
  store i8 %49, ptr %50, align 8, !tbaa !284
  %51 = icmp eq i32 %7, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %44
  tail call void @render_update_anim_renderdata(ptr noundef nonnull %0, ptr noundef nonnull %19) #26
  %53 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %53, ptr noundef nonnull align 16 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !145
  br label %82

54:                                               ; preds = %44
  tail call fastcc void @tag_scenes_for_render(ptr noundef nonnull %0) #26
  %55 = icmp eq ptr %4, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 46
  %58 = load i32, ptr %57, align 4, !tbaa !267
  %59 = and i32 %58, 512
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %56, %54
  %62 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull %62, i32 noundef 2) #24
  tail call void @render_result_single_layer_begin(ptr noundef nonnull %0) #24
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull %62) #24
  br label %63

63:                                               ; preds = %61, %56
  %64 = extractelement <2 x i32> %18, i64 0
  %65 = extractelement <2 x i32> %18, i64 1
  call void @RE_InitState(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %19, ptr noundef %4, i32 noundef %64, i32 noundef %65, ptr noundef nonnull %9) #26
  %66 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 6
  %67 = load i16, ptr %66, align 4, !tbaa !125
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %82, label %69

69:                                               ; preds = %63
  %70 = load ptr, ptr %36, align 8, !tbaa !66
  call void @ntreeCompositTagRender(ptr noundef %70) #24
  call fastcc void @validate_render_settings(ptr noundef nonnull %0) #26
  %71 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 82
  %72 = load ptr, ptr %71, align 8, !tbaa !84
  %73 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 83
  %74 = load ptr, ptr %73, align 8, !tbaa !97
  %75 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %76 = load ptr, ptr %75, align 8, !tbaa !65
  call void %72(ptr noundef %74, ptr noundef %76) #24
  %77 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 84
  %78 = load ptr, ptr %77, align 8, !tbaa !85
  %79 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 85
  %80 = load ptr, ptr %79, align 8, !tbaa !96
  %81 = load ptr, ptr %75, align 8, !tbaa !65
  call void %78(ptr noundef %80, ptr noundef %81) #24
  br label %82

82:                                               ; preds = %63, %69, %52
  %83 = phi i32 [ 1, %52 ], [ 1, %69 ], [ 0, %63 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #27
  ret i32 %83
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_render_all_options(ptr noundef %0) unnamed_addr #0 !PGOFuncName !285 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 88
  %3 = load ptr, ptr %2, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 89
  %5 = load ptr, ptr %4, align 8, !tbaa !171
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  tail call void %3(ptr noundef %5, ptr noundef %7) #24
  %8 = load ptr, ptr %6, align 8, !tbaa !66
  %9 = tail call i32 @BKE_scene_camera_switch_update(ptr noundef %8) #24
  %10 = tail call double @PIL_check_seconds_timer() #24
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98
  %12 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 14
  store double %10, ptr %12, align 8, !tbaa !126
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !286
  tail call void @BKE_image_all_free_anim_ibufs(i32 noundef %14) #24
  %15 = tail call i32 @RE_engine_render(ptr noundef %0, i32 noundef 1) #24
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %45

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45
  %19 = load ptr, ptr %6, align 8, !tbaa !66
  %20 = tail call i32 @RE_seq_render_active(ptr noundef %19, ptr noundef nonnull %18) #26, !range !185
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %41, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %24 = load ptr, ptr %23, align 8, !tbaa !89
  %25 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %26 = load ptr, ptr %25, align 8, !tbaa !92
  %27 = tail call i32 %24(ptr noundef %26) #24
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  tail call fastcc void @do_render_seq(ptr noundef nonnull %0) #26
  br label %30

30:                                               ; preds = %29, %22
  %31 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 90
  %32 = load ptr, ptr %31, align 8, !tbaa !172
  %33 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 91
  %34 = load ptr, ptr %33, align 8, !tbaa !94
  tail call void %32(ptr noundef %34, ptr noundef nonnull %11) #24
  %35 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 86
  %36 = load ptr, ptr %35, align 8, !tbaa !86
  %37 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 87
  %38 = load ptr, ptr %37, align 8, !tbaa !95
  %39 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %40 = load ptr, ptr %39, align 8, !tbaa !65
  tail call void %36(ptr noundef %38, ptr noundef %40, ptr noundef null) #24
  br label %45

41:                                               ; preds = %17
  %42 = tail call ptr @BKE_image_pool_new() #24
  %43 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 100
  store ptr %42, ptr %43, align 8, !tbaa !287
  tail call fastcc void @do_render_composite_fields_blur_3d(ptr noundef nonnull %0) #26
  %44 = load ptr, ptr %43, align 8, !tbaa !287
  tail call void @BKE_image_pool_free(ptr noundef %44) #24
  store ptr null, ptr %43, align 8, !tbaa !287
  br label %45

45:                                               ; preds = %30, %41, %1
  %46 = tail call double @PIL_check_seconds_timer() #24
  %47 = load double, ptr %12, align 8, !tbaa !126
  %48 = fsub double %46, %47
  %49 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 15
  store double %48, ptr %49, align 8, !tbaa !182
  %50 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 90
  %51 = load ptr, ptr %50, align 8, !tbaa !172
  %52 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 91
  %53 = load ptr, ptr %52, align 8, !tbaa !94
  tail call void %51(ptr noundef %53, ptr noundef nonnull %11) #24
  %54 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 85
  %55 = load i32, ptr %54, align 8, !tbaa !288
  %56 = and i32 %55, 4031
  %57 = icmp eq i32 %56, 0
  %58 = and i32 %55, 64
  %59 = icmp eq i32 %58, 0
  %60 = or i1 %57, %59
  br i1 %60, label %68, label %61

61:                                               ; preds = %45
  tail call fastcc void @renderresult_stampinfo(ptr noundef nonnull %0) #26
  %62 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 86
  %63 = load ptr, ptr %62, align 8, !tbaa !86
  %64 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 87
  %65 = load ptr, ptr %64, align 8, !tbaa !95
  %66 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %67 = load ptr, ptr %66, align 8, !tbaa !65
  tail call void %63(ptr noundef %65, ptr noundef %67, ptr noundef null) #24
  br label %68

68:                                               ; preds = %61, %45
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: optsize
declare void @BKE_makepicstring(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @do_write_image_or_movie(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !289 {
  %6 = alloca [1024 x i8], align 16
  %7 = alloca %struct.RenderResult, align 8
  %8 = alloca %struct.ImageFormatData, align 8
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %7) #27
  %9 = tail call ptr @RE_GetCamera(ptr noundef %0) #24
  call void @RE_AcquireResultImage(ptr noundef %0, ptr noundef nonnull %7) #26
  %10 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22
  %11 = load i8, ptr %10, align 8, !tbaa !277
  %12 = tail call zeroext i8 @BKE_imtype_is_movie(i8 noundef zeroext %11) #24
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %61, label %14

14:                                               ; preds = %5
  %15 = call ptr @render_result_rect_to_ibuf(ptr noundef nonnull %7, ptr noundef nonnull %10) #24
  %16 = getelementptr inbounds %struct.ImBuf, ptr %15, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !290
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %14
  %20 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !139
  %23 = sext i32 %22 to i64
  %24 = shl nsw i64 %23, 2
  %25 = getelementptr inbounds %struct.RenderResult, ptr %7, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !140
  %27 = sext i32 %26 to i64
  %28 = mul i64 %24, %27
  %29 = call ptr %20(i64 noundef %28, ptr noundef nonnull @.str.36) #24
  store ptr %29, ptr %16, align 8, !tbaa !290
  %30 = getelementptr inbounds %struct.ImBuf, ptr %15, i64 0, i32 7
  %31 = load i32, ptr %30, align 4, !tbaa !293
  %32 = or i32 %31, 1
  store i32 %32, ptr %30, align 4, !tbaa !293
  call void @RE_AcquiredResultGet32(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %29) #26
  br label %33

33:                                               ; preds = %19, %14
  %34 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 44
  %35 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 45
  %36 = call ptr @IMB_colormanagement_imbuf_for_write(ptr noundef nonnull %15, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %34, ptr noundef nonnull %35, ptr noundef nonnull %10) #24
  %37 = getelementptr inbounds %struct.bMovieHandle, ptr %3, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !294
  %39 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45
  %40 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 6
  %41 = load i32, ptr %40, align 4, !tbaa !296
  %42 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 5
  %43 = load i32, ptr %42, align 8, !tbaa !276
  %44 = load ptr, ptr %16, align 8, !tbaa !290
  %45 = getelementptr inbounds %struct.ImBuf, ptr %15, i64 0, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !297
  %47 = getelementptr inbounds %struct.ImBuf, ptr %15, i64 0, i32 3
  %48 = load i32, ptr %47, align 4, !tbaa !298
  %49 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 99
  %50 = load ptr, ptr %49, align 8, !tbaa !133
  %51 = call i32 %38(ptr noundef nonnull %39, i32 noundef %41, i32 noundef %43, ptr noundef %44, i32 noundef %46, i32 noundef %48, ptr noundef %50) #24
  br i1 %18, label %52, label %58

52:                                               ; preds = %33
  %53 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %54 = load ptr, ptr %16, align 8, !tbaa !290
  call void %53(ptr noundef %54) #24
  store ptr null, ptr %16, align 8, !tbaa !290
  %55 = getelementptr inbounds %struct.ImBuf, ptr %15, i64 0, i32 7
  %56 = load i32, ptr %55, align 4, !tbaa !293
  %57 = and i32 %56, -2
  store i32 %57, ptr %55, align 4, !tbaa !293
  br label %58

58:                                               ; preds = %52, %33
  call void @IMB_freeImBuf(ptr noundef nonnull %15) #24
  %59 = load i32, ptr %42, align 8, !tbaa !276
  %60 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, i32 noundef %59) #26
  br label %123

61:                                               ; preds = %5
  %62 = icmp eq ptr %4, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %61
  %64 = call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef nonnull %4, i64 noundef 1024) #24
  br label %75

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 84
  %67 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 2
  %68 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 5
  %69 = load i32, ptr %68, align 8, !tbaa !276
  %70 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 46
  %71 = load i32, ptr %70, align 4, !tbaa !267
  %72 = trunc i32 %71 to i8
  %73 = lshr i8 %72, 4
  %74 = and i8 %73, 1
  call void @BKE_makepicstring(ptr noundef nonnull %6, ptr noundef nonnull %66, ptr noundef nonnull %67, i32 noundef %69, ptr noundef nonnull %10, i8 noundef zeroext %74, i8 noundef zeroext 1) #24
  br label %75

75:                                               ; preds = %65, %63
  %76 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45
  %77 = load i8, ptr %76, align 8, !tbaa !299
  %78 = icmp eq i8 %77, 28
  br i1 %78, label %79, label %91

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %81 = load ptr, ptr %80, align 8, !tbaa !65
  %82 = icmp eq ptr %81, null
  br i1 %82, label %123, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 99
  %85 = load ptr, ptr %84, align 8, !tbaa !133
  %86 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 0, i32 6
  %87 = load i8, ptr %86, align 2, !tbaa !300
  %88 = zext i8 %87 to i32
  %89 = call zeroext i8 @RE_WriteRenderResult(ptr noundef %85, ptr noundef nonnull %81, ptr noundef nonnull %6, i32 noundef %88) #24
  %90 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, ptr noundef nonnull %6) #26
  br label %123

91:                                               ; preds = %75
  %92 = call ptr @render_result_rect_to_ibuf(ptr noundef nonnull %7, ptr noundef nonnull %10) #24
  %93 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 44
  %94 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 45
  %95 = call ptr @IMB_colormanagement_imbuf_for_write(ptr noundef %92, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %93, ptr noundef nonnull %94, ptr noundef nonnull %10) #24
  %96 = call i32 @BKE_imbuf_write_stamp(ptr noundef nonnull %2, ptr noundef %9, ptr noundef %92, ptr noundef nonnull %6, ptr noundef nonnull %10) #24
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, ptr noundef nonnull %6) #26
  br label %122

100:                                              ; preds = %91
  %101 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, ptr noundef nonnull %6) #26
  %102 = load i8, ptr %10, align 8, !tbaa !277
  %103 = icmp eq i8 %102, 23
  br i1 %103, label %104, label %122

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 0, i32 3
  %106 = load i8, ptr %105, align 1, !tbaa !301
  %107 = and i8 %106, 2
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %122, label %109

109:                                              ; preds = %104
  call void @llvm.lifetime.start.p0(i64 248, ptr nonnull %8) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %8, ptr noundef nonnull align 8 dereferenceable(248) %10, i64 248, i1 false), !tbaa.struct !302
  store i8 4, ptr %8, align 8, !tbaa !303
  %110 = call zeroext i8 @BLI_testextensie(ptr noundef nonnull %6, ptr noundef nonnull @.str.40) #24
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %109
  %113 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #25
  %114 = add i64 %113, -4
  %115 = getelementptr inbounds [1024 x i8], ptr %6, i64 0, i64 %114
  store i8 0, ptr %115, align 1, !tbaa !128
  br label %116

116:                                              ; preds = %112, %109
  %117 = call i32 @BKE_add_image_extension(ptr noundef nonnull %6, ptr noundef nonnull %8) #24
  %118 = getelementptr inbounds %struct.ImBuf, ptr %92, i64 0, i32 4
  store i8 24, ptr %118, align 8, !tbaa !304
  %119 = call ptr @IMB_colormanagement_imbuf_for_write(ptr noundef %92, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %93, ptr noundef nonnull %94, ptr noundef nonnull %8) #24
  %120 = call i32 @BKE_imbuf_write_stamp(ptr noundef nonnull %2, ptr noundef %9, ptr noundef %92, ptr noundef nonnull %6, ptr noundef nonnull %8) #24
  %121 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, ptr noundef nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 248, ptr nonnull %8) #27
  br label %122

122:                                              ; preds = %98, %116, %104, %100
  call void @IMB_freeImBuf(ptr noundef %92) #24
  br label %123

123:                                              ; preds = %122, %83, %79, %58
  %124 = phi i32 [ %51, %58 ], [ 1, %83 ], [ 1, %79 ], [ %96, %122 ]
  call void @RE_ReleaseResultImage(ptr noundef nonnull %0) #26
  %125 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 15
  %126 = load double, ptr %125, align 8, !tbaa !182
  %127 = call double @PIL_check_seconds_timer() #24
  %128 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 14
  %129 = load double, ptr %128, align 8, !tbaa !126
  %130 = fsub double %127, %129
  store double %130, ptr %125, align 8, !tbaa !182
  call void @BLI_timestr(double noundef %130, ptr noundef nonnull %6, i64 noundef 1024) #24
  %131 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, ptr noundef nonnull %6) #26
  %132 = load ptr, ptr @G, align 8, !tbaa !113
  call void @BLI_callback_exec(ptr noundef %132, ptr noundef null, i32 noundef 4) #24
  %133 = load double, ptr %125, align 8, !tbaa !182
  %134 = fsub double %133, %126
  call void @BLI_timestr(double noundef %134, ptr noundef nonnull %6, i64 noundef 1024) #24
  %135 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, ptr noundef nonnull %6) #26
  %136 = load ptr, ptr @stdout, align 8, !tbaa !34
  %137 = call i32 @fputc(i32 noundef 10, ptr noundef %136) #26
  %138 = load ptr, ptr @stdout, align 8, !tbaa !34
  %139 = call i32 @fflush(ptr noundef %138) #26
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #27
  ret i32 %124
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_BlenderAnim(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = alloca %struct.RenderData, align 8
  %10 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 3984, ptr nonnull %9) #27
  %11 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3984) %9, ptr noundef nonnull align 8 dereferenceable(3984) %11, i64 3984, i1 false), !tbaa.struct !127
  %12 = load i8, ptr %11, align 8, !tbaa !277
  %13 = tail call ptr @BKE_movie_handle_get(i8 noundef zeroext %12) #24
  %14 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !276
  %16 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %17 = load ptr, ptr %16, align 8, !tbaa !211
  tail call void @BLI_callback_exec(ptr noundef %17, ptr noundef %2, i32 noundef 5) #24
  %18 = call fastcc i32 @render_initialize_from_main(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef %3, i32 noundef %4, i32 noundef 0) #26
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %239, label %20

20:                                               ; preds = %8
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !275
  %21 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 4
  %22 = load i16, ptr %21, align 8, !tbaa !305
  %23 = or i16 %22, 128
  store i16 %23, ptr %21, align 8, !tbaa !305
  %24 = load i8, ptr %11, align 8, !tbaa !277
  %25 = tail call zeroext i8 @BKE_imtype_is_movie(i8 noundef zeroext %24) #24
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %56, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45
  %29 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %30 = load i32, ptr %29, align 8, !tbaa !124
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
  %48 = load i32, ptr %47, align 4, !tbaa !67
  %49 = load i32, ptr %46, align 4, !tbaa !67
  %50 = load ptr, ptr %13, align 8, !tbaa !306
  %51 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 99
  %52 = load ptr, ptr %51, align 8, !tbaa !133
  %53 = tail call i32 %50(ptr noundef nonnull %2, ptr noundef nonnull %28, i32 noundef %49, i32 noundef %48, ptr noundef %52) #24
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !103
  br label %56

56:                                               ; preds = %45, %55, %20
  %57 = getelementptr inbounds %struct.bMovieHandle, ptr %13, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !307
  %59 = icmp eq ptr %58, null
  br i1 %59, label %71, label %60

60:                                               ; preds = %56
  %61 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !103
  %62 = icmp eq i8 %61, 1
  br i1 %62, label %216, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45
  %65 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 99
  %66 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 6
  %67 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 7
  %68 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 5
  %69 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %70 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  br label %83

71:                                               ; preds = %56
  store i32 %5, ptr %14, align 8, !tbaa !276
  %72 = icmp sgt i32 %5, %6
  br i1 %72, label %216, label %73

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 48
  %75 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 101
  %76 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 47
  %77 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 84
  %78 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 2
  %79 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 46
  %80 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 5
  %81 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %82 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  br label %124

83:                                               ; preds = %63, %120
  %84 = phi i32 [ 0, %63 ], [ %122, %120 ]
  %85 = load ptr, ptr %57, align 8, !tbaa !307
  %86 = load ptr, ptr %65, align 8, !tbaa !133
  %87 = tail call i32 %85(ptr noundef nonnull %64, ptr noundef %86) #24
  %88 = icmp sgt i32 %87, -1
  br i1 %88, label %89, label %111

89:                                               ; preds = %83
  %90 = load i32, ptr %66, align 4, !tbaa !296
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %111, label %92

92:                                               ; preds = %89
  %93 = load i32, ptr %67, align 8, !tbaa !308
  %94 = icmp sgt i32 %87, %93
  br i1 %94, label %111, label %95

95:                                               ; preds = %92
  store i32 %87, ptr %68, align 8, !tbaa !286
  store i32 %87, ptr %14, align 8, !tbaa !276
  %96 = load ptr, ptr %16, align 8, !tbaa !211
  tail call void @BLI_callback_exec(ptr noundef %96, ptr noundef nonnull %2, i32 noundef 2) #24
  tail call fastcc void @do_render_all_options(ptr noundef nonnull %0) #26
  %97 = add nsw i32 %84, 1
  %98 = load ptr, ptr %69, align 8, !tbaa !89
  %99 = load ptr, ptr %70, align 8, !tbaa !92
  %100 = tail call i32 %98(ptr noundef %99) #24
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %95
  %103 = tail call fastcc i32 @do_write_image_or_movie(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %13, ptr noundef null) #26
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !103
  br label %216

106:                                              ; preds = %102, %95
  %107 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !103
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %106
  %110 = load ptr, ptr %16, align 8, !tbaa !211
  tail call void @BLI_callback_exec(ptr noundef %110, ptr noundef nonnull %2, i32 noundef 3) #24
  br label %117

111:                                              ; preds = %92, %89, %83
  %112 = load ptr, ptr %69, align 8, !tbaa !89
  %113 = load ptr, ptr %70, align 8, !tbaa !92
  %114 = tail call i32 %112(ptr noundef %113) #24
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %111
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !103
  br label %216

117:                                              ; preds = %109, %111
  %118 = phi i32 [ %84, %111 ], [ %97, %109 ]
  %119 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !103
  br label %120

120:                                              ; preds = %117, %106
  %121 = phi i8 [ %119, %117 ], [ %107, %106 ]
  %122 = phi i32 [ %118, %117 ], [ %97, %106 ]
  %123 = icmp eq i8 %121, 1
  br i1 %123, label %216, label %83, !llvm.loop !309

124:                                              ; preds = %73, %209
  %125 = phi i32 [ %5, %73 ], [ %212, %209 ]
  %126 = phi i32 [ 0, %73 ], [ %211, %209 ]
  %127 = phi i32 [ 0, %73 ], [ %210, %209 ]
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %10) #27
  %128 = call fastcc i32 @render_initialize_from_main(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %1, ptr noundef nonnull %2, ptr noundef null, ptr noundef %3, i32 noundef %4, i32 noundef 1) #26
  %129 = load i32, ptr %14, align 8, !tbaa !276
  %130 = icmp eq i32 %125, %129
  br i1 %130, label %137, label %131

131:                                              ; preds = %124
  %132 = load i32, ptr %74, align 8, !tbaa !282
  %133 = and i32 %132, -16777216
  %134 = icmp eq i32 %133, 0
  %135 = select i1 %134, i32 %132, i32 %133
  %136 = load ptr, ptr %75, align 8, !tbaa !80
  call void @BKE_scene_update_for_newframe(ptr noundef %136, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %135) #24
  br label %209

137:                                              ; preds = %124
  %138 = add nsw i32 %125, %7
  %139 = load i8, ptr %11, align 8, !tbaa !277
  %140 = call zeroext i8 @BKE_imtype_is_movie(i8 noundef zeroext %139) #24
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %142, label %174

142:                                              ; preds = %137
  %143 = load i32, ptr %76, align 8, !tbaa !228
  %144 = and i32 %143, 12582912
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %153, label %146

146:                                              ; preds = %142
  %147 = load i32, ptr %14, align 8, !tbaa !276
  %148 = load i32, ptr %79, align 4, !tbaa !267
  %149 = trunc i32 %148 to i8
  %150 = lshr i8 %149, 4
  %151 = and i8 %150, 1
  call void @BKE_makepicstring(ptr noundef nonnull %10, ptr noundef nonnull %77, ptr noundef nonnull %78, i32 noundef %147, ptr noundef nonnull %11, i8 noundef zeroext %151, i8 noundef zeroext 1) #24
  %152 = load i32, ptr %76, align 8, !tbaa !228
  br label %153

153:                                              ; preds = %146, %142
  %154 = phi i32 [ %152, %146 ], [ %143, %142 ]
  %155 = and i32 %154, 4194304
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %165, label %157

157:                                              ; preds = %153
  %158 = call i32 @BLI_exists(ptr noundef nonnull %10) #24
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %157
  %161 = load i32, ptr %76, align 8, !tbaa !228
  br label %165

162:                                              ; preds = %157
  %163 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef nonnull %10) #26
  %164 = add nsw i32 %126, 1
  br label %209

165:                                              ; preds = %160, %153
  %166 = phi i32 [ %161, %160 ], [ %154, %153 ]
  %167 = and i32 %166, 8388608
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %174, label %169

169:                                              ; preds = %165
  %170 = call i32 @BLI_exists(ptr noundef nonnull %10) #24
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %169
  call void @BLI_make_existing_file(ptr noundef nonnull %10) #24
  %173 = call zeroext i8 @BLI_file_touch(ptr noundef nonnull %10) #24
  br label %174

174:                                              ; preds = %165, %169, %172, %137
  %175 = load i32, ptr %14, align 8, !tbaa !276
  store i32 %175, ptr %80, align 8, !tbaa !286
  %176 = load ptr, ptr %16, align 8, !tbaa !211
  call void @BLI_callback_exec(ptr noundef %176, ptr noundef nonnull %2, i32 noundef 2) #24
  call fastcc void @do_render_all_options(ptr noundef %0) #26
  %177 = add nsw i32 %127, 1
  %178 = load ptr, ptr %81, align 8, !tbaa !89
  %179 = load ptr, ptr %82, align 8, !tbaa !92
  %180 = call i32 %178(ptr noundef %179) #24
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %192

182:                                              ; preds = %174
  %183 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !103
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %182
  %186 = call fastcc i32 @do_write_image_or_movie(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %13, ptr noundef null) #26
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %192, label %188

188:                                              ; preds = %185
  %189 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !103
  br label %190

190:                                              ; preds = %188, %182
  %191 = phi i8 [ %189, %188 ], [ %183, %182 ]
  switch i8 %191, label %209 [
    i8 1, label %193
    i8 0, label %206
  ]

192:                                              ; preds = %174, %185
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !103
  br label %193

193:                                              ; preds = %190, %192
  %194 = load i8, ptr %11, align 8, !tbaa !277
  %195 = call zeroext i8 @BKE_imtype_is_movie(i8 noundef zeroext %194) #24
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %197, label %208

197:                                              ; preds = %193
  %198 = load i32, ptr %76, align 8, !tbaa !228
  %199 = and i32 %198, 8388608
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %208, label %201

201:                                              ; preds = %197
  %202 = call i64 @BLI_file_size(ptr noundef nonnull %10) #24
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %201
  %205 = call i32 @BLI_delete(ptr noundef nonnull %10, i8 noundef zeroext 0, i8 noundef zeroext 0) #24
  br label %208

206:                                              ; preds = %190
  %207 = load ptr, ptr %16, align 8, !tbaa !211
  call void @BLI_callback_exec(ptr noundef %207, ptr noundef nonnull %2, i32 noundef 3) #24
  br label %209

208:                                              ; preds = %197, %201, %204, %193
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %10) #27
  br label %216

209:                                              ; preds = %131, %162, %190, %206
  %210 = phi i32 [ %127, %131 ], [ %127, %162 ], [ %177, %190 ], [ %177, %206 ]
  %211 = phi i32 [ %126, %131 ], [ %164, %162 ], [ %126, %190 ], [ %126, %206 ]
  %212 = phi i32 [ %125, %131 ], [ %138, %162 ], [ %138, %190 ], [ %138, %206 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %10) #27
  %213 = load i32, ptr %14, align 8, !tbaa !276
  %214 = add nsw i32 %213, 1
  store i32 %214, ptr %14, align 8, !tbaa !276
  %215 = icmp slt i32 %213, %6
  br i1 %215, label %124, label %216, !llvm.loop !310

216:                                              ; preds = %120, %209, %116, %105, %60, %71, %208
  %217 = phi i32 [ %177, %208 ], [ 0, %71 ], [ 0, %60 ], [ %97, %105 ], [ %84, %116 ], [ %210, %209 ], [ %122, %120 ]
  %218 = phi i32 [ %126, %208 ], [ 0, %71 ], [ 0, %60 ], [ 0, %105 ], [ 0, %116 ], [ %211, %209 ], [ 0, %120 ]
  %219 = load i8, ptr %11, align 8, !tbaa !277
  %220 = call zeroext i8 @BKE_imtype_is_movie(i8 noundef zeroext %219) #24
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %225, label %222

222:                                              ; preds = %216
  %223 = getelementptr inbounds %struct.bMovieHandle, ptr %13, i64 0, i32 2
  %224 = load ptr, ptr %223, align 8, !tbaa !311
  call void %224() #24
  br label %225

225:                                              ; preds = %222, %216
  %226 = icmp ne i32 %218, 0
  %227 = icmp eq i32 %217, 0
  %228 = select i1 %226, i1 %227, i1 false
  br i1 %228, label %229, label %232

229:                                              ; preds = %225
  %230 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 99
  %231 = load ptr, ptr %230, align 8, !tbaa !133
  call void @BKE_report(ptr noundef %231, i32 noundef 2, ptr noundef nonnull @.str.15) #24
  br label %232

232:                                              ; preds = %229, %225
  store i32 %15, ptr %14, align 8, !tbaa !276
  %233 = load i16, ptr %21, align 8, !tbaa !305
  %234 = and i16 %233, -129
  store i16 %234, ptr %21, align 8, !tbaa !305
  %235 = load ptr, ptr %16, align 8, !tbaa !211
  %236 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !103
  %237 = icmp eq i8 %236, 0
  %238 = select i1 %237, i32 6, i32 7
  call void @BLI_callback_exec(ptr noundef %235, ptr noundef nonnull %2, i32 noundef %238) #24
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !275
  br label %239

239:                                              ; preds = %8, %232
  call void @llvm.lifetime.end.p0(i64 3984, ptr nonnull %9) #27
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_movie_handle_get(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_scene_update_for_newframe(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BLI_exists(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_make_existing_file(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BLI_file_touch(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @BLI_file_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BLI_delete(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_PreviewRender(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22
  %5 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 30
  %6 = load i16, ptr %5, align 2, !tbaa !230
  %7 = sext i16 %6 to i32
  %8 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 33
  %9 = load i32, ptr %8, align 4, !tbaa !312
  %10 = mul nsw i32 %9, %7
  %11 = sdiv i32 %10, 100
  %12 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 34
  %13 = load i32, ptr %12, align 8, !tbaa !313
  %14 = mul nsw i32 %13, %7
  %15 = sdiv i32 %14, 100
  tail call void @RE_InitState(ptr noundef %0, ptr noundef null, ptr noundef nonnull %4, ptr noundef null, i32 noundef %11, i32 noundef %15, ptr noundef null) #26
  %16 = tail call ptr @BKE_image_pool_new() #24
  %17 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 100
  store ptr %16, ptr %17, align 8, !tbaa !287
  %18 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  store ptr %1, ptr %18, align 8, !tbaa !211
  %19 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  store ptr %2, ptr %19, align 8, !tbaa !66
  %20 = tail call zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef %2) #24
  %21 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 8
  store i8 %20, ptr %21, align 8, !tbaa !212
  %22 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 12
  %23 = load i32, ptr %22, align 8, !tbaa !281
  %24 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 48
  store i32 %23, ptr %24, align 8, !tbaa !282
  %25 = tail call ptr @RE_GetCamera(ptr noundef %0) #24
  tail call void @RE_SetCamera(ptr noundef %0, ptr noundef %25) #24
  tail call fastcc void @do_render_3d(ptr noundef %0) #26
  %26 = load ptr, ptr %17, align 8, !tbaa !287
  tail call void @BKE_image_pool_free(ptr noundef %26) #24
  store ptr null, ptr %17, align 8, !tbaa !287
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_image_pool_new() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RE_GetCamera(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RE_SetCamera(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_render_3d(ptr noundef %0) unnamed_addr #0 !PGOFuncName !314 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 88
  %3 = load ptr, ptr %2, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 89
  %5 = load ptr, ptr %4, align 8, !tbaa !171
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  tail call void %3(ptr noundef %5, ptr noundef %7) #24
  %8 = tail call i32 @RE_engine_render(ptr noundef %0, i32 noundef 0) #24
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %62

10:                                               ; preds = %1
  tail call void @RE_parts_clamp(ptr noundef nonnull %0) #24
  %11 = load ptr, ptr %6, align 8, !tbaa !66
  %12 = getelementptr inbounds %struct.Scene, ptr %11, i64 0, i32 22, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !276
  %14 = sitofp i32 %13 to double
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 58
  %16 = load float, ptr %15, align 8, !tbaa !315
  %17 = fpext float %16 to double
  %18 = fadd double %14, %17
  %19 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 59
  %20 = load float, ptr %19, align 4, !tbaa !316
  %21 = fpext float %20 to double
  %22 = fadd double %18, %21
  tail call void @BKE_scene_frame_set(ptr noundef %11, double noundef %22) #24
  %23 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 94
  %24 = load ptr, ptr %23, align 8, !tbaa !173
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %10
  %27 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 95
  %28 = load ptr, ptr %27, align 8, !tbaa !174
  tail call void %24(ptr noundef %28, i32 noundef 1) #24
  br label %29

29:                                               ; preds = %26, %10
  %30 = tail call fastcc i32 @render_scene_needs_vector(ptr noundef nonnull %0) #26, !range !185
  %31 = icmp eq i32 %30, 0
  %32 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %33 = load ptr, ptr %32, align 8, !tbaa !211
  %34 = load ptr, ptr %6, align 8, !tbaa !66
  %35 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 48
  %36 = load i32, ptr %35, align 8, !tbaa !282
  br i1 %31, label %38, label %37

37:                                               ; preds = %29
  tail call void @RE_Database_FromScene_Vectors(ptr noundef nonnull %0, ptr noundef %33, ptr noundef %34, i32 noundef %36) #24
  br label %39

38:                                               ; preds = %29
  tail call void @RE_Database_FromScene(ptr noundef nonnull %0, ptr noundef %33, ptr noundef %34, i32 noundef %36, i32 noundef 1) #24
  tail call void @RE_Database_Preprocess(ptr noundef nonnull %0) #24
  br label %39

39:                                               ; preds = %38, %37
  %40 = load ptr, ptr %23, align 8, !tbaa !173
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 95
  %44 = load ptr, ptr %43, align 8, !tbaa !174
  tail call void %40(ptr noundef %44, i32 noundef 0) #24
  br label %45

45:                                               ; preds = %42, %39
  tail call fastcc void @threaded_tile_processor(ptr noundef nonnull %0) #26
  %46 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 4
  %47 = load i16, ptr %46, align 8, !tbaa !305
  %48 = and i16 %47, 2
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %52 = load ptr, ptr %51, align 8, !tbaa !89
  %53 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %54 = load ptr, ptr %53, align 8, !tbaa !92
  %55 = tail call i32 %52(ptr noundef %54) #24
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  tail call void @add_halo_flare(ptr noundef nonnull %0) #24
  br label %58

58:                                               ; preds = %50, %57, %45
  tail call void @RE_Database_Free(ptr noundef nonnull %0) #24
  %59 = load ptr, ptr %6, align 8, !tbaa !66
  %60 = getelementptr inbounds %struct.Scene, ptr %59, i64 0, i32 22, i32 5
  store i32 %13, ptr %60, align 8, !tbaa !276
  %61 = getelementptr inbounds %struct.Scene, ptr %59, i64 0, i32 22, i32 8
  store float 0.000000e+00, ptr %61, align 4, !tbaa !317
  br label %62

62:                                               ; preds = %1, %58
  ret void
}

; Function Attrs: optsize
declare void @BKE_image_pool_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @render_result_exr_file_cache_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BKE_render_num_threads(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_layer_load_from_file(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @IMB_loadiffname(ptr noundef %2, i32 noundef 1, ptr noundef null) #24
  %7 = icmp eq ptr %6, null
  br i1 %7, label %84, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !290
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !318
  %15 = icmp eq ptr %14, null
  br i1 %15, label %84, label %16

16:                                               ; preds = %12, %8
  %17 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !297
  %19 = getelementptr inbounds %struct.RenderLayer, ptr %0, i64 0, i32 15
  %20 = load i32, ptr %19, align 8, !tbaa !319
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !298
  %25 = getelementptr inbounds %struct.RenderLayer, ptr %0, i64 0, i32 16
  %26 = load i32, ptr %25, align 4, !tbaa !320
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 9
  %30 = load ptr, ptr %29, align 8, !tbaa !318
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  tail call void @IMB_float_from_rect(ptr noundef nonnull %6) #24
  %33 = load ptr, ptr %29, align 8, !tbaa !318
  %34 = load i32, ptr %19, align 8, !tbaa !319
  %35 = load i32, ptr %25, align 4, !tbaa !320
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi i32 [ %35, %32 ], [ %24, %28 ]
  %38 = phi i32 [ %34, %32 ], [ %18, %28 ]
  %39 = phi ptr [ %33, %32 ], [ %30, %28 ]
  %40 = getelementptr inbounds %struct.RenderLayer, ptr %0, i64 0, i32 11
  %41 = load ptr, ptr %40, align 8, !tbaa !70
  %42 = sext i32 %38 to i64
  %43 = shl nsw i64 %42, 4
  %44 = sext i32 %37 to i64
  %45 = mul i64 %43, %44
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %41, ptr align 4 %39, i64 %45, i1 false)
  br label %83

46:                                               ; preds = %22, %16
  %47 = sub nsw i32 %18, %3
  %48 = icmp slt i32 %47, %20
  br i1 %48, label %82, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 3
  %51 = load i32, ptr %50, align 4, !tbaa !298
  %52 = sub nsw i32 %51, %4
  %53 = getelementptr inbounds %struct.RenderLayer, ptr %0, i64 0, i32 16
  %54 = load i32, ptr %53, align 4, !tbaa !320
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %82, label %56

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 9
  %58 = load ptr, ptr %57, align 8, !tbaa !318
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  tail call void @IMB_float_from_rect(ptr noundef nonnull %6) #24
  %61 = load i32, ptr %19, align 8, !tbaa !319
  %62 = load i32, ptr %53, align 4, !tbaa !320
  br label %63

63:                                               ; preds = %60, %56
  %64 = phi i32 [ %62, %60 ], [ %54, %56 ]
  %65 = phi i32 [ %61, %60 ], [ %20, %56 ]
  %66 = tail call ptr @IMB_allocImBuf(i32 noundef %65, i32 noundef %64, i8 noundef zeroext 32, i32 noundef 32) #24
  %67 = icmp eq ptr %66, null
  br i1 %67, label %81, label %68

68:                                               ; preds = %63
  %69 = load i32, ptr %19, align 8, !tbaa !319
  %70 = load i32, ptr %53, align 4, !tbaa !320
  tail call void @IMB_rectcpy(ptr noundef nonnull %66, ptr noundef nonnull %6, i32 noundef 0, i32 noundef 0, i32 noundef %3, i32 noundef %4, i32 noundef %69, i32 noundef %70) #24
  %71 = getelementptr inbounds %struct.RenderLayer, ptr %0, i64 0, i32 11
  %72 = load ptr, ptr %71, align 8, !tbaa !70
  %73 = getelementptr inbounds %struct.ImBuf, ptr %66, i64 0, i32 9
  %74 = load ptr, ptr %73, align 8, !tbaa !318
  %75 = load i32, ptr %19, align 8, !tbaa !319
  %76 = sext i32 %75 to i64
  %77 = shl nsw i64 %76, 4
  %78 = load i32, ptr %53, align 4, !tbaa !320
  %79 = sext i32 %78 to i64
  %80 = mul i64 %77, %79
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %72, ptr align 4 %74, i64 %80, i1 false)
  tail call void @IMB_freeImBuf(ptr noundef nonnull %66) #24
  br label %83

81:                                               ; preds = %63
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.16, ptr noundef %2) #24
  br label %83

82:                                               ; preds = %49, %46
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.17, ptr noundef %2) #24
  br label %83

83:                                               ; preds = %68, %81, %82, %36
  tail call void @IMB_freeImBuf(ptr noundef nonnull %6) #24
  br label %85

84:                                               ; preds = %12, %5
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.18, ptr noundef %2) #24
  br label %85

85:                                               ; preds = %84, %83
  ret void
}

; Function Attrs: optsize
declare ptr @IMB_loadiffname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @IMB_float_from_rect(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @IMB_rectcpy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_result_load_from_file(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @render_result_exr_file_read_path(ptr noundef %0, ptr noundef null, ptr noundef %2) #24
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.18, ptr noundef %2) #24
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: optsize
declare i32 @render_result_exr_file_read_path(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @RE_WriteEnvmapResult(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i8 noundef zeroext %4, ptr nocapture noundef readonly %5) local_unnamed_addr #0 {
  %7 = alloca %struct.ImageFormatData, align 8
  %8 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 248, ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %8) #27
  %9 = getelementptr inbounds %struct.EnvMap, ptr %2, i64 0, i32 2, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  tail call void @BKE_report(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.19) #24
  br label %78

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %7, ptr noundef nonnull align 8 dereferenceable(248) %14, i64 248, i1 false), !tbaa.struct !302
  store i8 %4, ptr %7, align 8, !tbaa !303
  %15 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !297
  %17 = getelementptr inbounds %struct.EnvMap, ptr %2, i64 0, i32 5
  %18 = load i16, ptr %17, align 4, !tbaa !321
  switch i16 %18, label %65 [
    i16 0, label %19
    i16 1, label %62
  ]

19:                                               ; preds = %13, %19
  %20 = phi i64 [ %34, %19 ], [ 0, %13 ]
  %21 = phi i32 [ %33, %19 ], [ 0, %13 ]
  %22 = phi i32 [ %27, %19 ], [ 0, %13 ]
  %23 = getelementptr inbounds float, ptr %5, i64 %20
  %24 = load float, ptr %23, align 4, !tbaa !130
  %25 = fptosi float %24 to i32
  %26 = add nsw i32 %25, 1
  %27 = tail call fastcc i32 @max_ii(i32 noundef %22, i32 noundef %26) #26
  %28 = or disjoint i64 %20, 1
  %29 = getelementptr inbounds float, ptr %5, i64 %28
  %30 = load float, ptr %29, align 4, !tbaa !130
  %31 = fptosi float %30 to i32
  %32 = add nsw i32 %31, 1
  %33 = tail call fastcc i32 @max_ii(i32 noundef %21, i32 noundef %32) #26
  %34 = add nuw nsw i64 %20, 2
  %35 = icmp ult i64 %20, 10
  br i1 %35, label %19, label %36, !llvm.loop !323

36:                                               ; preds = %19
  %37 = mul nsw i32 %27, %16
  %38 = mul nsw i32 %33, %16
  %39 = tail call ptr @IMB_allocImBuf(i32 noundef %37, i32 noundef %38, i8 noundef zeroext 24, i32 noundef 32) #24
  %40 = sitofp i32 %16 to float
  br label %41

41:                                               ; preds = %36, %59
  %42 = phi i64 [ 0, %36 ], [ %60, %59 ]
  %43 = getelementptr inbounds float, ptr %5, i64 %42
  %44 = load float, ptr %43, align 4, !tbaa !130
  %45 = fcmp ogt float %44, -1.000000e+00
  br i1 %45, label %46, label %59

46:                                               ; preds = %41
  %47 = or disjoint i64 %42, 1
  %48 = getelementptr inbounds float, ptr %5, i64 %47
  %49 = load float, ptr %48, align 4, !tbaa !130
  %50 = fcmp ogt float %49, -1.000000e+00
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = lshr exact i64 %42, 1
  %53 = getelementptr inbounds %struct.EnvMap, ptr %2, i64 0, i32 2, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !34
  %55 = fmul float %44, %40
  %56 = fptosi float %55 to i32
  %57 = fmul float %49, %40
  %58 = fptosi float %57 to i32
  tail call void @IMB_rectcpy(ptr noundef %39, ptr noundef %54, i32 noundef %56, i32 noundef %58, i32 noundef 0, i32 noundef 0, i32 noundef %16, i32 noundef %16) #24
  br label %59

59:                                               ; preds = %41, %46, %51
  %60 = add nuw nsw i64 %42, 2
  %61 = icmp ult i64 %42, 10
  br i1 %61, label %41, label %66, !llvm.loop !324

62:                                               ; preds = %13
  %63 = tail call ptr @IMB_allocImBuf(i32 noundef %16, i32 noundef %16, i8 noundef zeroext 24, i32 noundef 32) #24
  %64 = load ptr, ptr %9, align 8, !tbaa !34
  tail call void @IMB_rectcpy(ptr noundef %63, ptr noundef %64, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %16, i32 noundef %16) #24
  br label %66

65:                                               ; preds = %13
  tail call void @BKE_report(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.20) #24
  br label %78

66:                                               ; preds = %59, %62
  %67 = phi ptr [ %63, %62 ], [ %39, %59 ]
  %68 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 44
  %69 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 45
  %70 = call ptr @IMB_colormanagement_imbuf_for_write(ptr noundef %67, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %68, ptr noundef nonnull %69, ptr noundef nonnull %7) #24
  %71 = call ptr @BLI_strncpy(ptr noundef nonnull %8, ptr noundef %3, i64 noundef 1024) #24
  %72 = load ptr, ptr @G, align 8, !tbaa !113
  %73 = getelementptr inbounds %struct.Main, ptr %72, i64 0, i32 2
  %74 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %8, ptr noundef nonnull %73) #24
  %75 = call i32 @BKE_imbuf_write(ptr noundef %67, ptr noundef nonnull %8, ptr noundef nonnull %7) #24
  call void @IMB_freeImBuf(ptr noundef %67) #24
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %66
  call void @BKE_report(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.21) #24
  br label %78

78:                                               ; preds = %66, %77, %65, %12
  %79 = phi i8 [ 0, %12 ], [ 0, %77 ], [ 0, %65 ], [ 1, %66 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(i64 248, ptr nonnull %7) #27
  ret i8 %79
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #10 !PGOFuncName !325 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %0)
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @IMB_colormanagement_imbuf_for_write(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BLI_path_abs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BKE_imbuf_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !326 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !327
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !328
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @render_result_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !329 {
  %3 = load float, ptr %1, align 4, !tbaa !130
  store float %3, ptr %0, align 4, !tbaa !130
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !130
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !130
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !130
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !130
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !130
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !130
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @render_display_update_enabled(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !330 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 75
  %3 = load ptr, ptr %2, align 8, !tbaa !184
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %7 = load i32, ptr %6, align 4, !tbaa !135
  %8 = and i32 %7, 524296
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %1, %5
  %12 = phi i32 [ %10, %5 ], [ 1, %1 ]
  ret i32 %12
}

; Function Attrs: optsize
declare ptr @render_result_new_full_sample(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RE_parts_init(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @render_result_exr_file_begin(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn memory(readwrite, argmem: none) uwtable
define internal i32 @thread_break(ptr nocapture readnone %0) #18 !PGOFuncName !331 {
  %2 = load volatile i32, ptr @g_break, align 4, !tbaa !67
  ret i32 %2
}

; Function Attrs: optsize
declare ptr @BLI_thread_queue_init() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @find_next_pano_slice(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !PGOFuncName !332 {
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %6 = load i32, ptr %5, align 4, !tbaa !142
  store i32 %6, ptr %2, align 4, !tbaa !67
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %8 = load i32, ptr %7, align 8, !tbaa !124
  %9 = and i32 %8, 1024
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = load i32, ptr %1, align 4, !tbaa !67
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i8
  br label %78

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 50
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %75, label %19

19:                                               ; preds = %15, %36
  %20 = phi i32 [ %37, %36 ], [ %6, %15 ]
  %21 = phi ptr [ %40, %36 ], [ %17, %15 ]
  %22 = phi i8 [ %39, %36 ], [ 0, %15 ]
  %23 = phi ptr [ %38, %36 ], [ null, %15 ]
  %24 = getelementptr inbounds %struct.RenderPart, ptr %21, i64 0, i32 18
  %25 = load i16, ptr %24, align 2, !tbaa !203
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.RenderPart, ptr %21, i64 0, i32 16
  %29 = load i32, ptr %28, align 8, !tbaa !190
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.RenderPart, ptr %21, i64 0, i32 13
  %33 = load i32, ptr %32, align 8, !tbaa !333
  %34 = icmp slt i32 %33, %20
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 %33, ptr %2, align 4, !tbaa !67
  br label %36

36:                                               ; preds = %19, %27, %35, %31
  %37 = phi i32 [ %33, %35 ], [ %20, %31 ], [ %20, %27 ], [ %20, %19 ]
  %38 = phi ptr [ %21, %35 ], [ %23, %31 ], [ %23, %27 ], [ %23, %19 ]
  %39 = phi i8 [ 1, %35 ], [ %22, %31 ], [ %22, %27 ], [ %22, %19 ]
  %40 = load ptr, ptr %21, align 8, !tbaa !34
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %19, !llvm.loop !334

42:                                               ; preds = %36
  %43 = icmp eq ptr %38, null
  br i1 %43, label %75, label %44

44:                                               ; preds = %42
  %45 = tail call float @panorama_pixel_rot(ptr noundef %0) #26
  %46 = load i32, ptr %5, align 4, !tbaa !142
  %47 = getelementptr inbounds %struct.RenderPart, ptr %38, i64 0, i32 13
  %48 = load i32, ptr %47, align 8, !tbaa !333
  %49 = getelementptr inbounds %struct.RenderPart, ptr %38, i64 0, i32 13, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !335
  %51 = add i32 %48, %50
  %52 = sub i32 %46, %51
  %53 = sdiv i32 %52, 2
  %54 = sitofp i32 %53 to float
  store float %54, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 28), align 8, !tbaa !336
  %55 = tail call fastcc float @BLI_rctf_size_x(ptr noundef %3) #26
  %56 = fmul float %55, %54
  %57 = sitofp i32 %46 to float
  %58 = fdiv float %56, %57
  store float %58, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 29), align 4, !tbaa !337
  %59 = load <2 x float>, ptr %3, align 4, !tbaa !130
  %60 = insertelement <2 x float> poison, float %58, i64 0
  %61 = shufflevector <2 x float> %60, <2 x float> poison, <2 x i32> zeroinitializer
  %62 = fadd <2 x float> %59, %61
  store <2 x float> %62, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 16), align 4, !tbaa !130
  %63 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 36), align 8, !tbaa !165
  %64 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 37), align 4, !tbaa !166
  tail call void @RE_SetWindow(ptr noundef %0, ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 16), float noundef %63, float noundef %64) #26
  %65 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35
  tail call void @copy_m4_m4(ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35), ptr noundef nonnull %65) #24
  %66 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 28), align 8, !tbaa !336
  %67 = fneg float %66
  %68 = fmul float %45, %67
  tail call void @project_renderdata(ptr noundef %0, ptr noundef nonnull @projectverto, i8 noundef zeroext 1, float noundef %68, i8 noundef zeroext 1) #24
  %69 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 28), align 8, !tbaa !336
  %70 = fmul float %45, %69
  %71 = tail call float @sinf(float noundef %70) #24
  store float %71, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 26), align 8, !tbaa !338
  %72 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 28), align 8, !tbaa !336
  %73 = fmul float %45, %72
  %74 = tail call float @cosf(float noundef %73) #24
  store float %74, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 27), align 4, !tbaa !339
  br label %75

75:                                               ; preds = %15, %44, %42
  %76 = phi i8 [ %39, %44 ], [ %39, %42 ], [ 0, %15 ]
  %77 = load i32, ptr %1, align 4, !tbaa !67
  br label %78

78:                                               ; preds = %75, %11
  %79 = phi i32 [ %12, %11 ], [ %77, %75 ]
  %80 = phi i8 [ %14, %11 ], [ %76, %75 ]
  %81 = add nsw i32 %79, 1
  store i32 %81, ptr %1, align 4, !tbaa !67
  ret i8 %80
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc ptr @find_next_part(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #19 !PGOFuncName !340 {
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %4 = load i32, ptr %3, align 4, !tbaa !142
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  %6 = load i32, ptr %5, align 8, !tbaa !143
  %7 = sext i32 %4 to i64
  %8 = sext i32 %6 to i64
  %9 = mul nsw i64 %8, %7
  %10 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 50
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %86, label %13

13:                                               ; preds = %2
  %14 = sdiv i32 %6, 2
  %15 = sext i32 %14 to i64
  %16 = sdiv i32 %4, 2
  %17 = sext i32 %16 to i64
  br label %18

18:                                               ; preds = %13, %35
  %19 = phi ptr [ %39, %35 ], [ %11, %13 ]
  %20 = phi i64 [ %38, %35 ], [ 1, %13 ]
  %21 = phi i64 [ %37, %35 ], [ %15, %13 ]
  %22 = phi i64 [ %36, %35 ], [ %17, %13 ]
  %23 = getelementptr inbounds %struct.RenderPart, ptr %19, i64 0, i32 18
  %24 = load i16, ptr %23, align 2, !tbaa !203
  %25 = icmp eq i16 %24, 2
  br i1 %25, label %26, label %35

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.RenderPart, ptr %19, i64 0, i32 13
  %28 = tail call fastcc i32 @BLI_rcti_cent_x(ptr noundef nonnull %27) #26, !range !341
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %22, %29
  %31 = tail call fastcc i32 @BLI_rcti_cent_y(ptr noundef nonnull %27) #26, !range !341
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %21, %32
  %34 = add nsw i64 %20, 1
  br label %35

35:                                               ; preds = %18, %26
  %36 = phi i64 [ %30, %26 ], [ %22, %18 ]
  %37 = phi i64 [ %33, %26 ], [ %21, %18 ]
  %38 = phi i64 [ %34, %26 ], [ %20, %18 ]
  %39 = load ptr, ptr %19, align 8, !tbaa !34
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %18, !llvm.loop !342

41:                                               ; preds = %35
  %42 = sdiv i64 %36, %38
  %43 = sdiv i64 %37, %38
  br i1 %12, label %86, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  br label %46

46:                                               ; preds = %44, %81
  %47 = phi ptr [ %11, %44 ], [ %84, %81 ]
  %48 = phi i64 [ %9, %44 ], [ %83, %81 ]
  %49 = phi ptr [ null, %44 ], [ %82, %81 ]
  %50 = getelementptr inbounds %struct.RenderPart, ptr %47, i64 0, i32 18
  %51 = load i16, ptr %50, align 2, !tbaa !203
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %53, label %81

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.RenderPart, ptr %47, i64 0, i32 16
  %55 = load i32, ptr %54, align 8, !tbaa !190
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %81

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.RenderPart, ptr %47, i64 0, i32 13
  %59 = tail call fastcc i32 @BLI_rcti_cent_x(ptr noundef nonnull %58) #26, !range !341
  %60 = sext i32 %59 to i64
  %61 = sub nsw i64 %42, %60
  %62 = tail call fastcc i32 @BLI_rcti_cent_y(ptr noundef nonnull %58) #26, !range !341
  %63 = sext i32 %62 to i64
  %64 = sub nsw i64 %43, %63
  %65 = mul nsw i64 %61, %61
  %66 = mul nsw i64 %64, %64
  %67 = add nuw nsw i64 %66, %65
  %68 = sitofp i64 %67 to double
  %69 = tail call double @sqrt(double noundef %68) #24
  %70 = fptosi double %69 to i64
  %71 = icmp sgt i64 %48, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %57
  %73 = load i32, ptr %45, align 8, !tbaa !124
  %74 = and i32 %73, 1024
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %72
  %77 = load i32, ptr %58, align 8, !tbaa !333
  %78 = icmp eq i32 %77, %1
  %79 = select i1 %78, ptr %47, ptr %49
  %80 = select i1 %78, i64 %70, i64 %48
  br label %81

81:                                               ; preds = %76, %57, %72, %46, %53
  %82 = phi ptr [ %49, %53 ], [ %49, %46 ], [ %49, %57 ], [ %79, %76 ], [ %47, %72 ]
  %83 = phi i64 [ %48, %53 ], [ %48, %46 ], [ %48, %57 ], [ %80, %76 ], [ %70, %72 ]
  %84 = load ptr, ptr %47, align 8, !tbaa !34
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %46, !llvm.loop !343

86:                                               ; preds = %81, %2, %41
  %87 = phi ptr [ null, %41 ], [ null, %2 ], [ %82, %81 ]
  ret ptr %87
}

; Function Attrs: optsize
declare void @BLI_thread_queue_push(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_thread_queue_nowait(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_init_threads(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @do_render_thread(ptr nocapture noundef readonly %0) #0 !PGOFuncName !344 {
  %2 = getelementptr inbounds %struct.RenderThread, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.RenderThread, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %struct.RenderThread, ptr %0, i64 0, i32 4
  %5 = getelementptr inbounds %struct.RenderThread, ptr %0, i64 0, i32 1
  br label %6

6:                                                ; preds = %20, %1
  %7 = load ptr, ptr %0, align 8, !tbaa !193
  %8 = tail call ptr @BLI_thread_queue_pop(ptr noundef %7) #24
  %9 = icmp eq ptr %8, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr %2, align 8, !tbaa !196
  %12 = trunc i32 %11 to i16
  %13 = getelementptr inbounds %struct.RenderPart, ptr %8, i64 0, i32 20
  store i16 %12, ptr %13, align 2, !tbaa !345
  tail call fastcc void @do_part_thread(ptr noundef nonnull %8) #26
  %14 = load ptr, ptr %3, align 8, !tbaa !197
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %10
  %17 = load ptr, ptr %4, align 8, !tbaa !198
  %18 = getelementptr inbounds %struct.RenderPart, ptr %8, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !200
  tail call void %14(ptr noundef %17, ptr noundef %19, ptr noundef null) #24
  br label %20

20:                                               ; preds = %16, %10
  %21 = load ptr, ptr %5, align 8, !tbaa !195
  tail call void @BLI_thread_queue_push(ptr noundef %21, ptr noundef nonnull %8) #24
  %22 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 96), align 8, !tbaa !89
  %23 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 97), align 8, !tbaa !92
  %24 = tail call i32 %22(ptr noundef %23) #24
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %6, label %26, !llvm.loop !346

26:                                               ; preds = %20, %6
  ret ptr null
}

; Function Attrs: optsize
declare void @BLI_insert_thread(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_thread_queue_pop_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_part_stats(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !347 {
  %3 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #27
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %5 = load ptr, ptr %4, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4, i64 2
  %7 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 16
  %8 = load i32, ptr %7, align 8, !tbaa !190
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98
  %10 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !202
  %12 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 64, ptr noundef nonnull @.str.28, ptr noundef nonnull %6, i32 noundef %8, i32 noundef %11) #24
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 16
  store ptr %3, ptr %13, align 8, !tbaa !348
  %14 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 90
  %15 = load ptr, ptr %14, align 8, !tbaa !172
  %16 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 91
  %17 = load ptr, ptr %16, align 8, !tbaa !94
  call void %15(ptr noundef %17, ptr noundef nonnull %9) #24
  store ptr null, ptr %13, align 8, !tbaa !348
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #27
  ret void
}

; Function Attrs: optsize
declare void @render_result_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_end_threads(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_thread_queue_pop(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_thread_queue_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @render_result_exr_file_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @render_result_exr_file_cache_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RE_parts_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @project_renderdata(ptr noundef, ptr noundef, i8 noundef zeroext, float noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @projectverto(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_cent_x(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !349 {
  %2 = load i32, ptr %0, align 4, !tbaa !178
  %3 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !177
  %5 = add nsw i32 %4, %2
  %6 = sdiv i32 %5, 2
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_cent_y(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !350 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !328
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !327
  %6 = add nsw i32 %5, %3
  %7 = sdiv i32 %6, 2
  ret i32 %7
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #15

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_part_thread(ptr noundef %0) unnamed_addr #0 !PGOFuncName !351 {
  %2 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 18
  store i16 1, ptr %2, align 2, !tbaa !203
  %3 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 96), align 8, !tbaa !89
  %4 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 97), align 8, !tbaa !92
  %5 = tail call i32 %3(ptr noundef %4) #24
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %66

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 75), align 8, !tbaa !184
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %7
  %11 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !135
  %12 = and i32 %11, 32768
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 3
  %16 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13
  %17 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 17
  %18 = load i16, ptr %17, align 4, !tbaa !352
  %19 = sext i16 %18 to i32
  %20 = tail call ptr @render_result_new_full_sample(ptr noundef nonnull @R, ptr noundef nonnull %15, ptr noundef nonnull %16, i32 noundef %19, i32 noundef 0) #24
  br label %27

21:                                               ; preds = %10, %7
  %22 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13
  %23 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 17
  %24 = load i16, ptr %23, align 4, !tbaa !352
  %25 = sext i16 %24 to i32
  %26 = tail call ptr @render_result_new(ptr noundef nonnull @R, ptr noundef nonnull %22, i32 noundef %25, i32 noundef 0, ptr noundef null) #24
  br label %27

27:                                               ; preds = %21, %14
  %28 = phi ptr [ %26, %21 ], [ %20, %14 ]
  %29 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 2
  store ptr %28, ptr %29, align 8, !tbaa !200
  %30 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 9), align 8, !tbaa !65
  %31 = getelementptr inbounds %struct.RenderResult, ptr %30, i64 0, i32 15
  %32 = load i32, ptr %31, align 8, !tbaa !186
  %33 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 2
  %34 = getelementptr inbounds %struct.RenderResult, ptr %28, i64 0, i32 15
  store i32 %32, ptr %34, align 8, !tbaa !186
  %35 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 75), align 8, !tbaa !184
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %27
  tail call void @zbufshade_sss_tile(ptr noundef nonnull %0) #24
  br label %43

38:                                               ; preds = %27
  %39 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !136
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  tail call void @zbufshadeDA_tile(ptr noundef nonnull %0) #24
  br label %43

42:                                               ; preds = %38
  tail call void @zbufshade_tile(ptr noundef nonnull %0) #24
  br label %43

43:                                               ; preds = %41, %42, %37
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 12), i32 noundef 1) #24
  %44 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 9), align 8, !tbaa !65
  %45 = getelementptr inbounds %struct.RenderResult, ptr %44, i64 0, i32 15
  %46 = load i32, ptr %45, align 8, !tbaa !186
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = load ptr, ptr %33, align 8, !tbaa !200
  tail call void @render_result_exr_file_merge(ptr noundef nonnull %44, ptr noundef %49) #24
  br label %65

50:                                               ; preds = %43
  %51 = tail call fastcc i32 @render_display_update_enabled(ptr noundef nonnull @R) #26, !range !185
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 96), align 8, !tbaa !89
  %55 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 97), align 8, !tbaa !92
  %56 = tail call i32 %54(ptr noundef %55) #24
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %53
  %59 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !135
  %60 = and i32 %59, 524296
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58, %53
  %63 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 9), align 8, !tbaa !65
  %64 = load ptr, ptr %33, align 8, !tbaa !200
  tail call void @render_result_merge(ptr noundef %63, ptr noundef %64) #24
  br label %65

65:                                               ; preds = %50, %58, %62, %48
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 12)) #24
  br label %66

66:                                               ; preds = %65, %1
  store i16 2, ptr %2, align 2, !tbaa !203
  ret void
}

; Function Attrs: optsize
declare void @zbufshade_sss_tile(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @zbufshadeDA_tile(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @zbufshade_tile(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @render_result_exr_file_merge(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @render_result_merge(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @render_composit_stats(ptr nocapture readnone %0, ptr noundef %1) #0 !PGOFuncName !353 {
  store ptr %1, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 98, i32 16), align 8, !tbaa !348
  %3 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 90), align 8, !tbaa !172
  %4 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 91), align 8, !tbaa !94
  tail call void %3(ptr noundef %4, ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 98)) #24
  store ptr null, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 98, i32 16), align 8, !tbaa !348
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tag_scenes_for_render(ptr noundef %0) unnamed_addr #0 !PGOFuncName !354 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 48
  %3 = load i32, ptr %2, align 8, !tbaa !282
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %5 = load ptr, ptr %4, align 8, !tbaa !211
  %6 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %1, %9
  %10 = phi ptr [ %14, %9 ], [ %7, %1 ]
  %11 = getelementptr inbounds %struct.ID, ptr %10, i64 0, i32 5
  %12 = load i16, ptr %11, align 2, !tbaa !213
  %13 = and i16 %12, -1025
  store i16 %13, ptr %11, align 2, !tbaa !213
  tail call fastcc void @tag_dependend_objects_for_render(ptr noundef nonnull %10, i32 noundef %3) #26
  %14 = load ptr, ptr %10, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %9, !llvm.loop !355

16:                                               ; preds = %9, %1
  %17 = tail call ptr @RE_GetCamera(ptr noundef %0) #24
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %21 = load ptr, ptr %20, align 8, !tbaa !66
  %22 = tail call fastcc i32 @composite_needs_render(ptr noundef %21, i32 noundef 1) #26, !range !185
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 5
  %26 = load i16, ptr %25, align 2, !tbaa !213
  %27 = or i16 %26, 1024
  store i16 %27, ptr %25, align 2, !tbaa !213
  tail call fastcc void @tag_dependend_objects_for_render(ptr noundef %21, i32 noundef %3) #26
  br label %28

28:                                               ; preds = %24, %19, %16
  %29 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %30 = load ptr, ptr %29, align 8, !tbaa !66
  %31 = getelementptr inbounds %struct.Scene, ptr %30, i64 0, i32 18
  %32 = load ptr, ptr %31, align 8, !tbaa !263
  %33 = icmp eq ptr %32, null
  br i1 %33, label %101, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.bNodeTree, ptr %32, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !34
  %37 = icmp eq ptr %36, null
  br i1 %37, label %101, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 99
  br label %40

40:                                               ; preds = %38, %98
  %41 = phi ptr [ %36, %38 ], [ %99, %98 ]
  %42 = getelementptr inbounds %struct.bNode, ptr %41, i64 0, i32 7
  %43 = load i32, ptr %42, align 8, !tbaa !226
  %44 = and i32 %43, -257
  store i32 %44, ptr %42, align 8, !tbaa !226
  %45 = getelementptr inbounds %struct.bNode, ptr %41, i64 0, i32 8
  %46 = load i16, ptr %45, align 4, !tbaa !224
  %47 = icmp eq i16 %46, 221
  %48 = and i32 %43, 512
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %47, i1 %49, i1 false
  br i1 %50, label %51, label %98

51:                                               ; preds = %40
  %52 = getelementptr inbounds %struct.bNode, ptr %41, i64 0, i32 20
  %53 = load ptr, ptr %52, align 8, !tbaa !227
  %54 = icmp eq ptr %53, null
  br i1 %54, label %98, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr %4, align 8, !tbaa !211
  %57 = getelementptr inbounds %struct.Main, ptr %56, i64 0, i32 3
  %58 = load i16, ptr %57, align 8, !tbaa !356
  %59 = icmp sgt i16 %58, 265
  br i1 %59, label %82, label %60

60:                                               ; preds = %55
  %61 = icmp eq i16 %58, 265
  br i1 %61, label %62, label %66

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.Main, ptr %56, i64 0, i32 4
  %64 = load i16, ptr %63, align 2, !tbaa !358
  %65 = icmp sgt i16 %64, 4
  br i1 %65, label %82, label %66

66:                                               ; preds = %62, %60
  %67 = load ptr, ptr %29, align 8, !tbaa !66
  %68 = getelementptr inbounds %struct.Scene, ptr %67, i64 0, i32 18
  %69 = load ptr, ptr %68, align 8, !tbaa !263
  %70 = tail call fastcc zeroext i8 @rlayer_node_uses_alpha(ptr noundef %69, ptr noundef nonnull %41) #26, !range !189
  %71 = icmp eq i8 %70, 0
  %72 = load ptr, ptr %52, align 8, !tbaa !227
  br i1 %71, label %82, label %73

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.Scene, ptr %72, i64 0, i32 22, i32 53
  %75 = load i16, ptr %74, align 8, !tbaa !359
  %76 = icmp eq i16 %75, 1
  br i1 %76, label %82, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr %39, align 8, !tbaa !133
  %79 = getelementptr inbounds %struct.ID, ptr %72, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %78, i32 noundef 16, ptr noundef nonnull @.str.30, ptr noundef nonnull %79) #24
  %80 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, ptr noundef nonnull %79) #26
  store i16 1, ptr %74, align 8, !tbaa !359
  %81 = load ptr, ptr %52, align 8, !tbaa !227
  br label %82

82:                                               ; preds = %73, %77, %66, %62, %55
  %83 = phi ptr [ %72, %73 ], [ %81, %77 ], [ %72, %66 ], [ %53, %62 ], [ %53, %55 ]
  %84 = load ptr, ptr %29, align 8, !tbaa !66
  %85 = icmp eq ptr %83, %84
  br i1 %85, label %98, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.ID, ptr %83, i64 0, i32 5
  %88 = load i16, ptr %87, align 2, !tbaa !360
  %89 = and i16 %88, 1024
  %90 = icmp eq i16 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = tail call fastcc zeroext i8 @render_scene_has_layers_to_render(ptr noundef nonnull %83) #26, !range !189
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %91
  %95 = load i32, ptr %42, align 8, !tbaa !226
  %96 = or i32 %95, 256
  store i32 %96, ptr %42, align 8, !tbaa !226
  %97 = or disjoint i16 %88, 1024
  store i16 %97, ptr %87, align 2, !tbaa !360
  tail call fastcc void @tag_dependend_objects_for_render(ptr noundef nonnull %83, i32 noundef %3) #26
  br label %98

98:                                               ; preds = %91, %94, %40, %82, %86, %51
  %99 = load ptr, ptr %41, align 8, !tbaa !34
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %40, !llvm.loop !361

101:                                              ; preds = %98, %34, %28
  ret void
}

; Function Attrs: optsize
declare i32 @render_result_exr_file_read_sample(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ntreeCompositTagRender(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ntreeCompositTagAnimated(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ntreeCompositExecTree(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mask_array(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @add_filt_fmask_coord(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tag_dependend_objects_for_render(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !362 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.VirtualModifierData, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  store ptr %0, ptr %3, align 8, !tbaa !34
  %5 = call ptr @_setlooper_base_step(ptr noundef nonnull %3, ptr noundef null) #24
  %6 = icmp eq ptr %5, null
  br i1 %6, label %74, label %7

7:                                                ; preds = %2, %71
  %8 = phi ptr [ %72, %71 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.Base, ptr %8, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !363
  %11 = getelementptr inbounds %struct.Base, ptr %8, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !365
  %13 = and i32 %12, %1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %71, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 3
  %17 = load i16, ptr %16, align 8, !tbaa !366
  %18 = icmp eq i16 %17, 1
  br i1 %18, label %19, label %71

19:                                               ; preds = %15
  %20 = call zeroext i8 @RE_allow_render_generic_object(ptr noundef nonnull %10) #26, !range !189
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %71, label %22

22:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %4) #27
  %23 = call ptr @modifiers_getVirtualModifierList(ptr noundef nonnull %10, ptr noundef nonnull %4) #24
  %24 = icmp eq ptr %23, null
  br i1 %24, label %70, label %25

25:                                               ; preds = %22, %67
  %26 = phi ptr [ %68, %67 ], [ %23, %22 ]
  %27 = call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %26, i32 noundef 2) #24
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %67, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.ModifierData, ptr %26, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !367
  switch i32 %31, label %67 [
    i32 11, label %32
    i32 12, label %40
    i32 25, label %57
  ]

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.BooleanModifierData, ptr %26, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !369
  %35 = icmp eq ptr %34, null
  br i1 %35, label %67, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.Object, ptr %34, i64 0, i32 3
  %38 = load i16, ptr %37, align 8, !tbaa !366
  %39 = icmp eq i16 %38, 1
  br i1 %39, label %65, label %67

40:                                               ; preds = %29
  %41 = getelementptr inbounds %struct.ArrayModifierData, ptr %26, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !371
  %43 = icmp eq ptr %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.Object, ptr %42, i64 0, i32 3
  %46 = load i16, ptr %45, align 8, !tbaa !366
  %47 = icmp eq i16 %46, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  call void @DAG_id_tag_update(ptr noundef nonnull %42, i16 noundef signext 2) #24
  br label %49

49:                                               ; preds = %48, %44, %40
  %50 = getelementptr inbounds %struct.ArrayModifierData, ptr %26, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !373
  %52 = icmp eq ptr %51, null
  br i1 %52, label %67, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.Object, ptr %51, i64 0, i32 3
  %55 = load i16, ptr %54, align 8, !tbaa !366
  %56 = icmp eq i16 %55, 1
  br i1 %56, label %65, label %67

57:                                               ; preds = %29
  %58 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %26, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !374
  %60 = icmp eq ptr %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.Object, ptr %59, i64 0, i32 3
  %63 = load i16, ptr %62, align 8, !tbaa !366
  %64 = icmp eq i16 %63, 1
  br i1 %64, label %65, label %67

65:                                               ; preds = %61, %53, %36
  %66 = phi ptr [ %34, %36 ], [ %51, %53 ], [ %59, %61 ]
  call void @DAG_id_tag_update(ptr noundef nonnull %66, i16 noundef signext 2) #24
  br label %67

67:                                               ; preds = %65, %57, %61, %29, %49, %53, %32, %36, %25
  %68 = load ptr, ptr %26, align 8, !tbaa !376
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %25, !llvm.loop !377

70:                                               ; preds = %67, %22
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %4) #27
  br label %71

71:                                               ; preds = %15, %70, %19, %7
  %72 = call ptr @_setlooper_base_step(ptr noundef nonnull %3, ptr noundef nonnull %8) #24
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %7, !llvm.loop !378

74:                                               ; preds = %71, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @rlayer_node_uses_alpha(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !379 {
  %3 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %2, %14
  %7 = phi ptr [ %15, %14 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.bNodeSocket, ptr %7, i64 0, i32 5
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(6) @.str.32) #25
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = tail call i32 @nodeCountSocketLinks(ptr noundef %0, ptr noundef nonnull %7) #24
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %6, %11
  %15 = load ptr, ptr %7, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %6, !llvm.loop !380

17:                                               ; preds = %11, %14, %2
  %18 = phi i8 [ 0, %2 ], [ 0, %14 ], [ 1, %11 ]
  ret i8 %18
}

; Function Attrs: optsize
declare ptr @_setlooper_base_step(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @modifiers_getVirtualModifierList(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @modifier_isEnabled(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @nodeCountSocketLinks(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @node_tree_has_composite_output(ptr nocapture noundef readonly %0) unnamed_addr #16 !PGOFuncName !381 {
  %2 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1, %16
  %6 = phi ptr [ %17, %16 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 8
  %8 = load i16, ptr %7, align 4, !tbaa !224
  switch i16 %8, label %16 [
    i16 222, label %19
    i16 223, label %19
    i16 2, label %9
  ]

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !227
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = tail call fastcc zeroext i8 @node_tree_has_composite_output(ptr noundef nonnull %11) #26, !range !189
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %5, %9, %13
  %17 = load ptr, ptr %6, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %5, !llvm.loop !382

19:                                               ; preds = %5, %5, %13, %16, %1
  %20 = phi i8 [ 0, %1 ], [ 0, %16 ], [ 1, %13 ], [ 1, %5 ], [ 1, %5 ]
  ret i8 %20
}

; Function Attrs: optsize
declare ptr @BKE_scene_camera_find(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @check_valid_compositing_camera(ptr noundef %0, ptr noundef readnone %1) unnamed_addr #0 !PGOFuncName !383 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 46
  %4 = load i32, ptr %3, align 4, !tbaa !267
  %5 = and i32 %4, 64
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %41, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 16
  %9 = load i8, ptr %8, align 2, !tbaa !262
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %41, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 18
  %13 = load ptr, ptr %12, align 8, !tbaa !263
  %14 = getelementptr inbounds %struct.bNodeTree, ptr %13, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %48, label %17

17:                                               ; preds = %11, %38
  %18 = phi ptr [ %39, %38 ], [ %15, %11 ]
  %19 = getelementptr inbounds %struct.bNode, ptr %18, i64 0, i32 8
  %20 = load i16, ptr %19, align 4, !tbaa !224
  %21 = icmp eq i16 %20, 221
  br i1 %21, label %22, label %38

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.bNode, ptr %18, i64 0, i32 7
  %24 = load i32, ptr %23, align 8, !tbaa !226
  %25 = and i32 %24, 512
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.bNode, ptr %18, i64 0, i32 20
  %29 = load ptr, ptr %28, align 8, !tbaa !227
  %30 = icmp eq ptr %29, null
  %31 = select i1 %30, ptr %0, ptr %29
  %32 = getelementptr inbounds %struct.Scene, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !264
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = tail call ptr @BKE_scene_camera_find(ptr noundef nonnull %31) #24
  %37 = icmp eq ptr %36, null
  br i1 %37, label %48, label %38

38:                                               ; preds = %27, %35, %22, %17
  %39 = load ptr, ptr %18, align 8, !tbaa !34
  %40 = icmp eq ptr %39, null
  br i1 %40, label %48, label %17, !llvm.loop !384

41:                                               ; preds = %7, %2
  %42 = icmp eq ptr %1, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !264
  %46 = icmp ne ptr %45, null
  %47 = zext i1 %46 to i8
  br label %48

48:                                               ; preds = %38, %35, %11, %41, %43
  %49 = phi i8 [ 1, %41 ], [ %47, %43 ], [ 1, %11 ], [ 1, %38 ], [ 0, %35 ]
  ret i8 %49
}

; Function Attrs: optsize
declare void @render_result_single_layer_begin(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @validate_render_settings(ptr noundef %0) unnamed_addr #0 !PGOFuncName !385 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %3 = load i32, ptr %2, align 4, !tbaa !135
  %4 = and i32 %3, 33792
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 54
  %8 = load i16, ptr %7, align 2, !tbaa !137
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = and i32 %3, -32769
  store i32 %11, ptr %2, align 4, !tbaa !135
  br label %12

12:                                               ; preds = %6, %10, %1
  %13 = tail call zeroext i8 @RE_engine_is_external(ptr noundef nonnull %0) #24
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load <2 x i32>, ptr %2, align 4, !tbaa !67
  %17 = and <2 x i32> %16, <i32 -32769, i32 -16449>
  store <2 x i32> %17, ptr %2, align 4, !tbaa !67
  br label %18

18:                                               ; preds = %15, %12
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @RE_engine_is_external(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BKE_scene_camera_switch_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_image_all_free_anim_ibufs(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RE_engine_render(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_render_seq(ptr noundef %0) unnamed_addr #0 !PGOFuncName !386 {
  %2 = alloca %struct.SeqRenderData, align 8
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !286
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #27
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98
  store i32 %5, ptr %6, align 8, !tbaa !387
  %7 = load i32, ptr @do_render_seq.recurs_depth, align 4, !tbaa !67
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %11 = load ptr, ptr %10, align 8, !tbaa !211
  %12 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %13 = load ptr, ptr %12, align 8, !tbaa !66
  %14 = sitofp i32 %5 to float
  tail call void @BKE_animsys_evaluate_all_animation(ptr noundef %11, ptr noundef %13, float noundef %14) #24
  %15 = load i32, ptr @do_render_seq.recurs_depth, align 4, !tbaa !67
  br label %16

16:                                               ; preds = %9, %1
  %17 = phi i32 [ %15, %9 ], [ %7, %1 ]
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr @do_render_seq.recurs_depth, align 4, !tbaa !67
  %19 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %20 = load i32, ptr %19, align 8, !tbaa !124
  %21 = and i32 %20, 2560
  %22 = icmp eq i32 %21, 512
  %23 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 101
  %24 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %25 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %26 = load ptr, ptr %23, align 8, !tbaa !80
  %27 = load ptr, ptr %24, align 8, !tbaa !211
  %28 = load ptr, ptr %25, align 8, !tbaa !66
  br i1 %22, label %29, label %34

29:                                               ; preds = %16
  %30 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %31 = load i32, ptr %30, align 4, !tbaa !142
  %32 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  %33 = load i32, ptr %32, align 8, !tbaa !143
  call void @BKE_sequencer_new_render_data(ptr dead_on_unwind nonnull writable sret(%struct.SeqRenderData) align 8 %2, ptr noundef %26, ptr noundef %27, ptr noundef %28, i32 noundef %31, i32 noundef %33, i32 noundef 100) #24
  br label %41

34:                                               ; preds = %16
  %35 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %36 = load ptr, ptr %35, align 8, !tbaa !65
  %37 = getelementptr inbounds %struct.RenderResult, ptr %36, i64 0, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !139
  %39 = getelementptr inbounds %struct.RenderResult, ptr %36, i64 0, i32 3
  %40 = load i32, ptr %39, align 4, !tbaa !140
  call void @BKE_sequencer_new_render_data(ptr dead_on_unwind nonnull writable sret(%struct.SeqRenderData) align 8 %2, ptr noundef %26, ptr noundef %27, ptr noundef %28, i32 noundef %38, i32 noundef %40, i32 noundef 100) #24
  br label %41

41:                                               ; preds = %34, %29
  %42 = sitofp i32 %5 to float
  %43 = call ptr @BKE_sequencer_give_ibuf(ptr noundef nonnull %2, float noundef %42, i32 noundef 0) #24
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = call ptr @IMB_dupImBuf(ptr noundef nonnull %43) #24
  call void @IMB_freeImBuf(ptr noundef nonnull %43) #24
  %47 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %48 = load ptr, ptr %47, align 8, !tbaa !66
  call void @BKE_sequencer_imbuf_from_sequencer_space(ptr noundef %48, ptr noundef %46) #24
  br label %49

49:                                               ; preds = %41, %45
  %50 = phi ptr [ %46, %45 ], [ null, %41 ]
  %51 = load i32, ptr @do_render_seq.recurs_depth, align 4, !tbaa !67
  %52 = add nsw i32 %51, -1
  store i32 %52, ptr @do_render_seq.recurs_depth, align 4, !tbaa !67
  %53 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %54 = load ptr, ptr %53, align 8, !tbaa !65
  %55 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  call void @BLI_rw_mutex_lock(ptr noundef nonnull %55, i32 noundef 2) #24
  %56 = icmp eq ptr %50, null
  br i1 %56, label %69, label %57

57:                                               ; preds = %49
  call void @render_result_rect_from_ibuf(ptr noundef %54, ptr noundef nonnull %3, ptr noundef nonnull %50) #24
  %58 = load i32, ptr @do_render_seq.recurs_depth, align 4, !tbaa !67
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %62 = load ptr, ptr %61, align 8, !tbaa !66
  %63 = getelementptr inbounds %struct.Scene, ptr %62, i64 0, i32 19
  %64 = load ptr, ptr %63, align 8, !tbaa !247
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.Editing, ptr %64, i64 0, i32 1
  call void @BKE_sequencer_free_imbuf(ptr noundef nonnull %62, ptr noundef nonnull %67, i8 noundef zeroext 1) #24
  br label %68

68:                                               ; preds = %60, %66, %57
  call void @IMB_freeImBuf(ptr noundef nonnull %50) #24
  br label %70

69:                                               ; preds = %49
  call void @render_result_rect_fill_zero(ptr noundef %54) #24
  br label %70

70:                                               ; preds = %69, %68
  call void @BLI_rw_mutex_unlock(ptr noundef nonnull %55) #24
  %71 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %72 = load i32, ptr %71, align 4, !tbaa !135
  %73 = or i32 %72, 1
  store i32 %73, ptr %71, align 4, !tbaa !135
  %74 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 7
  %75 = load i32, ptr %74, align 8, !tbaa !388
  %76 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 6
  %77 = load i32, ptr %76, align 4, !tbaa !389
  %78 = icmp eq i32 %75, %77
  %79 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 92
  %80 = load ptr, ptr %79, align 8, !tbaa !88
  %81 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 93
  %82 = load ptr, ptr %81, align 8, !tbaa !93
  br i1 %78, label %89, label %83

83:                                               ; preds = %70
  %84 = sub nsw i32 %5, %77
  %85 = sitofp i32 %84 to float
  %86 = sub nsw i32 %75, %77
  %87 = sitofp i32 %86 to float
  %88 = fdiv float %85, %87
  br label %89

89:                                               ; preds = %70, %83
  %90 = phi float [ %88, %83 ], [ 1.000000e+00, %70 ]
  call void %80(ptr noundef %82, float noundef %90) #24
  %91 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 86
  %92 = load ptr, ptr %91, align 8, !tbaa !86
  %93 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 87
  %94 = load ptr, ptr %93, align 8, !tbaa !95
  %95 = load ptr, ptr %53, align 8, !tbaa !65
  call void %92(ptr noundef %94, ptr noundef %95, ptr noundef null) #24
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_render_composite_fields_blur_3d(ptr noundef %0) unnamed_addr #0 !PGOFuncName !390 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !263
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !286
  tail call void @BLI_srandom(i32 noundef %8) #24
  %9 = load ptr, ptr %2, align 8, !tbaa !66
  %10 = tail call fastcc i32 @composite_needs_render(ptr noundef %9, i32 noundef 1) #26, !range !185
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  tail call void @ntreeFreeCache(ptr noundef %5) #24
  tail call fastcc void @do_render_fields_blur_3d(ptr noundef nonnull %0) #26
  br label %27

13:                                               ; preds = %1
  %14 = load i32, ptr %7, align 8, !tbaa !286
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98
  store i32 %14, ptr %15, align 8, !tbaa !387
  %16 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull %16, i32 noundef 2) #24
  %17 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !65
  tail call void @render_result_free(ptr noundef %18) #24
  %19 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %20 = load i32, ptr %19, align 8, !tbaa !124
  %21 = and i32 %20, 2048
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  tail call fastcc void @render_result_disprect_to_full_resolution(ptr noundef nonnull %0) #26
  br label %24

24:                                               ; preds = %23, %13
  %25 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  %26 = tail call ptr @render_result_new(ptr noundef nonnull %0, ptr noundef nonnull %25, i32 noundef 0, i32 noundef 0, ptr noundef null) #24
  store ptr %26, ptr %17, align 8, !tbaa !65
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull %16) #24
  br label %27

27:                                               ; preds = %24, %12
  %28 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %29 = load i32, ptr %28, align 4, !tbaa !135
  %30 = and i32 %29, 512
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull %33, i32 noundef 2) #24
  tail call void @render_result_single_layer_end(ptr noundef nonnull %0) #24
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull %33) #24
  br label %34

34:                                               ; preds = %32, %27
  %35 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %36 = load ptr, ptr %35, align 8, !tbaa !89
  %37 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %38 = load ptr, ptr %37, align 8, !tbaa !92
  %39 = tail call i32 %36(ptr noundef %38) #24
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %108

41:                                               ; preds = %34
  %42 = icmp eq ptr %5, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %41
  %44 = load i32, ptr %28, align 4, !tbaa !135
  br label %103

45:                                               ; preds = %41
  %46 = load ptr, ptr %2, align 8, !tbaa !66
  tail call void @ntreeCompositTagRender(ptr noundef %46) #24
  %47 = tail call i32 @ntreeCompositTagAnimated(ptr noundef nonnull %5) #24
  %48 = load ptr, ptr %2, align 8, !tbaa !66
  %49 = getelementptr inbounds %struct.Scene, ptr %48, i64 0, i32 16
  %50 = load i8, ptr %49, align 2, !tbaa !262
  %51 = icmp eq i8 %50, 0
  %52 = load i32, ptr %28, align 4, !tbaa !135
  %53 = and i32 %52, 64
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %51, i1 true, i1 %54
  br i1 %55, label %103, label %56

56:                                               ; preds = %45
  %57 = and i32 %52, 512
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  tail call fastcc void @ntree_render_scenes(ptr noundef nonnull %0) #26
  br label %60

60:                                               ; preds = %59, %56
  %61 = load ptr, ptr %35, align 8, !tbaa !89
  %62 = load ptr, ptr %37, align 8, !tbaa !92
  %63 = tail call i32 %61(ptr noundef %62) #24
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %108

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 29
  store ptr @render_composit_stats, ptr %66, align 8, !tbaa !232
  %67 = load ptr, ptr %35, align 8, !tbaa !89
  %68 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 30
  store ptr %67, ptr %68, align 8, !tbaa !235
  %69 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 92
  %70 = load ptr, ptr %69, align 8, !tbaa !88
  %71 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 28
  store ptr %70, ptr %71, align 8, !tbaa !236
  %72 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 91
  %73 = load ptr, ptr %72, align 8, !tbaa !94
  %74 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 34
  store ptr %73, ptr %74, align 8, !tbaa !237
  %75 = load ptr, ptr %37, align 8, !tbaa !92
  %76 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 32
  store ptr %75, ptr %76, align 8, !tbaa !238
  %77 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 93
  %78 = load ptr, ptr %77, align 8, !tbaa !93
  %79 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 33
  store ptr %78, ptr %79, align 8, !tbaa !239
  store ptr %73, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 91), align 8, !tbaa !94
  %80 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 90
  %81 = load ptr, ptr %80, align 8, !tbaa !172
  store ptr %81, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 90), align 8, !tbaa !172
  br i1 %11, label %82, label %90

82:                                               ; preds = %65
  %83 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 101
  %84 = load ptr, ptr %83, align 8, !tbaa !80
  %85 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %86 = load ptr, ptr %85, align 8, !tbaa !211
  %87 = load ptr, ptr %2, align 8, !tbaa !66
  %88 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 48
  %89 = load i32, ptr %88, align 8, !tbaa !282
  tail call void @BKE_scene_update_for_newframe(ptr noundef %84, ptr noundef %86, ptr noundef %87, i32 noundef %89) #24
  br label %90

90:                                               ; preds = %82, %65
  %91 = load i32, ptr %28, align 4, !tbaa !135
  %92 = and i32 %91, 32768
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  tail call fastcc void @do_merge_fullsample(ptr noundef nonnull %0, ptr noundef nonnull %5) #26
  br label %102

95:                                               ; preds = %90
  %96 = load ptr, ptr %2, align 8, !tbaa !66
  %97 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !90
  %98 = icmp eq i8 %97, 0
  %99 = zext i1 %98 to i32
  %100 = getelementptr inbounds %struct.Scene, ptr %96, i64 0, i32 44
  %101 = getelementptr inbounds %struct.Scene, ptr %96, i64 0, i32 45
  tail call void @ntreeCompositExecTree(ptr noundef %96, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 1, i32 noundef %99, ptr noundef nonnull %100, ptr noundef nonnull %101) #24
  br label %102

102:                                              ; preds = %95, %94
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %71, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %76, i8 0, i64 24, i1 false)
  br label %108

103:                                              ; preds = %43, %45
  %104 = phi i32 [ %44, %43 ], [ %52, %45 ]
  %105 = and i32 %104, 32768
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %103
  tail call fastcc void @do_merge_fullsample(ptr noundef nonnull %0, ptr noundef null) #26
  br label %108

108:                                              ; preds = %102, %60, %107, %103, %34
  %109 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %110 = load ptr, ptr %109, align 8, !tbaa !65
  %111 = tail call ptr @render_get_active_layer(ptr noundef nonnull %0, ptr noundef %110) #26
  %112 = load ptr, ptr %109, align 8, !tbaa !65
  %113 = getelementptr inbounds %struct.RenderResult, ptr %112, i64 0, i32 14
  store ptr %111, ptr %113, align 8, !tbaa !244
  %114 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 86
  %115 = load ptr, ptr %114, align 8, !tbaa !86
  %116 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 87
  %117 = load ptr, ptr %116, align 8, !tbaa !95
  tail call void %115(ptr noundef %117, ptr noundef %112, ptr noundef null) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @renderresult_stampinfo(ptr noundef %0) unnamed_addr #0 !PGOFuncName !391 {
  %2 = alloca %struct.RenderResult, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #27
  call void @RE_AcquireResultImage(ptr noundef %0, ptr noundef nonnull %2) #26
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = tail call ptr @RE_GetCamera(ptr noundef %0) #24
  %6 = getelementptr inbounds %struct.RenderResult, ptr %2, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !392
  %8 = getelementptr inbounds %struct.RenderResult, ptr %2, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  %10 = getelementptr inbounds %struct.RenderResult, ptr %2, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !139
  %12 = getelementptr inbounds %struct.RenderResult, ptr %2, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !140
  tail call void @BKE_stamp_buf(ptr noundef %4, ptr noundef %5, ptr noundef %7, ptr noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef 4) #24
  tail call void @RE_ReleaseResultImage(ptr noundef %0) #26
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #27
  ret void
}

; Function Attrs: optsize
declare void @BKE_animsys_evaluate_all_animation(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_sequencer_new_render_data(ptr dead_on_unwind writable sret(%struct.SeqRenderData) align 8, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_sequencer_give_ibuf(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @IMB_dupImBuf(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_sequencer_imbuf_from_sequencer_space(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @render_result_rect_from_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_sequencer_free_imbuf(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @render_result_rect_fill_zero(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_srandom(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ntreeFreeCache(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_render_fields_blur_3d(ptr noundef %0) unnamed_addr #0 !PGOFuncName !393 {
  %2 = alloca %struct.rcti, align 4
  %3 = tail call ptr @RE_GetCamera(ptr noundef %0) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 99
  %7 = load ptr, ptr %6, align 8, !tbaa !133
  tail call void @BKE_report(ptr noundef %7, i32 noundef 32, ptr noundef nonnull @.str.35) #24
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !103
  br label %61

8:                                                ; preds = %1
  tail call void @RE_SetCamera(ptr noundef %0, ptr noundef nonnull %3) #24
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %10 = load i32, ptr %9, align 8, !tbaa !124
  %11 = and i32 %10, 64
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call fastcc void @do_render_fields_3d(ptr noundef nonnull %0) #26
  br label %24

14:                                               ; preds = %8
  %15 = and i32 %10, 16384
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %19 = load i32, ptr %18, align 4, !tbaa !135
  %20 = and i32 %19, 32768
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  tail call fastcc void @do_render_blur_3d(ptr noundef nonnull %0) #26
  br label %24

23:                                               ; preds = %17, %14
  tail call fastcc void @do_render_3d(ptr noundef nonnull %0) #26
  br label %24

24:                                               ; preds = %22, %23, %13
  %25 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !65
  %27 = icmp eq ptr %26, null
  br i1 %27, label %61, label %28

28:                                               ; preds = %24
  %29 = load i32, ptr %9, align 8, !tbaa !124
  %30 = and i32 %29, 512
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %61, label %32

32:                                               ; preds = %28
  %33 = and i32 %29, 2048
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2)
  %36 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %36, i64 16, i1 false), !tbaa.struct !145
  %37 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 20
  %38 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  %39 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 82
  %40 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 83
  %41 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 86
  %42 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 87
  %43 = load <2 x i32>, ptr %37, align 8, !tbaa !67
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull %38, i32 noundef 2) #24
  %44 = load ptr, ptr %25, align 8, !tbaa !65
  %45 = getelementptr inbounds %struct.RenderResult, ptr %44, i64 0, i32 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %45, ptr noundef nonnull align 4 dereferenceable(16) %36, i64 16, i1 false), !tbaa.struct !145
  tail call fastcc void @render_result_disprect_to_full_resolution(ptr noundef nonnull %0) #26
  %46 = tail call ptr @render_result_new(ptr noundef nonnull %0, ptr noundef nonnull %36, i32 noundef 0, i32 noundef 0, ptr noundef null) #24
  %47 = load ptr, ptr %25, align 8, !tbaa !65
  tail call void @render_result_merge(ptr noundef %46, ptr noundef %47) #24
  %48 = load ptr, ptr %25, align 8, !tbaa !65
  tail call void @render_result_free(ptr noundef %48) #24
  store ptr %46, ptr %25, align 8, !tbaa !65
  %49 = tail call ptr @render_get_active_layer(ptr noundef nonnull %0, ptr noundef %46) #26
  %50 = load ptr, ptr %25, align 8, !tbaa !65
  %51 = getelementptr inbounds %struct.RenderResult, ptr %50, i64 0, i32 14
  store ptr %49, ptr %51, align 8, !tbaa !244
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull %38) #24
  %52 = load ptr, ptr %39, align 8, !tbaa !84
  %53 = load ptr, ptr %40, align 8, !tbaa !97
  %54 = load ptr, ptr %25, align 8, !tbaa !65
  tail call void %52(ptr noundef %53, ptr noundef %54) #24
  %55 = load ptr, ptr %41, align 8, !tbaa !86
  %56 = load ptr, ptr %42, align 8, !tbaa !95
  %57 = load ptr, ptr %25, align 8, !tbaa !65
  tail call void %55(ptr noundef %56, ptr noundef %57, ptr noundef null) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %36, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !145
  store <2 x i32> %43, ptr %37, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2)
  br label %61

58:                                               ; preds = %32
  %59 = getelementptr inbounds %struct.RenderResult, ptr %26, i64 0, i32 10
  store i32 0, ptr %59, align 8, !tbaa !75
  %60 = getelementptr inbounds %struct.RenderResult, ptr %26, i64 0, i32 11
  store i32 0, ptr %60, align 4, !tbaa !77
  br label %61

61:                                               ; preds = %24, %35, %58, %28, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @render_result_disprect_to_full_resolution(ptr nocapture noundef %0) unnamed_addr #6 !PGOFuncName !394 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 2
  store i32 0, ptr %3, align 4, !tbaa !76
  store i32 0, ptr %2, align 4, !tbaa !74
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %5 = load i32, ptr %4, align 4, !tbaa !142
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 1
  store i32 %5, ptr %6, align 4, !tbaa !146
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  %8 = load i32, ptr %7, align 8, !tbaa !143
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 3
  store i32 %8, ptr %9, align 4, !tbaa !147
  %10 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 20
  store i32 %5, ptr %10, align 8, !tbaa !78
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 21
  store i32 %8, ptr %11, align 4, !tbaa !79
  ret void
}

; Function Attrs: optsize
declare void @render_result_single_layer_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ntree_render_scenes(ptr noundef %0) unnamed_addr #0 !PGOFuncName !395 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !276
  %6 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !263
  %8 = icmp eq ptr %7, null
  br i1 %8, label %54, label %9

9:                                                ; preds = %1
  tail call fastcc void @tag_scenes_for_render(ptr noundef nonnull %0) #26
  %10 = load ptr, ptr %2, align 8, !tbaa !66
  %11 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 18
  %12 = load ptr, ptr %11, align 8, !tbaa !263
  %13 = getelementptr inbounds %struct.bNodeTree, ptr %12, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %54, label %16

16:                                               ; preds = %9, %44
  %17 = phi ptr [ %46, %44 ], [ %14, %9 ]
  %18 = phi i8 [ %45, %44 ], [ 0, %9 ]
  %19 = getelementptr inbounds %struct.bNode, ptr %17, i64 0, i32 8
  %20 = load i16, ptr %19, align 4, !tbaa !224
  %21 = icmp eq i16 %20, 221
  br i1 %21, label %22, label %44

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.bNode, ptr %17, i64 0, i32 7
  %24 = load i32, ptr %23, align 8, !tbaa !226
  %25 = and i32 %24, 512
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.bNode, ptr %17, i64 0, i32 20
  %29 = load ptr, ptr %28, align 8, !tbaa !227
  %30 = icmp eq ptr %29, null
  br i1 %30, label %44, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %2, align 8, !tbaa !66
  %33 = icmp eq ptr %29, %32
  %34 = and i32 %24, 256
  %35 = icmp eq i32 %34, 0
  %36 = or i1 %35, %33
  br i1 %36, label %44, label %37

37:                                               ; preds = %31
  %38 = icmp ne ptr %29, %3
  %39 = zext i1 %38 to i8
  %40 = or i8 %18, %39
  tail call fastcc void @render_scene(ptr noundef nonnull %0, ptr noundef nonnull %29, i32 noundef %5) #26
  %41 = load i32, ptr %23, align 8, !tbaa !226
  %42 = and i32 %41, -257
  store i32 %42, ptr %23, align 8, !tbaa !226
  %43 = load ptr, ptr %6, align 8, !tbaa !263
  tail call void @nodeUpdate(ptr noundef %43, ptr noundef nonnull %17) #24
  br label %44

44:                                               ; preds = %16, %22, %37, %31, %27
  %45 = phi i8 [ %40, %37 ], [ %18, %31 ], [ %18, %27 ], [ %18, %22 ], [ %18, %16 ]
  %46 = load ptr, ptr %17, align 8, !tbaa !34
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %16, !llvm.loop !396

48:                                               ; preds = %44
  %49 = icmp eq i8 %45, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %52 = load ptr, ptr %51, align 8, !tbaa !211
  %53 = load ptr, ptr %2, align 8, !tbaa !66
  tail call void @BKE_scene_set_background(ptr noundef %52, ptr noundef %53) #24
  br label %54

54:                                               ; preds = %9, %48, %50, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_render_fields_3d(ptr noundef %0) unnamed_addr #0 !PGOFuncName !397 {
  %2 = tail call ptr @RE_GetCamera(ptr noundef %0) #24
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  %4 = load i32, ptr %3, align 8, !tbaa !143
  %5 = sdiv i32 %4, 2
  store i32 %5, ptr %3, align 8, !tbaa !143
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 21
  %7 = load i32, ptr %6, align 4, !tbaa !79
  %8 = sdiv i32 %7, 2
  store i32 %8, ptr %6, align 4, !tbaa !79
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  %10 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 2
  %11 = load <2 x i32>, ptr %10, align 4, !tbaa !67
  %12 = sdiv <2 x i32> %11, <i32 2, i32 2>
  store <2 x i32> %12, ptr %10, align 4, !tbaa !67
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 7
  store i16 1, ptr %13, align 4, !tbaa !398
  tail call void @RE_SetCamera(ptr noundef %0, ptr noundef %2) #24
  %14 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %15 = load i32, ptr %14, align 8, !tbaa !124
  %16 = and i32 %15, 16384
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %20 = load i32, ptr %19, align 4, !tbaa !135
  %21 = and i32 %20, 32768
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  tail call fastcc void @do_render_blur_3d(ptr noundef nonnull %0) #26
  br label %25

24:                                               ; preds = %18, %1
  tail call fastcc void @do_render_3d(ptr noundef nonnull %0) #26
  br label %25

25:                                               ; preds = %24, %23
  %26 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull %26, i32 noundef 2) #24
  %27 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !65
  store ptr null, ptr %27, align 8, !tbaa !65
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull %26) #24
  %29 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %30 = load ptr, ptr %29, align 8, !tbaa !89
  %31 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %32 = load ptr, ptr %31, align 8, !tbaa !92
  %33 = tail call i32 %30(ptr noundef %32) #24
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %25
  store i16 2, ptr %13, align 4, !tbaa !398
  %36 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 4
  %37 = load i16, ptr %36, align 8, !tbaa !305
  %38 = or i16 %37, 4
  store i16 %38, ptr %36, align 8, !tbaa !305
  %39 = load i32, ptr %14, align 8, !tbaa !124
  %40 = and i32 %39, 128
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 59
  store float 5.000000e-01, ptr %43, align 4, !tbaa !316
  br label %44

44:                                               ; preds = %42, %35
  tail call void @RE_SetCamera(ptr noundef nonnull %0, ptr noundef %2) #24
  %45 = load i32, ptr %14, align 8, !tbaa !124
  %46 = and i32 %45, 16384
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %50 = load i32, ptr %49, align 4, !tbaa !135
  %51 = and i32 %50, 32768
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  tail call fastcc void @do_render_blur_3d(ptr noundef nonnull %0) #26
  br label %55

54:                                               ; preds = %48, %44
  tail call fastcc void @do_render_3d(ptr noundef nonnull %0) #26
  br label %55

55:                                               ; preds = %54, %53
  %56 = load i16, ptr %36, align 8, !tbaa !305
  %57 = and i16 %56, -5
  store i16 %57, ptr %36, align 8, !tbaa !305
  %58 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 59
  store float 0.000000e+00, ptr %58, align 4, !tbaa !316
  %59 = load ptr, ptr %27, align 8, !tbaa !65
  br label %60

60:                                               ; preds = %55, %25
  %61 = phi ptr [ null, %25 ], [ %59, %55 ]
  %62 = load i32, ptr %3, align 8, !tbaa !143
  %63 = shl nsw i32 %62, 1
  store i32 %63, ptr %3, align 8, !tbaa !143
  %64 = load i32, ptr %6, align 4, !tbaa !79
  %65 = shl nsw i32 %64, 1
  store i32 %65, ptr %6, align 4, !tbaa !79
  %66 = load <2 x i32>, ptr %10, align 4, !tbaa !67
  %67 = shl nsw <2 x i32> %66, <i32 1, i32 1>
  store <2 x i32> %67, ptr %10, align 4, !tbaa !67
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull %26, i32 noundef 2) #24
  %68 = tail call ptr @render_result_new(ptr noundef nonnull %0, ptr noundef nonnull %9, i32 noundef 0, i32 noundef 0, ptr noundef null) #24
  store ptr %68, ptr %27, align 8, !tbaa !65
  %69 = icmp eq ptr %61, null
  br i1 %69, label %77, label %70

70:                                               ; preds = %60
  %71 = load i32, ptr %14, align 8, !tbaa !124
  %72 = and i32 %71, 8192
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  tail call fastcc void @merge_renderresult_fields(ptr noundef %68, ptr noundef nonnull %61, ptr noundef %28) #26
  br label %76

75:                                               ; preds = %70
  tail call fastcc void @merge_renderresult_fields(ptr noundef %68, ptr noundef %28, ptr noundef nonnull %61) #26
  br label %76

76:                                               ; preds = %75, %74
  tail call void @render_result_free(ptr noundef nonnull %61) #24
  br label %77

77:                                               ; preds = %76, %60
  tail call void @render_result_free(ptr noundef %28) #24
  store i16 0, ptr %13, align 4, !tbaa !398
  %78 = load ptr, ptr %27, align 8, !tbaa !65
  %79 = tail call ptr @render_get_active_layer(ptr noundef nonnull %0, ptr noundef %78) #26
  %80 = load ptr, ptr %27, align 8, !tbaa !65
  %81 = getelementptr inbounds %struct.RenderResult, ptr %80, i64 0, i32 14
  store ptr %79, ptr %81, align 8, !tbaa !244
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull %26) #24
  %82 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 86
  %83 = load ptr, ptr %82, align 8, !tbaa !86
  %84 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 87
  %85 = load ptr, ptr %84, align 8, !tbaa !95
  %86 = load ptr, ptr %27, align 8, !tbaa !65
  tail call void %83(ptr noundef %85, ptr noundef %86, ptr noundef null) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_render_blur_3d(ptr noundef %0) unnamed_addr #0 !PGOFuncName !399 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 62
  %3 = load i16, ptr %2, align 2, !tbaa !158
  %4 = sext i16 %3 to i32
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  %6 = tail call ptr @render_result_new(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0, ptr noundef null) #24
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 16
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 58
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 8
  %10 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %12 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  br label %13

13:                                               ; preds = %16, %1
  %14 = phi i32 [ %4, %1 ], [ %17, %16 ]
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %38, label %16

16:                                               ; preds = %13
  %17 = add nsw i32 %14, -1
  %18 = load float, ptr %7, align 8, !tbaa !160
  %19 = load i16, ptr %2, align 2, !tbaa !158
  %20 = sext i16 %19 to i32
  %21 = sub nsw i32 %20, %17
  %22 = sitofp i32 %21 to float
  %23 = fmul float %18, %22
  %24 = sitofp i16 %19 to float
  %25 = fdiv float %23, %24
  store float %25, ptr %8, align 8, !tbaa !315
  %26 = trunc i32 %17 to i16
  %27 = sub i16 %19, %26
  store i16 %27, ptr %9, align 2, !tbaa !400
  tail call fastcc void @do_render_3d(ptr noundef nonnull %0) #26
  %28 = load i16, ptr %2, align 2, !tbaa !158
  %29 = sext i16 %28 to i32
  %30 = sub nsw i32 %29, %17
  %31 = sitofp i32 %30 to float
  %32 = fdiv float 1.000000e+00, %31
  %33 = load ptr, ptr %10, align 8, !tbaa !65
  tail call fastcc void @merge_renderresult_blur(ptr noundef %6, ptr noundef %33, float noundef %32) #26
  %34 = load ptr, ptr %11, align 8, !tbaa !89
  %35 = load ptr, ptr %12, align 8, !tbaa !92
  %36 = tail call i32 %34(ptr noundef %35) #24
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %13, label %38, !llvm.loop !401

38:                                               ; preds = %16, %13
  %39 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull %39, i32 noundef 2) #24
  %40 = load ptr, ptr %10, align 8, !tbaa !65
  tail call void @render_result_free(ptr noundef %40) #24
  store ptr %6, ptr %10, align 8, !tbaa !65
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull %39) #24
  store float 0.000000e+00, ptr %8, align 8, !tbaa !315
  store i16 0, ptr %9, align 2, !tbaa !400
  %41 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %42 = load i32, ptr %41, align 4, !tbaa !135
  %43 = and i32 %42, 540680
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 101
  %47 = load ptr, ptr %46, align 8, !tbaa !80
  %48 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %49 = load ptr, ptr %48, align 8, !tbaa !211
  %50 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %51 = load ptr, ptr %50, align 8, !tbaa !66
  %52 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 48
  %53 = load i32, ptr %52, align 8, !tbaa !282
  tail call void @BKE_scene_update_for_newframe(ptr noundef %47, ptr noundef %49, ptr noundef %51, i32 noundef %53) #24
  br label %54

54:                                               ; preds = %45, %38
  %55 = load ptr, ptr %10, align 8, !tbaa !65
  %56 = tail call ptr @render_get_active_layer(ptr noundef nonnull %0, ptr noundef %55) #26
  %57 = load ptr, ptr %10, align 8, !tbaa !65
  %58 = getelementptr inbounds %struct.RenderResult, ptr %57, i64 0, i32 14
  store ptr %56, ptr %58, align 8, !tbaa !244
  %59 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 86
  %60 = load ptr, ptr %59, align 8, !tbaa !86
  %61 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 87
  %62 = load ptr, ptr %61, align 8, !tbaa !95
  tail call void %60(ptr noundef %62, ptr noundef %57, ptr noundef null) #24
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @merge_renderresult_fields(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #20 !PGOFuncName !402 {
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
  br i1 %14, label %24, label %72

15:                                               ; preds = %52, %40
  %16 = load ptr, ptr %27, align 8, !tbaa !34
  %17 = load ptr, ptr %26, align 8, !tbaa !34
  %18 = load ptr, ptr %25, align 8, !tbaa !34
  %19 = icmp ne ptr %18, null
  %20 = icmp ne ptr %17, null
  %21 = select i1 %19, i1 %20, i1 false
  %22 = icmp ne ptr %16, null
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %24, label %72, !llvm.loop !403

24:                                               ; preds = %3, %15
  %25 = phi ptr [ %18, %15 ], [ %9, %3 ]
  %26 = phi ptr [ %17, %15 ], [ %8, %3 ]
  %27 = phi ptr [ %16, %15 ], [ %7, %3 ]
  %28 = getelementptr inbounds %struct.RenderLayer, ptr %25, i64 0, i32 11
  %29 = load ptr, ptr %28, align 8, !tbaa !70
  %30 = icmp eq ptr %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.RenderLayer, ptr %26, i64 0, i32 11
  %33 = load ptr, ptr %32, align 8, !tbaa !70
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.RenderLayer, ptr %27, i64 0, i32 11
  %37 = load ptr, ptr %36, align 8, !tbaa !70
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call fastcc void @interleave_rect(ptr noundef %0, ptr noundef nonnull %29, ptr noundef nonnull %33, ptr noundef nonnull %37, i32 noundef 4) #26
  br label %40

40:                                               ; preds = %39, %35, %31, %24
  %41 = getelementptr inbounds %struct.RenderLayer, ptr %26, i64 0, i32 18
  %42 = getelementptr inbounds %struct.RenderLayer, ptr %27, i64 0, i32 18
  %43 = getelementptr inbounds %struct.RenderLayer, ptr %25, i64 0, i32 18
  %44 = load ptr, ptr %42, align 8, !tbaa !34
  %45 = load ptr, ptr %41, align 8, !tbaa !34
  %46 = load ptr, ptr %43, align 8, !tbaa !34
  %47 = icmp ne ptr %46, null
  %48 = icmp ne ptr %45, null
  %49 = select i1 %47, i1 %48, i1 false
  %50 = icmp ne ptr %44, null
  %51 = select i1 %49, i1 %50, i1 false
  br i1 %51, label %52, label %15

52:                                               ; preds = %40, %52
  %53 = phi ptr [ %66, %52 ], [ %46, %40 ]
  %54 = phi ptr [ %65, %52 ], [ %45, %40 ]
  %55 = phi ptr [ %64, %52 ], [ %44, %40 ]
  %56 = getelementptr inbounds %struct.RenderPass, ptr %53, i64 0, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !43
  %58 = getelementptr inbounds %struct.RenderPass, ptr %54, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !43
  %60 = getelementptr inbounds %struct.RenderPass, ptr %55, i64 0, i32 6
  %61 = load ptr, ptr %60, align 8, !tbaa !43
  %62 = getelementptr inbounds %struct.RenderPass, ptr %53, i64 0, i32 3
  %63 = load i32, ptr %62, align 4, !tbaa !404
  tail call fastcc void @interleave_rect(ptr noundef %0, ptr noundef %57, ptr noundef %59, ptr noundef %61, i32 noundef %63) #26
  %64 = load ptr, ptr %55, align 8, !tbaa !34
  %65 = load ptr, ptr %54, align 8, !tbaa !34
  %66 = load ptr, ptr %53, align 8, !tbaa !34
  %67 = icmp ne ptr %66, null
  %68 = icmp ne ptr %65, null
  %69 = select i1 %67, i1 %68, i1 false
  %70 = icmp ne ptr %64, null
  %71 = select i1 %69, i1 %70, i1 false
  br i1 %71, label %52, label %15, !llvm.loop !405

72:                                               ; preds = %15, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @interleave_rect(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #20 !PGOFuncName !406 {
  %6 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !139
  %8 = mul nsw i32 %7, %4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !140
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %5
  %14 = shl i32 %8, 2
  %15 = sext i32 %14 to i64
  br label %16

16:                                               ; preds = %13, %16
  %17 = phi ptr [ %1, %13 ], [ %23, %16 ]
  %18 = phi ptr [ %2, %13 ], [ %22, %16 ]
  %19 = phi i32 [ 0, %13 ], [ %25, %16 ]
  %20 = phi ptr [ %3, %13 ], [ %24, %16 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %17, ptr align 4 %18, i64 %15, i1 false)
  %21 = getelementptr inbounds float, ptr %17, i64 %9
  %22 = getelementptr inbounds float, ptr %18, i64 %9
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %21, ptr align 4 %20, i64 %15, i1 false)
  %23 = getelementptr inbounds float, ptr %21, i64 %9
  %24 = getelementptr inbounds float, ptr %20, i64 %9
  %25 = add nuw nsw i32 %19, 2
  %26 = load i32, ptr %10, align 4, !tbaa !140
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %16, label %28, !llvm.loop !407

28:                                               ; preds = %16, %5
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @merge_renderresult_blur(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #20 !PGOFuncName !408 {
  %4 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 12
  %5 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 12
  %6 = load ptr, ptr %4, align 8, !tbaa !34
  %7 = load ptr, ptr %5, align 8, !tbaa !34
  %8 = icmp ne ptr %7, null
  %9 = icmp ne ptr %6, null
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %17, label %50

11:                                               ; preds = %36, %28
  %12 = load ptr, ptr %19, align 8, !tbaa !34
  %13 = load ptr, ptr %18, align 8, !tbaa !34
  %14 = icmp ne ptr %13, null
  %15 = icmp ne ptr %12, null
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %17, label %50, !llvm.loop !409

17:                                               ; preds = %3, %11
  %18 = phi ptr [ %13, %11 ], [ %7, %3 ]
  %19 = phi ptr [ %12, %11 ], [ %6, %3 ]
  %20 = getelementptr inbounds %struct.RenderLayer, ptr %18, i64 0, i32 11
  %21 = load ptr, ptr %20, align 8, !tbaa !70
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.RenderLayer, ptr %19, i64 0, i32 11
  %25 = load ptr, ptr %24, align 8, !tbaa !70
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call fastcc void @addblur_rect(ptr noundef %0, ptr noundef nonnull %21, ptr noundef nonnull %25, float noundef %2, i32 noundef 4) #26
  br label %28

28:                                               ; preds = %27, %23, %17
  %29 = getelementptr inbounds %struct.RenderLayer, ptr %19, i64 0, i32 18
  %30 = getelementptr inbounds %struct.RenderLayer, ptr %18, i64 0, i32 18
  %31 = load ptr, ptr %29, align 8, !tbaa !34
  %32 = load ptr, ptr %30, align 8, !tbaa !34
  %33 = icmp ne ptr %32, null
  %34 = icmp ne ptr %31, null
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %36, label %11

36:                                               ; preds = %28, %36
  %37 = phi ptr [ %46, %36 ], [ %32, %28 ]
  %38 = phi ptr [ %45, %36 ], [ %31, %28 ]
  %39 = getelementptr inbounds %struct.RenderPass, ptr %37, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !43
  %41 = getelementptr inbounds %struct.RenderPass, ptr %38, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !43
  %43 = getelementptr inbounds %struct.RenderPass, ptr %37, i64 0, i32 3
  %44 = load i32, ptr %43, align 4, !tbaa !404
  tail call fastcc void @addblur_rect(ptr noundef %0, ptr noundef %40, ptr noundef %42, float noundef %2, i32 noundef %44) #26
  %45 = load ptr, ptr %38, align 8, !tbaa !34
  %46 = load ptr, ptr %37, align 8, !tbaa !34
  %47 = icmp ne ptr %46, null
  %48 = icmp ne ptr %45, null
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %36, label %11, !llvm.loop !410

50:                                               ; preds = %11, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @addblur_rect(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, float noundef %3, i32 noundef %4) unnamed_addr #20 !PGOFuncName !411 {
  %6 = fsub float 1.000000e+00, %3
  %7 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !139
  %9 = mul nsw i32 %8, %4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.RenderResult, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !140
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %47

14:                                               ; preds = %5
  %15 = shl i32 %9, 2
  %16 = fcmp oeq float %3, 1.000000e+00
  %17 = sext i32 %15 to i64
  br label %18

18:                                               ; preds = %14, %41
  %19 = phi i32 [ %12, %14 ], [ %42, %41 ]
  %20 = phi ptr [ %1, %14 ], [ %43, %41 ]
  %21 = phi ptr [ %2, %14 ], [ %44, %41 ]
  %22 = phi i32 [ 0, %14 ], [ %45, %41 ]
  br i1 %16, label %23, label %25

23:                                               ; preds = %18
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %20, ptr align 4 %21, i64 %17, i1 false)
  %24 = load i32, ptr %11, align 4, !tbaa !140
  br label %41

25:                                               ; preds = %18
  %26 = load i32, ptr %7, align 8, !tbaa !139
  %27 = mul nsw i32 %26, %4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %25, %29
  %30 = phi ptr [ %39, %29 ], [ %21, %25 ]
  %31 = phi ptr [ %38, %29 ], [ %20, %25 ]
  %32 = phi i32 [ %37, %29 ], [ %27, %25 ]
  %33 = load float, ptr %31, align 4, !tbaa !130
  %34 = load float, ptr %30, align 4, !tbaa !130
  %35 = fmul float %34, %3
  %36 = tail call float @llvm.fmuladd.f32(float %6, float %33, float %35)
  store float %36, ptr %31, align 4, !tbaa !130
  %37 = add nsw i32 %32, -1
  %38 = getelementptr inbounds float, ptr %31, i64 1
  %39 = getelementptr inbounds float, ptr %30, i64 1
  %40 = icmp ugt i32 %32, 1
  br i1 %40, label %29, label %41, !llvm.loop !412

41:                                               ; preds = %29, %25, %23
  %42 = phi i32 [ %19, %25 ], [ %24, %23 ], [ %19, %29 ]
  %43 = getelementptr inbounds float, ptr %20, i64 %10
  %44 = getelementptr inbounds float, ptr %21, i64 %10
  %45 = add nuw nsw i32 %22, 1
  %46 = icmp slt i32 %45, %42
  br i1 %46, label %18, label %47, !llvm.loop !413

47:                                               ; preds = %41, %5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #21

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @render_scene(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !414 {
  %4 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %5 = tail call ptr @RE_NewRender(ptr noundef nonnull %4) #26
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %7 = load i32, ptr %6, align 4, !tbaa !142
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  %9 = load i32, ptr %8, align 8, !tbaa !143
  %10 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22
  %11 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 5
  store i32 %2, ptr %11, align 8, !tbaa !276
  %12 = tail call i32 @BKE_scene_camera_switch_update(ptr noundef %1) #24
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  tail call void @RE_InitState(ptr noundef %5, ptr noundef %0, ptr noundef nonnull %10, ptr noundef null, i32 noundef %7, i32 noundef %9, ptr noundef nonnull %13) #26
  %14 = getelementptr inbounds %struct.Render, ptr %5, i64 0, i32 45, i32 46
  %15 = load i32, ptr %14, align 4, !tbaa !135
  %16 = and i32 %15, -1048577
  %17 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %18 = load i32, ptr %17, align 4, !tbaa !135
  %19 = and i32 %18, 1048576
  %20 = or disjoint i32 %19, %16
  store i32 %20, ptr %14, align 4, !tbaa !135
  %21 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %22 = load ptr, ptr %21, align 8, !tbaa !211
  %23 = getelementptr inbounds %struct.Render, ptr %5, i64 0, i32 43
  store ptr %22, ptr %23, align 8, !tbaa !211
  %24 = getelementptr inbounds %struct.Render, ptr %5, i64 0, i32 44
  store ptr %1, ptr %24, align 8, !tbaa !66
  %25 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 12
  %26 = load i32, ptr %25, align 8, !tbaa !281
  %27 = getelementptr inbounds %struct.Render, ptr %5, i64 0, i32 48
  store i32 %26, ptr %27, align 8, !tbaa !282
  %28 = tail call zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef %1) #24
  %29 = getelementptr inbounds %struct.Render, ptr %5, i64 0, i32 8
  store i8 %28, ptr %29, align 8, !tbaa !212
  %30 = load ptr, ptr %21, align 8, !tbaa !211
  tail call void @BKE_scene_set_background(ptr noundef %30, ptr noundef %1) #24
  %31 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 86
  %32 = getelementptr inbounds %struct.Render, ptr %5, i64 0, i32 86
  %33 = load <2 x ptr>, ptr %31, align 8, !tbaa !34
  store <2 x ptr> %33, ptr %32, align 8, !tbaa !34
  %34 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %35 = getelementptr inbounds %struct.Render, ptr %5, i64 0, i32 96
  %36 = load <2 x ptr>, ptr %34, align 8, !tbaa !34
  store <2 x ptr> %36, ptr %35, align 8, !tbaa !34
  %37 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 90
  %38 = getelementptr inbounds %struct.Render, ptr %5, i64 0, i32 90
  %39 = load <2 x ptr>, ptr %37, align 8, !tbaa !34
  store <2 x ptr> %39, ptr %38, align 8, !tbaa !34
  %40 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 88
  %41 = getelementptr inbounds %struct.Render, ptr %5, i64 0, i32 88
  %42 = load <2 x ptr>, ptr %40, align 8, !tbaa !34
  store <2 x ptr> %42, ptr %41, align 8, !tbaa !34
  tail call fastcc void @do_render_fields_blur_3d(ptr noundef %5) #26
  ret void
}

; Function Attrs: optsize
declare void @nodeUpdate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_scene_set_background(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_stamp_buf(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @render_result_rect_to_ibuf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @RE_WriteRenderResult(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BKE_imbuf_write_stamp(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BLI_testextensie(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @BKE_add_image_extension(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_timestr(double noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_scene_frame_set(ptr noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @render_scene_needs_vector(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !415 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 60
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1, %16
  %6 = phi ptr [ %17, %16 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.SceneRenderLayer, ptr %6, i64 0, i32 8
  %8 = load i32, ptr %7, align 4, !tbaa !255
  %9 = and i32 %8, 131072
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.SceneRenderLayer, ptr %6, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !416
  %14 = and i32 %13, 512
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %5, %11
  %17 = load ptr, ptr %6, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %5, !llvm.loop !417

19:                                               ; preds = %11, %16, %1
  %20 = phi i32 [ 0, %1 ], [ 0, %16 ], [ 1, %11 ]
  ret i32 %20
}

; Function Attrs: optsize
declare void @RE_Database_FromScene_Vectors(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RE_Database_FromScene(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RE_Database_Preprocess(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @add_halo_flare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #23

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nounwind optsize willreturn memory(readwrite, argmem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nofree nounwind }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nounwind optsize }
attributes #25 = { nounwind optsize willreturn memory(read) }
attributes #26 = { optsize }
attributes #27 = { nounwind }

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
!38 = !{!39, !40, i64 16}
!39 = !{!"RenderPass", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !36, i64 24, !36, i64 88, !35, i64 96, !40, i64 104, !40, i64 108, !40, i64 112}
!40 = !{!"int", !36, i64 0}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!39, !35, i64 96}
!44 = !{!45, !46, i64 1712}
!45 = !{!"Render", !35, i64 0, !35, i64 8, !36, i64 16, !40, i64 92, !46, i64 96, !46, i64 98, !46, i64 100, !46, i64 102, !36, i64 104, !35, i64 112, !35, i64 120, !47, i64 128, !40, i64 144, !40, i64 148, !40, i64 152, !48, i64 156, !49, i64 172, !50, i64 188, !50, i64 192, !50, i64 196, !40, i64 200, !40, i64 204, !40, i64 208, !40, i64 212, !50, i64 216, !50, i64 220, !50, i64 224, !50, i64 228, !50, i64 232, !50, i64 236, !36, i64 240, !36, i64 252, !36, i64 288, !36, i64 352, !36, i64 416, !36, i64 480, !50, i64 544, !50, i64 548, !35, i64 552, !36, i64 560, !36, i64 816, !35, i64 1072, !36, i64 1080, !35, i64 1088, !35, i64 1096, !51, i64 1104, !58, i64 5088, !35, i64 5616, !40, i64 5624, !40, i64 5628, !47, i64 5632, !35, i64 5648, !35, i64 5656, !35, i64 5664, !35, i64 5672, !50, i64 5680, !35, i64 5688, !47, i64 5696, !50, i64 5712, !50, i64 5716, !40, i64 5720, !40, i64 5724, !40, i64 5728, !40, i64 5732, !40, i64 5736, !35, i64 5744, !47, i64 5752, !47, i64 5768, !47, i64 5784, !35, i64 5800, !47, i64 5808, !40, i64 5824, !35, i64 5832, !35, i64 5840, !35, i64 5848, !35, i64 5856, !35, i64 5864, !47, i64 5872, !35, i64 5888, !47, i64 5896, !47, i64 5912, !35, i64 5928, !35, i64 5936, !35, i64 5944, !35, i64 5952, !35, i64 5960, !35, i64 5968, !35, i64 5976, !35, i64 5984, !35, i64 5992, !35, i64 6000, !35, i64 6008, !35, i64 6016, !35, i64 6024, !35, i64 6032, !35, i64 6040, !35, i64 6048, !35, i64 6056, !60, i64 6064, !35, i64 6216, !35, i64 6224, !35, i64 6232}
!46 = !{!"short", !36, i64 0}
!47 = !{!"ListBase", !35, i64 0, !35, i64 8}
!48 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!49 = !{!"rctf", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12}
!50 = !{!"float", !36, i64 0}
!51 = !{!"RenderData", !52, i64 0, !35, i64 248, !35, i64 256, !55, i64 264, !56, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !50, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !46, i64 432, !46, i64 434, !50, i64 436, !50, i64 440, !50, i64 444, !50, i64 448, !50, i64 452, !46, i64 456, !46, i64 458, !46, i64 460, !46, i64 462, !46, i64 464, !46, i64 466, !40, i64 468, !46, i64 472, !46, i64 474, !46, i64 476, !46, i64 478, !46, i64 480, !46, i64 482, !40, i64 484, !40, i64 488, !46, i64 492, !46, i64 494, !40, i64 496, !40, i64 500, !46, i64 504, !46, i64 506, !46, i64 508, !46, i64 510, !46, i64 512, !36, i64 514, !36, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !46, i64 528, !46, i64 530, !46, i64 532, !46, i64 534, !46, i64 536, !46, i64 538, !46, i64 540, !46, i64 542, !49, i64 544, !49, i64 560, !48, i64 576, !47, i64 592, !46, i64 608, !46, i64 610, !50, i64 612, !50, i64 616, !50, i64 620, !50, i64 624, !40, i64 628, !50, i64 632, !50, i64 636, !50, i64 640, !50, i64 644, !46, i64 648, !46, i64 650, !46, i64 652, !46, i64 654, !46, i64 656, !46, i64 658, !50, i64 660, !50, i64 664, !46, i64 668, !46, i64 670, !50, i64 672, !50, i64 676, !36, i64 680, !40, i64 1704, !46, i64 1708, !46, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !40, i64 2520, !46, i64 2524, !46, i64 2526, !50, i64 2528, !50, i64 2532, !46, i64 2536, !46, i64 2538, !50, i64 2540, !46, i64 2544, !46, i64 2546, !40, i64 2548, !46, i64 2552, !46, i64 2554, !46, i64 2556, !46, i64 2558, !50, i64 2560, !50, i64 2564, !35, i64 2568, !40, i64 2576, !50, i64 2580, !36, i64 2584, !57, i64 2616, !40, i64 3976, !40, i64 3980}
!52 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !46, i64 8, !46, i64 10, !50, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !53, i64 24, !54, i64 184}
!53 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !36, i64 8, !36, i64 72, !50, i64 136, !50, i64 140, !35, i64 144, !35, i64 152}
!54 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!55 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !46, i64 48, !46, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!56 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !50, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !35, i64 64}
!57 = !{!"BakeData", !52, i64 0, !36, i64 248, !46, i64 1272, !46, i64 1274, !46, i64 1276, !46, i64 1278, !50, i64 1280, !50, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!58 = !{!"World", !59, i64 0, !35, i64 120, !46, i64 128, !46, i64 130, !46, i64 132, !46, i64 134, !50, i64 136, !50, i64 140, !50, i64 144, !50, i64 148, !50, i64 152, !50, i64 156, !50, i64 160, !50, i64 164, !50, i64 168, !50, i64 172, !50, i64 176, !50, i64 180, !50, i64 184, !50, i64 188, !50, i64 192, !50, i64 196, !46, i64 200, !46, i64 202, !46, i64 204, !46, i64 206, !46, i64 208, !46, i64 210, !46, i64 212, !46, i64 214, !50, i64 216, !50, i64 220, !50, i64 224, !50, i64 228, !50, i64 232, !50, i64 236, !50, i64 240, !50, i64 244, !50, i64 248, !50, i64 252, !50, i64 256, !50, i64 260, !46, i64 264, !46, i64 266, !46, i64 268, !46, i64 270, !50, i64 272, !50, i64 276, !50, i64 280, !50, i64 284, !46, i64 288, !46, i64 290, !46, i64 292, !46, i64 294, !50, i64 296, !50, i64 300, !50, i64 304, !50, i64 308, !50, i64 312, !50, i64 316, !50, i64 320, !46, i64 324, !46, i64 326, !46, i64 328, !46, i64 330, !46, i64 332, !46, i64 334, !35, i64 336, !35, i64 344, !35, i64 352, !36, i64 360, !46, i64 504, !46, i64 506, !36, i64 508, !35, i64 512, !35, i64 520}
!59 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !46, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !35, i64 112}
!60 = !{!"RenderStats", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !46, i64 28, !46, i64 30, !46, i64 32, !46, i64 34, !46, i64 36, !46, i64 38, !36, i64 40, !61, i64 48, !61, i64 56, !35, i64 64, !35, i64 72, !36, i64 80, !50, i64 144, !50, i64 148}
!61 = !{!"double", !36, i64 0}
!62 = !{!63, !35, i64 80}
!63 = !{!"RenderResult", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !46, i64 24, !46, i64 26, !35, i64 32, !35, i64 40, !35, i64 48, !48, i64 56, !40, i64 72, !40, i64 76, !47, i64 80, !48, i64 96, !35, i64 112, !40, i64 120, !40, i64 124, !40, i64 128, !35, i64 136}
!64 = distinct !{!64, !42}
!65 = !{!45, !35, i64 112}
!66 = !{!45, !35, i64 1096}
!67 = !{!40, !40, i64 0}
!68 = !{!63, !35, i64 48}
!69 = !{!63, !35, i64 40}
!70 = !{!71, !35, i64 136}
!71 = !{!"RenderLayer", !35, i64 0, !35, i64 8, !36, i64 16, !40, i64 92, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !40, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !40, i64 168, !40, i64 172, !35, i64 176, !47, i64 184}
!72 = !{!63, !40, i64 128}
!73 = !{i64 0, i64 8, !34, i64 8, i64 8, !34}
!74 = !{!45, !40, i64 156}
!75 = !{!63, !40, i64 72}
!76 = !{!45, !40, i64 164}
!77 = !{!63, !40, i64 76}
!78 = !{!45, !40, i64 200}
!79 = !{!45, !40, i64 204}
!80 = !{!45, !35, i64 6232}
!81 = !{!82, !40, i64 0}
!82 = !{!"EvaluationContext", !40, i64 0}
!83 = !{!45, !50, i64 216}
!84 = !{!45, !35, i64 5936}
!85 = !{!45, !35, i64 5952}
!86 = !{!45, !35, i64 5968}
!87 = !{!45, !35, i64 5984}
!88 = !{!45, !35, i64 6016}
!89 = !{!45, !35, i64 6048}
!90 = !{!91, !36, i64 2081}
!91 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !47, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !46, i64 2084, !46, i64 2086, !46, i64 2088, !36, i64 2090, !46, i64 2092, !40, i64 2096, !40, i64 2100, !36, i64 2104, !40, i64 2108, !40, i64 2112, !36, i64 2116}
!92 = !{!45, !35, i64 6056}
!93 = !{!45, !35, i64 6024}
!94 = !{!45, !35, i64 6008}
!95 = !{!45, !35, i64 5976}
!96 = !{!45, !35, i64 5960}
!97 = !{!45, !35, i64 5944}
!98 = !{!"pipeline.c:result_nothing"}
!99 = !{!"pipeline.c:result_rcti_nothing"}
!100 = !{!"pipeline.c:current_scene_nothing"}
!101 = !{!"pipeline.c:float_nothing"}
!102 = !{!"pipeline.c:default_break"}
!103 = !{!91, !36, i64 2080}
!104 = !{!"pipeline.c:stats_background"}
!105 = !{!60, !40, i64 0}
!106 = !{!60, !46, i64 28}
!107 = !{!60, !46, i64 30}
!108 = !{!60, !35, i64 64}
!109 = !{!60, !40, i64 16}
!110 = !{!60, !40, i64 8}
!111 = !{!60, !40, i64 4}
!112 = !{!60, !40, i64 20}
!113 = !{!91, !35, i64 0}
!114 = !{!"pipeline.c:stats_nothing"}
!115 = !{!45, !35, i64 5648}
!116 = !{!45, !35, i64 120}
!117 = !{!118, !35, i64 0}
!118 = !{!"", !47, i64 0}
!119 = distinct !{!119, !42}
!120 = distinct !{!120, !42}
!121 = !{!122, !40, i64 16}
!122 = !{!"RenderEngine", !35, i64 0, !35, i64 8, !40, i64 16, !35, i64 24, !40, i64 32, !40, i64 36, !40, i64 40, !35, i64 48, !47, i64 56, !36, i64 72, !40, i64 584, !40, i64 588, !35, i64 592, !40, i64 600, !40, i64 604, !49, i64 608, !48, i64 624, !36, i64 640, !40, i64 704, !40, i64 708}
!123 = distinct !{!123, !42}
!124 = !{!45, !40, i64 1624}
!125 = !{!45, !46, i64 100}
!126 = !{!45, !61, i64 6112}
!127 = !{i64 0, i64 1, !128, i64 1, i64 1, !128, i64 2, i64 1, !128, i64 3, i64 1, !128, i64 4, i64 1, !128, i64 5, i64 1, !128, i64 6, i64 1, !128, i64 7, i64 1, !128, i64 8, i64 2, !129, i64 10, i64 2, !129, i64 12, i64 4, !130, i64 16, i64 1, !128, i64 17, i64 1, !128, i64 18, i64 6, !128, i64 24, i64 4, !67, i64 28, i64 4, !67, i64 32, i64 64, !128, i64 96, i64 64, !128, i64 160, i64 4, !130, i64 164, i64 4, !130, i64 168, i64 8, !34, i64 176, i64 8, !34, i64 184, i64 64, !128, i64 248, i64 8, !34, i64 256, i64 8, !34, i64 264, i64 4, !67, i64 268, i64 4, !67, i64 272, i64 4, !67, i64 276, i64 4, !67, i64 280, i64 4, !67, i64 284, i64 4, !67, i64 288, i64 4, !67, i64 292, i64 4, !67, i64 296, i64 4, !67, i64 300, i64 4, !67, i64 304, i64 4, !67, i64 308, i64 4, !67, i64 312, i64 2, !129, i64 314, i64 2, !129, i64 316, i64 4, !67, i64 320, i64 4, !67, i64 324, i64 4, !67, i64 328, i64 4, !67, i64 332, i64 4, !67, i64 336, i64 4, !67, i64 340, i64 4, !67, i64 344, i64 4, !67, i64 348, i64 4, !67, i64 352, i64 4, !67, i64 356, i64 4, !67, i64 360, i64 4, !130, i64 364, i64 4, !67, i64 368, i64 4, !67, i64 372, i64 4, !67, i64 376, i64 4, !67, i64 380, i64 4, !67, i64 384, i64 4, !67, i64 388, i64 4, !67, i64 392, i64 8, !34, i64 400, i64 4, !67, i64 404, i64 4, !67, i64 408, i64 4, !67, i64 412, i64 4, !130, i64 416, i64 4, !67, i64 420, i64 4, !67, i64 424, i64 4, !67, i64 428, i64 4, !67, i64 432, i64 2, !129, i64 434, i64 2, !129, i64 436, i64 4, !130, i64 440, i64 4, !130, i64 444, i64 4, !130, i64 448, i64 4, !130, i64 452, i64 4, !130, i64 456, i64 2, !129, i64 458, i64 2, !129, i64 460, i64 2, !129, i64 462, i64 2, !129, i64 464, i64 2, !129, i64 466, i64 2, !129, i64 468, i64 4, !67, i64 472, i64 2, !129, i64 474, i64 2, !129, i64 476, i64 2, !129, i64 478, i64 2, !129, i64 480, i64 2, !129, i64 482, i64 2, !129, i64 484, i64 4, !67, i64 488, i64 4, !67, i64 492, i64 2, !129, i64 494, i64 2, !129, i64 496, i64 4, !67, i64 500, i64 4, !67, i64 504, i64 2, !129, i64 506, i64 2, !129, i64 508, i64 2, !129, i64 510, i64 2, !129, i64 512, i64 2, !129, i64 514, i64 1, !128, i64 515, i64 1, !128, i64 516, i64 4, !67, i64 520, i64 4, !67, i64 524, i64 4, !67, i64 528, i64 2, !129, i64 530, i64 2, !129, i64 532, i64 2, !129, i64 534, i64 2, !129, i64 536, i64 2, !129, i64 538, i64 2, !129, i64 540, i64 2, !129, i64 542, i64 2, !129, i64 544, i64 4, !130, i64 548, i64 4, !130, i64 552, i64 4, !130, i64 556, i64 4, !130, i64 560, i64 4, !130, i64 564, i64 4, !130, i64 568, i64 4, !130, i64 572, i64 4, !130, i64 576, i64 4, !67, i64 580, i64 4, !67, i64 584, i64 4, !67, i64 588, i64 4, !67, i64 592, i64 8, !34, i64 600, i64 8, !34, i64 608, i64 2, !129, i64 610, i64 2, !129, i64 612, i64 4, !130, i64 616, i64 4, !130, i64 620, i64 4, !130, i64 624, i64 4, !130, i64 628, i64 4, !67, i64 632, i64 4, !130, i64 636, i64 4, !130, i64 640, i64 4, !130, i64 644, i64 4, !130, i64 648, i64 2, !129, i64 650, i64 2, !129, i64 652, i64 2, !129, i64 654, i64 2, !129, i64 656, i64 2, !129, i64 658, i64 2, !129, i64 660, i64 4, !130, i64 664, i64 4, !130, i64 668, i64 2, !129, i64 670, i64 2, !129, i64 672, i64 4, !130, i64 676, i64 4, !130, i64 680, i64 1024, !128, i64 1704, i64 4, !67, i64 1708, i64 2, !129, i64 1710, i64 2, !129, i64 1712, i64 768, !128, i64 2480, i64 16, !128, i64 2496, i64 16, !128, i64 2512, i64 1, !128, i64 2513, i64 1, !128, i64 2514, i64 1, !128, i64 2515, i64 5, !128, i64 2520, i64 4, !67, i64 2524, i64 2, !129, i64 2526, i64 2, !129, i64 2528, i64 4, !130, i64 2532, i64 4, !130, i64 2536, i64 2, !129, i64 2538, i64 2, !129, i64 2540, i64 4, !130, i64 2544, i64 2, !129, i64 2546, i64 2, !129, i64 2548, i64 4, !67, i64 2552, i64 2, !129, i64 2554, i64 2, !129, i64 2556, i64 2, !129, i64 2558, i64 2, !129, i64 2560, i64 4, !130, i64 2564, i64 4, !130, i64 2568, i64 8, !34, i64 2576, i64 4, !67, i64 2580, i64 4, !130, i64 2584, i64 32, !128, i64 2616, i64 1, !128, i64 2617, i64 1, !128, i64 2618, i64 1, !128, i64 2619, i64 1, !128, i64 2620, i64 1, !128, i64 2621, i64 1, !128, i64 2622, i64 1, !128, i64 2623, i64 1, !128, i64 2624, i64 2, !129, i64 2626, i64 2, !129, i64 2628, i64 4, !130, i64 2632, i64 1, !128, i64 2633, i64 1, !128, i64 2634, i64 6, !128, i64 2640, i64 4, !67, i64 2644, i64 4, !67, i64 2648, i64 64, !128, i64 2712, i64 64, !128, i64 2776, i64 4, !130, i64 2780, i64 4, !130, i64 2784, i64 8, !34, i64 2792, i64 8, !34, i64 2800, i64 64, !128, i64 2864, i64 1024, !128, i64 3888, i64 2, !129, i64 3890, i64 2, !129, i64 3892, i64 2, !129, i64 3894, i64 2, !129, i64 3896, i64 4, !130, i64 3900, i64 4, !130, i64 3904, i64 3, !128, i64 3907, i64 1, !128, i64 3908, i64 1, !128, i64 3909, i64 3, !128, i64 3912, i64 64, !128, i64 3976, i64 4, !67, i64 3980, i64 4, !67}
!128 = !{!36, !36, i64 0}
!129 = !{!46, !46, i64 0}
!130 = !{!50, !50, i64 0}
!131 = !{!45, !46, i64 1582}
!132 = !{!51, !36, i64 0}
!133 = !{!45, !35, i64 6216}
!134 = !{i32 0, i32 -33792}
!135 = !{!45, !40, i64 1620}
!136 = !{!45, !46, i64 98}
!137 = !{!45, !46, i64 1642}
!138 = distinct !{!138, !42}
!139 = !{!63, !40, i64 16}
!140 = !{!63, !40, i64 20}
!141 = !{!"pipeline.c:re_init_resolution"}
!142 = !{!45, !40, i64 148}
!143 = !{!45, !40, i64 152}
!144 = !{i64 0, i64 4, !130, i64 4, i64 4, !130, i64 8, i64 4, !130, i64 12, i64 4, !130}
!145 = !{i64 0, i64 4, !67, i64 4, i64 4, !67, i64 8, i64 4, !67, i64 12, i64 4, !67}
!146 = !{!45, !40, i64 160}
!147 = !{!45, !40, i64 168}
!148 = !{!45, !50, i64 196}
!149 = !{!"pipeline.c:check_mode_full_sample"}
!150 = !{!51, !40, i64 516}
!151 = !{!45, !46, i64 1538}
!152 = !{!"pipeline.c:render_result_rescale"}
!153 = distinct !{!153, !42}
!154 = distinct !{!154, !42}
!155 = !{!51, !50, i64 624}
!156 = !{!45, !50, i64 1728}
!157 = !{!51, !46, i64 610}
!158 = !{!45, !46, i64 1714}
!159 = !{!51, !50, i64 440}
!160 = !{!45, !50, i64 1544}
!161 = !{!51, !40, i64 2576}
!162 = !{!45, !40, i64 3680}
!163 = !{!51, !50, i64 2580}
!164 = !{!45, !50, i64 3684}
!165 = !{!45, !50, i64 544}
!166 = !{!45, !50, i64 548}
!167 = !{!45, !50, i64 172}
!168 = !{!45, !50, i64 176}
!169 = !{!45, !50, i64 180}
!170 = !{!45, !50, i64 184}
!171 = !{!45, !35, i64 5992}
!172 = !{!45, !35, i64 6000}
!173 = !{!45, !35, i64 6032}
!174 = !{!45, !35, i64 6040}
!175 = !{!45, !40, i64 208}
!176 = !{!"pipeline.c:BLI_rcti_size_x"}
!177 = !{!48, !40, i64 4}
!178 = !{!48, !40, i64 0}
!179 = !{!"pipeline.c:BLI_rctf_size_x"}
!180 = !{!49, !50, i64 4}
!181 = !{!49, !50, i64 0}
!182 = !{!45, !61, i64 6120}
!183 = !{!"pipeline.c:threaded_tile_processor"}
!184 = !{!45, !35, i64 5856}
!185 = !{i32 0, i32 2}
!186 = !{!63, !40, i64 120}
!187 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 74, !128, i64 92, i64 4, !67, i64 96, i64 2, !129, i64 98, i64 2, !129, i64 100, i64 2, !129, i64 102, i64 2, !129, i64 104, i64 1, !128, i64 112, i64 8, !34, i64 120, i64 8, !34, i64 128, i64 8, !34, i64 136, i64 8, !34, i64 144, i64 4, !67, i64 148, i64 4, !67, i64 152, i64 4, !67, i64 156, i64 4, !67, i64 160, i64 4, !67, i64 164, i64 4, !67, i64 168, i64 4, !67, i64 172, i64 4, !130, i64 176, i64 4, !130, i64 180, i64 4, !130, i64 184, i64 4, !130, i64 188, i64 4, !130, i64 192, i64 4, !130, i64 196, i64 4, !130, i64 200, i64 4, !67, i64 204, i64 4, !67, i64 208, i64 4, !67, i64 212, i64 4, !67, i64 216, i64 4, !130, i64 220, i64 4, !130, i64 224, i64 4, !130, i64 228, i64 4, !130, i64 232, i64 4, !130, i64 236, i64 4, !130, i64 240, i64 12, !128, i64 252, i64 36, !128, i64 288, i64 64, !128, i64 352, i64 64, !128, i64 416, i64 64, !128, i64 480, i64 64, !128, i64 544, i64 4, !130, i64 548, i64 4, !130, i64 552, i64 8, !34, i64 560, i64 256, !128, i64 816, i64 256, !128, i64 1072, i64 8, !34, i64 1080, i64 4, !128, i64 1088, i64 8, !34, i64 1096, i64 8, !34, i64 1104, i64 1, !128, i64 1105, i64 1, !128, i64 1106, i64 1, !128, i64 1107, i64 1, !128, i64 1108, i64 1, !128, i64 1109, i64 1, !128, i64 1110, i64 1, !128, i64 1111, i64 1, !128, i64 1112, i64 2, !129, i64 1114, i64 2, !129, i64 1116, i64 4, !130, i64 1120, i64 1, !128, i64 1121, i64 1, !128, i64 1122, i64 6, !128, i64 1128, i64 4, !67, i64 1132, i64 4, !67, i64 1136, i64 64, !128, i64 1200, i64 64, !128, i64 1264, i64 4, !130, i64 1268, i64 4, !130, i64 1272, i64 8, !34, i64 1280, i64 8, !34, i64 1288, i64 64, !128, i64 1352, i64 8, !34, i64 1360, i64 8, !34, i64 1368, i64 4, !67, i64 1372, i64 4, !67, i64 1376, i64 4, !67, i64 1380, i64 4, !67, i64 1384, i64 4, !67, i64 1388, i64 4, !67, i64 1392, i64 4, !67, i64 1396, i64 4, !67, i64 1400, i64 4, !67, i64 1404, i64 4, !67, i64 1408, i64 4, !67, i64 1412, i64 4, !67, i64 1416, i64 2, !129, i64 1418, i64 2, !129, i64 1420, i64 4, !67, i64 1424, i64 4, !67, i64 1428, i64 4, !67, i64 1432, i64 4, !67, i64 1436, i64 4, !67, i64 1440, i64 4, !67, i64 1444, i64 4, !67, i64 1448, i64 4, !67, i64 1452, i64 4, !67, i64 1456, i64 4, !67, i64 1460, i64 4, !67, i64 1464, i64 4, !130, i64 1468, i64 4, !67, i64 1472, i64 4, !67, i64 1476, i64 4, !67, i64 1480, i64 4, !67, i64 1484, i64 4, !67, i64 1488, i64 4, !67, i64 1492, i64 4, !67, i64 1496, i64 8, !34, i64 1504, i64 4, !67, i64 1508, i64 4, !67, i64 1512, i64 4, !67, i64 1516, i64 4, !130, i64 1520, i64 4, !67, i64 1524, i64 4, !67, i64 1528, i64 4, !67, i64 1532, i64 4, !67, i64 1536, i64 2, !129, i64 1538, i64 2, !129, i64 1540, i64 4, !130, i64 1544, i64 4, !130, i64 1548, i64 4, !130, i64 1552, i64 4, !130, i64 1556, i64 4, !130, i64 1560, i64 2, !129, i64 1562, i64 2, !129, i64 1564, i64 2, !129, i64 1566, i64 2, !129, i64 1568, i64 2, !129, i64 1570, i64 2, !129, i64 1572, i64 4, !67, i64 1576, i64 2, !129, i64 1578, i64 2, !129, i64 1580, i64 2, !129, i64 1582, i64 2, !129, i64 1584, i64 2, !129, i64 1586, i64 2, !129, i64 1588, i64 4, !67, i64 1592, i64 4, !67, i64 1596, i64 2, !129, i64 1598, i64 2, !129, i64 1600, i64 4, !67, i64 1604, i64 4, !67, i64 1608, i64 2, !129, i64 1610, i64 2, !129, i64 1612, i64 2, !129, i64 1614, i64 2, !129, i64 1616, i64 2, !129, i64 1618, i64 1, !128, i64 1619, i64 1, !128, i64 1620, i64 4, !67, i64 1624, i64 4, !67, i64 1628, i64 4, !67, i64 1632, i64 2, !129, i64 1634, i64 2, !129, i64 1636, i64 2, !129, i64 1638, i64 2, !129, i64 1640, i64 2, !129, i64 1642, i64 2, !129, i64 1644, i64 2, !129, i64 1646, i64 2, !129, i64 1648, i64 4, !130, i64 1652, i64 4, !130, i64 1656, i64 4, !130, i64 1660, i64 4, !130, i64 1664, i64 4, !130, i64 1668, i64 4, !130, i64 1672, i64 4, !130, i64 1676, i64 4, !130, i64 1680, i64 4, !67, i64 1684, i64 4, !67, i64 1688, i64 4, !67, i64 1692, i64 4, !67, i64 1696, i64 8, !34, i64 1704, i64 8, !34, i64 1712, i64 2, !129, i64 1714, i64 2, !129, i64 1716, i64 4, !130, i64 1720, i64 4, !130, i64 1724, i64 4, !130, i64 1728, i64 4, !130, i64 1732, i64 4, !67, i64 1736, i64 4, !130, i64 1740, i64 4, !130, i64 1744, i64 4, !130, i64 1748, i64 4, !130, i64 1752, i64 2, !129, i64 1754, i64 2, !129, i64 1756, i64 2, !129, i64 1758, i64 2, !129, i64 1760, i64 2, !129, i64 1762, i64 2, !129, i64 1764, i64 4, !130, i64 1768, i64 4, !130, i64 1772, i64 2, !129, i64 1774, i64 2, !129, i64 1776, i64 4, !130, i64 1780, i64 4, !130, i64 1784, i64 1024, !128, i64 2808, i64 4, !67, i64 2812, i64 2, !129, i64 2814, i64 2, !129, i64 2816, i64 768, !128, i64 3584, i64 16, !128, i64 3600, i64 16, !128, i64 3616, i64 1, !128, i64 3617, i64 1, !128, i64 3618, i64 1, !128, i64 3619, i64 5, !128, i64 3624, i64 4, !67, i64 3628, i64 2, !129, i64 3630, i64 2, !129, i64 3632, i64 4, !130, i64 3636, i64 4, !130, i64 3640, i64 2, !129, i64 3642, i64 2, !129, i64 3644, i64 4, !130, i64 3648, i64 2, !129, i64 3650, i64 2, !129, i64 3652, i64 4, !67, i64 3656, i64 2, !129, i64 3658, i64 2, !129, i64 3660, i64 2, !129, i64 3662, i64 2, !129, i64 3664, i64 4, !130, i64 3668, i64 4, !130, i64 3672, i64 8, !34, i64 3680, i64 4, !67, i64 3684, i64 4, !130, i64 3688, i64 32, !128, i64 3720, i64 1, !128, i64 3721, i64 1, !128, i64 3722, i64 1, !128, i64 3723, i64 1, !128, i64 3724, i64 1, !128, i64 3725, i64 1, !128, i64 3726, i64 1, !128, i64 3727, i64 1, !128, i64 3728, i64 2, !129, i64 3730, i64 2, !129, i64 3732, i64 4, !130, i64 3736, i64 1, !128, i64 3737, i64 1, !128, i64 3738, i64 6, !128, i64 3744, i64 4, !67, i64 3748, i64 4, !67, i64 3752, i64 64, !128, i64 3816, i64 64, !128, i64 3880, i64 4, !130, i64 3884, i64 4, !130, i64 3888, i64 8, !34, i64 3896, i64 8, !34, i64 3904, i64 64, !128, i64 3968, i64 1024, !128, i64 4992, i64 2, !129, i64 4994, i64 2, !129, i64 4996, i64 2, !129, i64 4998, i64 2, !129, i64 5000, i64 4, !130, i64 5004, i64 4, !130, i64 5008, i64 3, !128, i64 5011, i64 1, !128, i64 5012, i64 1, !128, i64 5013, i64 3, !128, i64 5016, i64 64, !128, i64 5080, i64 4, !67, i64 5084, i64 4, !67, i64 5088, i64 8, !34, i64 5096, i64 8, !34, i64 5104, i64 8, !34, i64 5112, i64 8, !34, i64 5120, i64 66, !128, i64 5186, i64 2, !129, i64 5188, i64 4, !67, i64 5192, i64 4, !67, i64 5196, i64 4, !67, i64 5200, i64 8, !34, i64 5208, i64 8, !34, i64 5216, i64 2, !129, i64 5218, i64 2, !129, i64 5220, i64 2, !129, i64 5222, i64 2, !129, i64 5224, i64 4, !130, i64 5228, i64 4, !130, i64 5232, i64 4, !130, i64 5236, i64 4, !130, i64 5240, i64 4, !130, i64 5244, i64 4, !130, i64 5248, i64 4, !130, i64 5252, i64 4, !130, i64 5256, i64 4, !130, i64 5260, i64 4, !130, i64 5264, i64 4, !130, i64 5268, i64 4, !130, i64 5272, i64 4, !130, i64 5276, i64 4, !130, i64 5280, i64 4, !130, i64 5284, i64 4, !130, i64 5288, i64 2, !129, i64 5290, i64 2, !129, i64 5292, i64 2, !129, i64 5294, i64 2, !129, i64 5296, i64 2, !129, i64 5298, i64 2, !129, i64 5300, i64 2, !129, i64 5302, i64 2, !129, i64 5304, i64 4, !130, i64 5308, i64 4, !130, i64 5312, i64 4, !130, i64 5316, i64 4, !130, i64 5320, i64 4, !130, i64 5324, i64 4, !130, i64 5328, i64 4, !130, i64 5332, i64 4, !130, i64 5336, i64 4, !130, i64 5340, i64 4, !130, i64 5344, i64 4, !130, i64 5348, i64 4, !130, i64 5352, i64 2, !129, i64 5354, i64 2, !129, i64 5356, i64 2, !129, i64 5358, i64 2, !129, i64 5360, i64 4, !130, i64 5364, i64 4, !130, i64 5368, i64 4, !130, i64 5372, i64 4, !130, i64 5376, i64 2, !129, i64 5378, i64 2, !129, i64 5380, i64 2, !129, i64 5382, i64 2, !129, i64 5384, i64 4, !130, i64 5388, i64 4, !130, i64 5392, i64 4, !130, i64 5396, i64 4, !130, i64 5400, i64 4, !130, i64 5404, i64 4, !130, i64 5408, i64 4, !130, i64 5412, i64 2, !129, i64 5414, i64 2, !129, i64 5416, i64 2, !129, i64 5418, i64 2, !129, i64 5420, i64 2, !129, i64 5422, i64 2, !129, i64 5424, i64 8, !34, i64 5432, i64 8, !34, i64 5440, i64 8, !34, i64 5448, i64 144, !128, i64 5592, i64 2, !129, i64 5594, i64 2, !129, i64 5596, i64 4, !128, i64 5600, i64 8, !34, i64 5608, i64 8, !34, i64 5616, i64 8, !34, i64 5624, i64 4, !67, i64 5628, i64 4, !67, i64 5632, i64 8, !34, i64 5640, i64 8, !34, i64 5648, i64 8, !34, i64 5656, i64 8, !34, i64 5664, i64 8, !34, i64 5672, i64 8, !34, i64 5680, i64 4, !130, i64 5688, i64 8, !34, i64 5696, i64 8, !34, i64 5704, i64 8, !34, i64 5712, i64 4, !130, i64 5716, i64 4, !130, i64 5720, i64 4, !67, i64 5724, i64 4, !67, i64 5728, i64 4, !67, i64 5732, i64 4, !67, i64 5736, i64 4, !67, i64 5744, i64 8, !34, i64 5752, i64 8, !34, i64 5760, i64 8, !34, i64 5768, i64 8, !34, i64 5776, i64 8, !34, i64 5784, i64 8, !34, i64 5792, i64 8, !34, i64 5800, i64 8, !34, i64 5808, i64 8, !34, i64 5816, i64 8, !34, i64 5824, i64 4, !67, i64 5832, i64 8, !34, i64 5840, i64 8, !34, i64 5848, i64 8, !34, i64 5856, i64 8, !34, i64 5864, i64 8, !34, i64 5872, i64 8, !34, i64 5880, i64 8, !34, i64 5888, i64 8, !34, i64 5896, i64 8, !34, i64 5904, i64 8, !34, i64 5912, i64 8, !34, i64 5920, i64 8, !34, i64 5928, i64 8, !34, i64 5936, i64 8, !34, i64 5944, i64 8, !34, i64 5952, i64 8, !34, i64 5960, i64 8, !34, i64 5968, i64 8, !34, i64 5976, i64 8, !34, i64 5984, i64 8, !34, i64 5992, i64 8, !34, i64 6000, i64 8, !34, i64 6008, i64 8, !34, i64 6016, i64 8, !34, i64 6024, i64 8, !34, i64 6032, i64 8, !34, i64 6040, i64 8, !34, i64 6048, i64 8, !34, i64 6056, i64 8, !34, i64 6064, i64 4, !67, i64 6068, i64 4, !67, i64 6072, i64 4, !67, i64 6076, i64 4, !67, i64 6080, i64 4, !67, i64 6084, i64 4, !67, i64 6088, i64 4, !67, i64 6092, i64 2, !129, i64 6094, i64 2, !129, i64 6096, i64 2, !129, i64 6098, i64 2, !129, i64 6100, i64 2, !129, i64 6102, i64 2, !129, i64 6104, i64 1, !128, i64 6112, i64 8, !188, i64 6120, i64 8, !188, i64 6128, i64 8, !34, i64 6136, i64 8, !34, i64 6144, i64 64, !128, i64 6208, i64 4, !130, i64 6212, i64 4, !130, i64 6216, i64 8, !34, i64 6224, i64 8, !34, i64 6232, i64 8, !34}
!188 = !{!61, !61, i64 0}
!189 = !{i8 0, i8 2}
!190 = !{!191, !40, i64 136}
!191 = !{!"RenderPart", !35, i64 0, !35, i64 8, !35, i64 16, !47, i64 24, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !48, i64 112, !40, i64 128, !40, i64 132, !40, i64 136, !46, i64 140, !46, i64 142, !46, i64 144, !46, i64 146, !35, i64 152}
!192 = distinct !{!192, !42}
!193 = !{!194, !35, i64 0}
!194 = !{!"RenderThread", !35, i64 0, !35, i64 8, !40, i64 16, !35, i64 24, !35, i64 32}
!195 = !{!194, !35, i64 8}
!196 = !{!194, !40, i64 16}
!197 = !{!194, !35, i64 24}
!198 = !{!194, !35, i64 32}
!199 = distinct !{!199, !42}
!200 = !{!191, !35, i64 16}
!201 = !{!45, !46, i64 6098}
!202 = !{!45, !40, i64 6088}
!203 = !{!191, !46, i64 142}
!204 = distinct !{!204, !42}
!205 = distinct !{!205, !42}
!206 = distinct !{!206, !42}
!207 = !{!208, !46, i64 952}
!208 = !{!"Object", !59, i64 0, !35, i64 120, !35, i64 128, !46, i64 136, !46, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !209, i64 312, !35, i64 360, !47, i64 368, !47, i64 384, !47, i64 400, !47, i64 416, !40, i64 432, !40, i64 436, !35, i64 440, !35, i64 448, !40, i64 456, !40, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !50, i64 616, !50, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !40, i64 944, !46, i64 948, !46, i64 950, !46, i64 952, !46, i64 954, !46, i64 956, !46, i64 958, !46, i64 960, !46, i64 962, !46, i64 964, !36, i64 966, !36, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !50, i64 988, !50, i64 992, !50, i64 996, !50, i64 1000, !50, i64 1004, !50, i64 1008, !50, i64 1012, !50, i64 1016, !50, i64 1020, !50, i64 1024, !50, i64 1028, !50, i64 1032, !46, i64 1036, !46, i64 1038, !46, i64 1040, !36, i64 1042, !36, i64 1043, !46, i64 1044, !36, i64 1046, !36, i64 1047, !50, i64 1048, !50, i64 1052, !47, i64 1056, !47, i64 1072, !47, i64 1088, !47, i64 1104, !50, i64 1120, !46, i64 1124, !46, i64 1126, !36, i64 1128, !40, i64 1144, !40, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !46, i64 1162, !36, i64 1164, !47, i64 1176, !47, i64 1192, !47, i64 1208, !47, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !46, i64 1266, !50, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !210, i64 1304, !210, i64 1312, !40, i64 1320, !40, i64 1324, !47, i64 1328, !47, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !47, i64 1400, !35, i64 1416}
!209 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !46, i64 16, !46, i64 18, !46, i64 20, !46, i64 22, !46, i64 24, !46, i64 26, !46, i64 28, !46, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!210 = !{!"long", !36, i64 0}
!211 = !{!45, !35, i64 1088}
!212 = !{!45, !36, i64 104}
!213 = !{!214, !46, i64 98}
!214 = !{!"Scene", !59, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !47, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !46, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !51, i64 280, !215, i64 4264, !47, i64 4296, !47, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !46, i64 4376, !46, i64 4378, !40, i64 4380, !47, i64 4384, !216, i64 4400, !217, i64 4416, !220, i64 4600, !35, i64 4608, !221, i64 4616, !35, i64 4640, !210, i64 4648, !210, i64 4656, !53, i64 4664, !54, i64 4824, !222, i64 4888, !35, i64 4952}
!215 = !{!"AudioData", !40, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !40, i64 16, !46, i64 20, !46, i64 22, !50, i64 24, !50, i64 28}
!216 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!217 = !{!"GameData", !216, i64 0, !46, i64 16, !46, i64 18, !46, i64 20, !46, i64 22, !46, i64 24, !46, i64 26, !46, i64 28, !46, i64 30, !46, i64 32, !36, i64 34, !218, i64 40, !46, i64 64, !46, i64 66, !50, i64 68, !219, i64 72, !50, i64 128, !50, i64 132, !40, i64 136, !46, i64 140, !46, i64 142, !46, i64 144, !46, i64 146, !46, i64 148, !46, i64 150, !46, i64 152, !46, i64 154, !46, i64 156, !46, i64 158, !46, i64 160, !46, i64 162, !50, i64 164, !50, i64 168, !50, i64 172, !50, i64 176, !50, i64 180}
!218 = !{!"GameDome", !46, i64 0, !46, i64 2, !46, i64 4, !46, i64 6, !50, i64 8, !50, i64 12, !35, i64 16}
!219 = !{!"RecastData", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !50, i64 24, !50, i64 28, !50, i64 32, !50, i64 36, !40, i64 40, !50, i64 44, !50, i64 48, !46, i64 52, !46, i64 54}
!220 = !{!"UnitSettings", !50, i64 0, !36, i64 4, !36, i64 5, !46, i64 6}
!221 = !{!"PhysicsSettings", !36, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!222 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!223 = distinct !{!223, !42}
!224 = !{!225, !46, i64 172}
!225 = !{!"bNode", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !36, i64 104, !40, i64 168, !46, i64 172, !46, i64 174, !46, i64 176, !46, i64 178, !46, i64 180, !46, i64 182, !46, i64 184, !46, i64 186, !36, i64 188, !47, i64 200, !47, i64 216, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !47, i64 264, !50, i64 280, !50, i64 284, !50, i64 288, !50, i64 292, !50, i64 296, !50, i64 300, !50, i64 304, !40, i64 308, !36, i64 312, !46, i64 376, !46, i64 378, !50, i64 380, !50, i64 384, !46, i64 388, !46, i64 390, !35, i64 392, !49, i64 400, !49, i64 416, !49, i64 432, !46, i64 448, !46, i64 450, !40, i64 452, !35, i64 456}
!226 = !{!225, !40, i64 168}
!227 = !{!225, !35, i64 240}
!228 = !{!214, !40, i64 800}
!229 = distinct !{!229, !42}
!230 = !{!214, !46, i64 758}
!231 = !{!"pipeline.c:do_merge_fullsample"}
!232 = !{!233, !35, i64 376}
!233 = !{!"bNodeTree", !59, i64 0, !35, i64 120, !35, i64 128, !36, i64 136, !35, i64 200, !35, i64 208, !36, i64 216, !47, i64 224, !47, i64 240, !40, i64 256, !40, i64 260, !40, i64 264, !40, i64 268, !40, i64 272, !46, i64 276, !46, i64 278, !40, i64 280, !40, i64 284, !46, i64 288, !46, i64 290, !40, i64 292, !49, i64 296, !47, i64 312, !47, i64 328, !35, i64 344, !234, i64 352, !40, i64 356, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !35, i64 408, !35, i64 416, !35, i64 424}
!234 = !{!"bNodeInstanceKey", !40, i64 0}
!235 = !{!233, !35, i64 384}
!236 = !{!233, !35, i64 368}
!237 = !{!233, !35, i64 416}
!238 = !{!233, !35, i64 400}
!239 = !{!233, !35, i64 408}
!240 = !{!45, !46, i64 6102}
!241 = distinct !{!241, !42}
!242 = distinct !{!242, !42}
!243 = distinct !{!243, !42}
!244 = !{!63, !35, i64 112}
!245 = distinct !{!245, !42}
!246 = distinct !{!246, !42}
!247 = !{!214, !35, i64 256}
!248 = !{!249, !35, i64 8}
!249 = !{!"Editing", !35, i64 0, !47, i64 8, !47, i64 24, !35, i64 40, !36, i64 48, !36, i64 1072, !40, i64 2096, !40, i64 2100, !40, i64 2104, !40, i64 2108, !49, i64 2112}
!250 = !{!251, !40, i64 100}
!251 = !{!"Sequence", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !40, i64 112, !40, i64 116, !40, i64 120, !40, i64 124, !40, i64 128, !40, i64 132, !40, i64 136, !40, i64 140, !50, i64 144, !50, i64 148, !50, i64 152, !46, i64 156, !46, i64 158, !40, i64 160, !40, i64 164, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !35, i64 208, !35, i64 216, !50, i64 224, !50, i64 228, !35, i64 232, !35, i64 240, !35, i64 248, !47, i64 256, !35, i64 272, !35, i64 280, !50, i64 288, !50, i64 292, !50, i64 296, !50, i64 300, !35, i64 304, !40, i64 312, !40, i64 316, !40, i64 320, !50, i64 324, !40, i64 328, !36, i64 332, !36, i64 333, !47, i64 336}
!252 = !{!251, !35, i64 0}
!253 = distinct !{!253, !42}
!254 = !{!214, !46, i64 888}
!255 = !{!256, !40, i64 108}
!256 = !{!"SceneRenderLayer", !35, i64 0, !35, i64 8, !36, i64 16, !35, i64 80, !35, i64 88, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !40, i64 112, !40, i64 116, !40, i64 120, !50, i64 124, !257, i64 128}
!257 = !{!"FreestyleConfig", !47, i64 0, !40, i64 16, !40, i64 20, !40, i64 24, !50, i64 28, !50, i64 32, !50, i64 36, !47, i64 40}
!258 = !{!214, !50, i64 844}
!259 = !{!214, !50, i64 840}
!260 = !{!214, !50, i64 852}
!261 = !{!214, !50, i64 848}
!262 = !{!214, !36, i64 246}
!263 = !{!214, !35, i64 248}
!264 = !{!214, !35, i64 128}
!265 = !{!"pipeline.c:check_composite_output"}
!266 = !{!"pipeline.c:composite_needs_render"}
!267 = !{!214, !40, i64 796}
!268 = distinct !{!268, !42}
!269 = !{!"pipeline.c:check_valid_camera"}
!270 = !{!251, !35, i64 184}
!271 = !{!251, !35, i64 192}
!272 = distinct !{!272, !42}
!273 = !{!"pipeline.c:render_scene_has_layers_to_render"}
!274 = distinct !{!274, !42}
!275 = !{!91, !36, i64 2090}
!276 = !{!214, !40, i64 680}
!277 = !{!214, !36, i64 280}
!278 = !{!"pipeline.c:render_initialize_from_main"}
!279 = !{!51, !46, i64 478}
!280 = !{!45, !35, i64 5616}
!281 = !{!214, !40, i64 232}
!282 = !{!45, !40, i64 5624}
!283 = !{!45, !40, i64 5628}
!284 = !{!45, !36, i64 6104}
!285 = !{!"pipeline.c:do_render_all_options"}
!286 = !{!45, !40, i64 1504}
!287 = !{!45, !35, i64 6224}
!288 = !{!45, !40, i64 2808}
!289 = !{!"pipeline.c:do_write_image_or_movie"}
!290 = !{!291, !35, i64 40}
!291 = !{!"ImBuf", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !36, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !35, i64 40, !35, i64 48, !36, i64 56, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !50, i64 112, !36, i64 120, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !35, i64 296, !35, i64 304, !40, i64 312, !36, i64 316, !36, i64 1340, !35, i64 2368, !40, i64 2376, !35, i64 2384, !40, i64 2392, !40, i64 2396, !35, i64 2400, !35, i64 2408, !35, i64 2416, !35, i64 2424, !40, i64 2432, !48, i64 2436, !292, i64 2456}
!292 = !{!"DDSData", !40, i64 0, !40, i64 4, !35, i64 8, !40, i64 16}
!293 = !{!291, !40, i64 36}
!294 = !{!295, !35, i64 8}
!295 = !{!"bMovieHandle", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32}
!296 = !{!214, !40, i64 684}
!297 = !{!291, !40, i64 16}
!298 = !{!291, !40, i64 20}
!299 = !{!45, !36, i64 1104}
!300 = !{!214, !36, i64 286}
!301 = !{!214, !36, i64 283}
!302 = !{i64 0, i64 1, !128, i64 1, i64 1, !128, i64 2, i64 1, !128, i64 3, i64 1, !128, i64 4, i64 1, !128, i64 5, i64 1, !128, i64 6, i64 1, !128, i64 7, i64 1, !128, i64 8, i64 2, !129, i64 10, i64 2, !129, i64 12, i64 4, !130, i64 16, i64 1, !128, i64 17, i64 1, !128, i64 18, i64 6, !128, i64 24, i64 4, !67, i64 28, i64 4, !67, i64 32, i64 64, !128, i64 96, i64 64, !128, i64 160, i64 4, !130, i64 164, i64 4, !130, i64 168, i64 8, !34, i64 176, i64 8, !34, i64 184, i64 64, !128}
!303 = !{!52, !36, i64 0}
!304 = !{!291, !36, i64 24}
!305 = !{!45, !46, i64 96}
!306 = !{!295, !35, i64 0}
!307 = !{!295, !35, i64 24}
!308 = !{!214, !40, i64 688}
!309 = distinct !{!309, !42}
!310 = distinct !{!310, !42}
!311 = !{!295, !35, i64 16}
!312 = !{!214, !40, i64 764}
!313 = !{!214, !40, i64 768}
!314 = !{!"pipeline.c:do_render_3d"}
!315 = !{!45, !50, i64 5712}
!316 = !{!45, !50, i64 5716}
!317 = !{!214, !50, i64 692}
!318 = !{!291, !35, i64 48}
!319 = !{!71, !40, i64 168}
!320 = !{!71, !40, i64 172}
!321 = !{!322, !46, i64 164}
!322 = !{!"EnvMap", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 64, !36, i64 128, !46, i64 164, !46, i64 166, !50, i64 168, !50, i64 172, !50, i64 176, !40, i64 180, !46, i64 184, !46, i64 186, !40, i64 188, !40, i64 192, !46, i64 196, !46, i64 198}
!323 = distinct !{!323, !42}
!324 = distinct !{!324, !42}
!325 = !{!"pipeline.c:max_ii"}
!326 = !{!"pipeline.c:BLI_rcti_size_y"}
!327 = !{!48, !40, i64 12}
!328 = !{!48, !40, i64 8}
!329 = !{!"pipeline.c:copy_v4_v4"}
!330 = !{!"pipeline.c:render_display_update_enabled"}
!331 = !{!"pipeline.c:thread_break"}
!332 = !{!"pipeline.c:find_next_pano_slice"}
!333 = !{!191, !40, i64 112}
!334 = distinct !{!334, !42}
!335 = !{!191, !40, i64 116}
!336 = !{!45, !50, i64 232}
!337 = !{!45, !50, i64 236}
!338 = !{!45, !50, i64 224}
!339 = !{!45, !50, i64 228}
!340 = !{!"pipeline.c:find_next_part"}
!341 = !{i32 -1073741824, i32 1073741824}
!342 = distinct !{!342, !42}
!343 = distinct !{!343, !42}
!344 = !{!"pipeline.c:do_render_thread"}
!345 = !{!191, !46, i64 146}
!346 = distinct !{!346, !42}
!347 = !{!"pipeline.c:print_part_stats"}
!348 = !{!45, !35, i64 6128}
!349 = !{!"pipeline.c:BLI_rcti_cent_x"}
!350 = !{!"pipeline.c:BLI_rcti_cent_y"}
!351 = !{!"pipeline.c:do_part_thread"}
!352 = !{!191, !46, i64 140}
!353 = !{!"pipeline.c:render_composit_stats"}
!354 = !{!"pipeline.c:tag_scenes_for_render"}
!355 = distinct !{!355, !42}
!356 = !{!357, !46, i64 1040}
!357 = !{!"Main", !35, i64 0, !35, i64 8, !36, i64 16, !46, i64 1040, !46, i64 1042, !46, i64 1044, !46, i64 1046, !210, i64 1048, !36, i64 1056, !46, i64 1072, !35, i64 1080, !47, i64 1088, !47, i64 1104, !47, i64 1120, !47, i64 1136, !47, i64 1152, !47, i64 1168, !47, i64 1184, !47, i64 1200, !47, i64 1216, !47, i64 1232, !47, i64 1248, !47, i64 1264, !47, i64 1280, !47, i64 1296, !47, i64 1312, !47, i64 1328, !47, i64 1344, !47, i64 1360, !47, i64 1376, !47, i64 1392, !47, i64 1408, !47, i64 1424, !47, i64 1440, !47, i64 1456, !47, i64 1472, !47, i64 1488, !47, i64 1504, !47, i64 1520, !47, i64 1536, !47, i64 1552, !47, i64 1568, !47, i64 1584, !47, i64 1600, !47, i64 1616, !36, i64 1632, !35, i64 1888, !35, i64 1896}
!358 = !{!357, !46, i64 1042}
!359 = !{!214, !46, i64 816}
!360 = !{!59, !46, i64 98}
!361 = distinct !{!361, !42}
!362 = !{!"pipeline.c:tag_dependend_objects_for_render"}
!363 = !{!364, !35, i64 32}
!364 = !{!"Base", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !46, i64 28, !46, i64 30, !35, i64 32}
!365 = !{!364, !40, i64 16}
!366 = !{!208, !46, i64 136}
!367 = !{!368, !40, i64 16}
!368 = !{!"ModifierData", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !36, i64 32, !35, i64 96, !35, i64 104}
!369 = !{!370, !35, i64 112}
!370 = !{!"BooleanModifierData", !368, i64 0, !35, i64 112, !40, i64 120, !40, i64 124}
!371 = !{!372, !35, i64 112}
!372 = !{!"ArrayModifierData", !368, i64 0, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !36, i64 144, !36, i64 156, !50, i64 168, !50, i64 172, !40, i64 176, !40, i64 180, !40, i64 184, !40, i64 188}
!373 = !{!372, !35, i64 120}
!374 = !{!375, !35, i64 112}
!375 = !{!"ShrinkwrapModifierData", !368, i64 0, !35, i64 112, !35, i64 120, !36, i64 128, !50, i64 192, !46, i64 196, !36, i64 198, !36, i64 199, !50, i64 200, !36, i64 204, !36, i64 205, !36, i64 206}
!376 = !{!368, !35, i64 0}
!377 = distinct !{!377, !42}
!378 = distinct !{!378, !42}
!379 = !{!"pipeline.c:rlayer_node_uses_alpha"}
!380 = distinct !{!380, !42}
!381 = !{!"pipeline.c:node_tree_has_composite_output"}
!382 = distinct !{!382, !42}
!383 = !{!"pipeline.c:check_valid_compositing_camera"}
!384 = distinct !{!384, !42}
!385 = !{!"pipeline.c:validate_render_settings"}
!386 = !{!"pipeline.c:do_render_seq"}
!387 = !{!45, !40, i64 6064}
!388 = !{!45, !40, i64 1512}
!389 = !{!45, !40, i64 1508}
!390 = !{!"pipeline.c:do_render_composite_fields_blur_3d"}
!391 = !{!"pipeline.c:renderresult_stampinfo"}
!392 = !{!63, !35, i64 32}
!393 = !{!"pipeline.c:do_render_fields_blur_3d"}
!394 = !{!"pipeline.c:render_result_disprect_to_full_resolution"}
!395 = !{!"pipeline.c:ntree_render_scenes"}
!396 = distinct !{!396, !42}
!397 = !{!"pipeline.c:do_render_fields_3d"}
!398 = !{!45, !46, i64 6092}
!399 = !{!"pipeline.c:do_render_blur_3d"}
!400 = !{!45, !46, i64 6094}
!401 = distinct !{!401, !42}
!402 = !{!"pipeline.c:merge_renderresult_fields"}
!403 = distinct !{!403, !42}
!404 = !{!39, !40, i64 20}
!405 = distinct !{!405, !42}
!406 = !{!"pipeline.c:interleave_rect"}
!407 = distinct !{!407, !42}
!408 = !{!"pipeline.c:merge_renderresult_blur"}
!409 = distinct !{!409, !42}
!410 = distinct !{!410, !42}
!411 = !{!"pipeline.c:addblur_rect"}
!412 = distinct !{!412, !42}
!413 = distinct !{!413, !42}
!414 = !{!"pipeline.c:render_scene"}
!415 = !{!"pipeline.c:render_scene_needs_vector"}
!416 = !{!256, !40, i64 112}
!417 = distinct !{!417, !42}
