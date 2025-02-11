; ModuleID = 'blender/source/blender/editors/render/render_internal.c'
source_filename = "blender/source/blender/editors/render/render_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.rctf = type { float, float, float, float }
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
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.RenderJob = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, ptr, %struct.ImageUser, i8, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, i8 }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.SpaceImage = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.ImageUser, ptr, %struct.Scopes, %struct.Histogram, ptr, [2 x float], float, float, float, float, float, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.MaskSpaceInfo }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.RenderEngine = type { ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.ListBase, [512 x i8], i32, i32, ptr, i32, i32, %struct.rctf, %struct.rcti, [4 x [4 x float]], i32, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.RenderPreview = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], i32, i32, i8 }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.RenderResult = type { ptr, ptr, i32, i32, i16, i16, ptr, ptr, ptr, %struct.rcti, i32, i32, %struct.ListBase, %struct.rcti, ptr, i32, i32, i32, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.RenderStats = type { i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, double, double, ptr, ptr, [64 x i8], float, float }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.RenderSlot = type { [64 x i8] }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.RenderLayer = type { ptr, ptr, [74 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase }

@.str = private unnamed_addr constant [7 x i8] c"Render\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Render active scene\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"RENDER_OT_render\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"animation\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Animation\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"Render files from the animation range of this scene\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"write_still\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Write Image\00", align 1
@.str.8 = private unnamed_addr constant [82 x i8] c"Save rendered the image to the output path (used only when animation is disabled)\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"use_viewport\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Use 3D Viewport\00", align 1
@.str.11 = private unnamed_addr constant [65 x i8] c"When inside a 3D viewport, use layers and camera of the viewport\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"layer\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Render Layer\00", align 1
@.str.14 = private unnamed_addr constant [72 x i8] c"Single render layer to re-render (used only when animation is disabled)\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"scene\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"Scene\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c"Scene to render, current scene if not specified\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"View3dPreview %p\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.19 = private unnamed_addr constant [19 x i8] c"render_view3d_draw\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.20 = private unnamed_addr constant [61 x i8] c"Cannot write a single file with an animation format selected\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.21 = private unnamed_addr constant [11 x i8] c"render job\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"Sequence Render\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"Render Result\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"rendertext\00", align 1
@MEM_get_memory_in_use = external local_unnamed_addr global ptr, align 8
@MEM_get_mapped_memory_in_use = external local_unnamed_addr global ptr, align 8
@MEM_get_peak_memory = external local_unnamed_addr global ptr, align 8
@.str.25 = private unnamed_addr constant [6 x i8] c"%s | \00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"3D Local View\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"3D View\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"Frame:%d \00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"| Last:%s \00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"| \00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"Time:%s \00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"| %s \00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"Ve:%d \00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"Fa:%d \00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"Ha:%d \00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"St:%d \00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"La:%d \00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c"| Mem:%.2fM (%.2fM, Peak %.2fM) \00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"| Mem:%.2fM, Peak: %.2fM \00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"Field %d \00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"Blur %d \00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"| Full Sample %d \00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"Render Preview\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"render preview\00", align 1
@str = private unnamed_addr constant [37 x i8] c"WARNING! renderwin text beyond limit\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RENDER_OT_render(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @screen_render_invoke, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @screen_render_modal, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @screen_render_cancel, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @screen_render_exec, ptr %7, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #16
  %11 = load ptr, ptr %8, align 8, !tbaa !19
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #16
  %13 = load ptr, ptr %8, align 8, !tbaa !19
  %14 = tail call ptr @RNA_def_boolean(ptr noundef %13, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #16
  %15 = load ptr, ptr %8, align 8, !tbaa !19
  %16 = tail call ptr @RNA_def_string(ptr noundef %15, ptr noundef nonnull @.str.12, ptr noundef null, i32 noundef 74, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #16
  tail call void @RNA_def_property_flag(ptr noundef %16, i32 noundef 268435456) #16
  %17 = load ptr, ptr %8, align 8, !tbaa !19
  %18 = tail call ptr @RNA_def_string(ptr noundef %17, ptr noundef nonnull @.str.15, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #16
  tail call void @RNA_def_property_flag(ptr noundef %18, i32 noundef 268435456) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @screen_render_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  store ptr %6, ptr %4, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  store ptr null, ptr %5, align 8, !tbaa !20
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !21
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.3) #16
  %10 = trunc i32 %9 to i8
  %11 = load ptr, ptr %7, align 8, !tbaa !21
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.6) #16
  %13 = load ptr, ptr %7, align 8, !tbaa !21
  %14 = tail call i32 @RNA_boolean_get(ptr noundef %13, ptr noundef nonnull @.str.9) #16
  %15 = and i32 %14, 255
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %3
  %18 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.View3D, ptr %18, i64 0, i32 26
  %22 = load i16, ptr %21, align 4, !tbaa !23
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.View3D, ptr %18, i64 0, i32 15
  %26 = load ptr, ptr %25, align 8, !tbaa !28
  br label %27

27:                                               ; preds = %3, %24, %17, %20
  %28 = phi i1 [ false, %20 ], [ true, %17 ], [ false, %24 ], [ true, %3 ]
  %29 = phi ptr [ %18, %20 ], [ null, %17 ], [ %18, %24 ], [ null, %3 ]
  %30 = phi ptr [ null, %20 ], [ null, %17 ], [ %26, %24 ], [ null, %3 ]
  %31 = tail call ptr @CTX_wm_manager(ptr noundef %0) #16
  %32 = tail call zeroext i8 @WM_jobs_test(ptr noundef %31, ptr noundef %6, i32 noundef 2) #16
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %179

34:                                               ; preds = %27
  %35 = tail call zeroext i8 @RE_force_single_renderlayer(ptr noundef %6) #16
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67371008, ptr noundef null) #16
  br label %38

38:                                               ; preds = %37, %34
  %39 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !29
  %41 = tail call zeroext i8 @RE_is_rendering_allowed(ptr noundef %6, ptr noundef %30, ptr noundef %40) #16
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %179, label %43

43:                                               ; preds = %38
  %44 = icmp eq i8 %10, 0
  %45 = and i32 %12, 255
  %46 = icmp ne i32 %45, 0
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22
  %50 = load i8, ptr %49, align 8, !tbaa !30
  %51 = tail call zeroext i8 @BKE_imtype_is_movie(i8 noundef zeroext %50) #16
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = load ptr, ptr %39, align 8, !tbaa !29
  tail call void @BKE_report(ptr noundef %54, i32 noundef 32, ptr noundef nonnull @.str.20) #16
  br label %179

55:                                               ; preds = %48, %43
  %56 = tail call ptr @CTX_wm_manager(ptr noundef %0) #16
  %57 = tail call ptr @CTX_wm_screen(ptr noundef %0) #16
  tail call void @WM_jobs_kill_all_except(ptr noundef %56, ptr noundef %57) #16
  %58 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4, !tbaa !50
  %59 = icmp eq i16 %58, 101
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = call ptr @BKE_undo_get_main(ptr noundef nonnull %4) #16
  br label %64

62:                                               ; preds = %55
  %63 = tail call ptr @CTX_data_main(ptr noundef %0) #16
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi ptr [ %61, %60 ], [ %63, %62 ]
  %66 = call ptr @CTX_wm_manager(ptr noundef %0) #16
  %67 = call ptr @ED_screen_animation_playing(ptr noundef %66) #16
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %64
  %70 = call i32 @ED_screen_animation_play(ptr noundef %0, i32 noundef 0, i32 noundef 0) #16
  br label %71

71:                                               ; preds = %69, %64
  call void @WM_cursor_wait(i8 noundef zeroext 1) #16
  %72 = call zeroext i8 @ED_editors_flush_edits(ptr noundef %0, i8 noundef zeroext 1) #16
  call void @BKE_sequencer_cache_cleanup() #16
  %73 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %74 = load i32, ptr %73, align 4, !tbaa !52
  %75 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %76 = load i32, ptr %75, align 8, !tbaa !55
  %77 = call ptr @render_view_open(ptr noundef %0, i32 noundef %74, i32 noundef %76) #16
  call fastcc void @screen_render_scene_layer_set(ptr noundef nonnull %1, ptr noundef %65, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  %78 = load ptr, ptr %7, align 8, !tbaa !21
  %79 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %78, ptr noundef nonnull @.str.12) #16
  %80 = icmp eq i8 %79, 0
  %81 = select i1 %80, i32 7, i32 15
  %82 = load ptr, ptr @MEM_callocN, align 8, !tbaa !20
  %83 = call ptr %82(i64 noundef 392, ptr noundef nonnull @.str.21) #16
  store ptr %65, ptr %83, align 8, !tbaa !56
  %84 = load ptr, ptr %4, align 8, !tbaa !20
  %85 = getelementptr inbounds %struct.RenderJob, ptr %83, i64 0, i32 1
  store ptr %84, ptr %85, align 8, !tbaa !59
  %86 = getelementptr inbounds %struct.RenderJob, ptr %83, i64 0, i32 2
  store ptr %84, ptr %86, align 8, !tbaa !60
  %87 = load ptr, ptr %5, align 8, !tbaa !20
  %88 = getelementptr inbounds %struct.RenderJob, ptr %83, i64 0, i32 4
  store ptr %87, ptr %88, align 8, !tbaa !61
  %89 = getelementptr inbounds %struct.RenderJob, ptr %83, i64 0, i32 5
  store ptr %30, ptr %89, align 8, !tbaa !62
  %90 = getelementptr inbounds %struct.RenderJob, ptr %83, i64 0, i32 6
  store i32 0, ptr %90, align 8, !tbaa !63
  %91 = getelementptr inbounds %struct.RenderJob, ptr %83, i64 0, i32 8
  store i8 %10, ptr %91, align 1, !tbaa !64
  %92 = and i1 %44, %46
  %93 = zext i1 %92 to i8
  %94 = getelementptr inbounds %struct.RenderJob, ptr %83, i64 0, i32 9
  store i8 %93, ptr %94, align 2, !tbaa !65
  %95 = getelementptr inbounds %struct.RenderJob, ptr %83, i64 0, i32 11
  store ptr %84, ptr %95, align 8, !tbaa !66
  %96 = getelementptr inbounds %struct.RenderJob, ptr %83, i64 0, i32 11, i32 7
  store i8 1, ptr %96, align 2, !tbaa !67
  %97 = load ptr, ptr %39, align 8, !tbaa !29
  %98 = getelementptr inbounds %struct.RenderJob, ptr %83, i64 0, i32 16
  store ptr %97, ptr %98, align 8, !tbaa !68
  %99 = getelementptr inbounds %struct.RenderJob, ptr %83, i64 0, i32 17
  store i32 0, ptr %99, align 8, !tbaa !69
  %100 = getelementptr inbounds %struct.RenderJob, ptr %83, i64 0, i32 18
  store i32 0, ptr %100, align 4, !tbaa !70
  %101 = getelementptr inbounds %struct.RenderJob, ptr %83, i64 0, i32 19
  store ptr %77, ptr %101, align 8, !tbaa !71
  %102 = getelementptr inbounds %struct.RenderJob, ptr %83, i64 0, i32 21
  %103 = getelementptr inbounds %struct.Scene, ptr %84, i64 0, i32 45
  call void @BKE_color_managed_display_settings_copy(ptr noundef nonnull %102, ptr noundef nonnull %103) #16
  %104 = getelementptr inbounds %struct.RenderJob, ptr %83, i64 0, i32 20
  %105 = load ptr, ptr %4, align 8, !tbaa !20
  %106 = getelementptr inbounds %struct.Scene, ptr %105, i64 0, i32 44
  call void @BKE_color_managed_view_settings_copy(ptr noundef nonnull %104, ptr noundef nonnull %106) #16
  %107 = icmp eq ptr %77, null
  br i1 %107, label %114, label %108

108:                                              ; preds = %71
  %109 = getelementptr inbounds %struct.ScrArea, ptr %77, i64 0, i32 19
  %110 = load ptr, ptr %109, align 8, !tbaa !72
  %111 = getelementptr inbounds %struct.SpaceImage, ptr %110, i64 0, i32 6, i32 10
  %112 = load i16, ptr %111, align 2, !tbaa !74
  %113 = sext i16 %112 to i32
  store i32 %113, ptr %99, align 8, !tbaa !69
  br label %114

114:                                              ; preds = %108, %71
  %115 = load ptr, ptr %4, align 8, !tbaa !20
  br i1 %28, label %140, label %116

116:                                              ; preds = %114
  %117 = getelementptr inbounds %struct.Scene, ptr %115, i64 0, i32 12
  %118 = load i32, ptr %117, align 8, !tbaa !79
  %119 = getelementptr inbounds %struct.View3D, ptr %29, i64 0, i32 22
  %120 = load i32, ptr %119, align 8, !tbaa !80
  %121 = icmp eq i32 %118, %120
  br i1 %121, label %123, label %122

122:                                              ; preds = %116
  store i32 %120, ptr %90, align 8, !tbaa !63
  br label %129

123:                                              ; preds = %116
  %124 = icmp eq ptr %30, null
  br i1 %124, label %131, label %125

125:                                              ; preds = %123
  %126 = getelementptr inbounds %struct.Scene, ptr %115, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !81
  %128 = icmp eq ptr %30, %127
  br i1 %128, label %131, label %129

129:                                              ; preds = %125, %122
  %130 = getelementptr inbounds %struct.RenderJob, ptr %83, i64 0, i32 7
  store i8 1, ptr %130, align 4, !tbaa !82
  br label %131

131:                                              ; preds = %129, %123, %125
  %132 = getelementptr inbounds %struct.View3D, ptr %29, i64 0, i32 20
  %133 = load ptr, ptr %132, align 8, !tbaa !83
  %134 = icmp eq ptr %133, null
  br i1 %134, label %140, label %135

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.View3D, ptr %133, i64 0, i32 22
  %137 = load i32, ptr %136, align 8, !tbaa !80
  %138 = load i32, ptr %90, align 8, !tbaa !63
  %139 = or i32 %138, %137
  store i32 %139, ptr %90, align 8, !tbaa !63
  br label %140

140:                                              ; preds = %131, %135, %114
  %141 = getelementptr inbounds %struct.Scene, ptr %115, i64 0, i32 22, i32 44
  %142 = load i8, ptr %141, align 2, !tbaa !84
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %157, label %144

144:                                              ; preds = %140
  %145 = load i32, ptr %90, align 8, !tbaa !63
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.Scene, ptr %115, i64 0, i32 12
  %149 = load i32, ptr %148, align 8, !tbaa !79
  br label %150

150:                                              ; preds = %144, %147
  %151 = phi i32 [ %149, %147 ], [ %145, %144 ]
  %152 = call ptr @CTX_wm_manager(ptr noundef %0) #16
  call void @WM_set_locked_interface(ptr noundef %152, i8 noundef zeroext 1) #16
  %153 = getelementptr inbounds %struct.RenderJob, ptr %83, i64 0, i32 22
  store i8 1, ptr %153, align 8, !tbaa !85
  %154 = load ptr, ptr %83, align 8, !tbaa !56
  %155 = load ptr, ptr %4, align 8, !tbaa !20
  call fastcc void @clean_viewport_memory(ptr noundef %154, ptr noundef %155, i32 noundef %151) #18
  %156 = load ptr, ptr %4, align 8, !tbaa !20
  br label %157

157:                                              ; preds = %150, %140
  %158 = phi ptr [ %156, %150 ], [ %115, %140 ]
  %159 = getelementptr inbounds %struct.Scene, ptr %158, i64 0, i32 22
  %160 = call i32 @RE_seq_render_active(ptr noundef %158, ptr noundef nonnull %159) #16
  %161 = icmp eq i32 %160, 0
  %162 = select i1 %161, ptr @.str, ptr @.str.22
  %163 = call ptr @CTX_wm_manager(ptr noundef %0) #16
  %164 = call ptr @CTX_wm_window(ptr noundef %0) #16
  %165 = load ptr, ptr %4, align 8, !tbaa !20
  %166 = call ptr @WM_jobs_get(ptr noundef %163, ptr noundef %164, ptr noundef %165, ptr noundef nonnull %162, i32 noundef %81, i32 noundef 2) #16
  call void @WM_jobs_customdata_set(ptr noundef %166, ptr noundef nonnull %83, ptr noundef nonnull @render_freejob) #16
  call void @WM_jobs_timer(ptr noundef %166, double noundef 2.000000e-01, i32 noundef 67895296, i32 noundef 0) #16
  call void @WM_jobs_callbacks(ptr noundef %166, ptr noundef nonnull @render_startjob, ptr noundef null, ptr noundef null, ptr noundef nonnull @render_endjob) #16
  %167 = call ptr @BKE_image_verify_viewer(i32 noundef 4, ptr noundef nonnull @.str.23) #16
  call void @BKE_image_signal(ptr noundef %167, ptr noundef null, i32 noundef 1) #16
  %168 = load ptr, ptr %85, align 8, !tbaa !59
  call void @BKE_image_backup_render(ptr noundef %168, ptr noundef %167) #16
  %169 = getelementptr inbounds %struct.RenderJob, ptr %83, i64 0, i32 10
  store ptr %167, ptr %169, align 8, !tbaa !86
  %170 = load ptr, ptr %4, align 8, !tbaa !20
  %171 = getelementptr inbounds %struct.ID, ptr %170, i64 0, i32 4
  %172 = call ptr @RE_NewRender(ptr noundef nonnull %171) #16
  call void @RE_test_break_cb(ptr noundef %172, ptr noundef nonnull %83, ptr noundef nonnull @render_breakjob) #16
  call void @RE_draw_lock_cb(ptr noundef %172, ptr noundef nonnull %83, ptr noundef nonnull @render_drawlock) #16
  call void @RE_display_update_cb(ptr noundef %172, ptr noundef nonnull %83, ptr noundef nonnull @image_rect_update) #16
  call void @RE_current_scene_update_cb(ptr noundef %172, ptr noundef nonnull %83, ptr noundef nonnull @current_scene_update) #16
  call void @RE_stats_draw_cb(ptr noundef %172, ptr noundef nonnull %83, ptr noundef nonnull @image_renderinfo_cb) #16
  call void @RE_progress_cb(ptr noundef %172, ptr noundef nonnull %83, ptr noundef nonnull @render_progress_update) #16
  %173 = getelementptr inbounds %struct.RenderJob, ptr %83, i64 0, i32 3
  store ptr %172, ptr %173, align 8, !tbaa !87
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !88
  %174 = load ptr, ptr %4, align 8, !tbaa !20
  %175 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %174, ptr %175, align 8, !tbaa !89
  %176 = call ptr @CTX_wm_manager(ptr noundef %0) #16
  call void @WM_jobs_start(ptr noundef %176, ptr noundef %166) #16
  call void @WM_cursor_wait(i8 noundef zeroext 0) #16
  %177 = load ptr, ptr %4, align 8, !tbaa !20
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67895296, ptr noundef %177) #16
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !90
  %178 = call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef nonnull %1) #16
  br label %179

179:                                              ; preds = %38, %27, %157, %53
  %180 = phi i32 [ 2, %53 ], [ 1, %157 ], [ 2, %27 ], [ 2, %38 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  ret i32 %180
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @screen_render_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !89
  %6 = tail call ptr @CTX_wm_manager(ptr noundef %0) #16
  %7 = tail call zeroext i8 @WM_jobs_test(ptr noundef %6, ptr noundef %5, i32 noundef 2) #16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !91
  %12 = icmp eq i16 %11, 218
  %13 = select i1 %12, i32 1, i32 8
  br label %14

14:                                               ; preds = %9, %3
  %15 = phi i32 [ 12, %3 ], [ %13, %9 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @screen_render_cancel(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %0) #16
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !89
  tail call void @WM_jobs_kill_type(ptr noundef %3, ptr noundef %5, i32 noundef 2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @screen_render_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  store ptr %5, ptr %3, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  store ptr null, ptr %4, align 8, !tbaa !20
  %6 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #16
  %7 = tail call ptr @CTX_data_main(ptr noundef %0) #16
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !21
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.3) #16
  %11 = load ptr, ptr %8, align 8, !tbaa !21
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.6) #16
  %13 = trunc i32 %12 to i8
  %14 = icmp eq ptr %6, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.View3D, ptr %6, i64 0, i32 26
  %17 = load i16, ptr %16, align 4, !tbaa !23
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.View3D, ptr %6, i64 0, i32 15
  %21 = load ptr, ptr %20, align 8, !tbaa !28
  br label %22

22:                                               ; preds = %19, %2, %15
  %23 = phi ptr [ null, %15 ], [ null, %2 ], [ %21, %19 ]
  call fastcc void @screen_render_scene_layer_set(ptr noundef nonnull %1, ptr noundef %7, ptr noundef nonnull %3, ptr noundef nonnull %4) #18
  %24 = and i32 %10, 255
  %25 = icmp eq i32 %24, 0
  %26 = and i32 %12, 255
  %27 = icmp ne i32 %26, 0
  %28 = select i1 %25, i1 %27, i1 false
  %29 = load ptr, ptr %3, align 8, !tbaa !20
  br i1 %28, label %30, label %38

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.Scene, ptr %29, i64 0, i32 22
  %32 = load i8, ptr %31, align 8, !tbaa !30
  %33 = tail call zeroext i8 @BKE_imtype_is_movie(i8 noundef zeroext %32) #16
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %37 = load ptr, ptr %36, align 8, !tbaa !29
  tail call void @BKE_report(ptr noundef %37, i32 noundef 32, ptr noundef nonnull @.str.20) #16
  br label %65

38:                                               ; preds = %30, %22
  %39 = getelementptr inbounds %struct.ID, ptr %29, i64 0, i32 4
  %40 = tail call ptr @RE_NewRender(ptr noundef nonnull %39) #16
  br i1 %14, label %48, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.View3D, ptr %6, i64 0, i32 22
  %43 = load i32, ptr %42, align 8, !tbaa !80
  %44 = getelementptr inbounds %struct.Scene, ptr %29, i64 0, i32 12
  %45 = load i32, ptr %44, align 8, !tbaa !79
  %46 = icmp eq i32 %43, %45
  %47 = select i1 %46, i32 0, i32 %43
  br label %48

48:                                               ; preds = %41, %38
  %49 = phi i32 [ 0, %38 ], [ %47, %41 ]
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !88
  tail call void @RE_test_break_cb(ptr noundef %40, ptr noundef null, ptr noundef nonnull @render_break) #16
  %50 = tail call ptr @BKE_image_verify_viewer(i32 noundef 4, ptr noundef nonnull @.str.23) #16
  tail call void @BKE_image_signal(ptr noundef %50, ptr noundef null, i32 noundef 1) #16
  tail call void @BKE_image_backup_render(ptr noundef %29, ptr noundef %50) #16
  tail call void @BKE_sequencer_cache_cleanup() #16
  %51 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %52 = load ptr, ptr %51, align 8, !tbaa !29
  tail call void @RE_SetReports(ptr noundef %40, ptr noundef %52) #16
  tail call void @BLI_begin_threaded_malloc() #16
  br i1 %25, label %60, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.Scene, ptr %29, i64 0, i32 22, i32 6
  %55 = load i32, ptr %54, align 4, !tbaa !92
  %56 = getelementptr inbounds %struct.Scene, ptr %29, i64 0, i32 22, i32 7
  %57 = load i32, ptr %56, align 8, !tbaa !93
  %58 = getelementptr inbounds %struct.Scene, ptr %29, i64 0, i32 22, i32 26
  %59 = load i32, ptr %58, align 4, !tbaa !94
  tail call void @RE_BlenderAnim(ptr noundef %40, ptr noundef %7, ptr noundef %29, ptr noundef %23, i32 noundef %49, i32 noundef %55, i32 noundef %57, i32 noundef %59) #16
  br label %64

60:                                               ; preds = %48
  %61 = load ptr, ptr %4, align 8, !tbaa !20
  %62 = getelementptr inbounds %struct.Scene, ptr %29, i64 0, i32 22, i32 5
  %63 = load i32, ptr %62, align 8, !tbaa !95
  tail call void @RE_BlenderFrame(ptr noundef %40, ptr noundef %7, ptr noundef %29, ptr noundef %61, ptr noundef %23, i32 noundef %49, i32 noundef %63, i8 noundef zeroext %13) #16
  br label %64

64:                                               ; preds = %60, %53
  tail call void @BLI_end_threaded_malloc() #16
  tail call void @RE_SetReports(ptr noundef %40, ptr noundef null) #16
  tail call void @ED_update_for_newframe(ptr noundef %7, ptr noundef nonnull %29, i32 noundef 1) #16
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67895296, ptr noundef nonnull %29) #16
  br label %65

65:                                               ; preds = %64, %35
  %66 = phi i32 [ 2, %35 ], [ 4, %64 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret i32 %66
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @render_view3d_update(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.RenderEngine, ptr %0, i64 0, i32 13
  %4 = load i32, ptr %3, align 8, !tbaa !96
  %5 = or i32 %4, 4
  store i32 %5, ptr %3, align 8, !tbaa !96
  tail call fastcc void @render_view3d_do(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @render_view3d_do(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %1) #16
  %4 = tail call ptr @CTX_wm_region(ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 5
  %6 = load i16, ptr %5, align 8, !tbaa !98
  %7 = sext i16 %6 to i32
  %8 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 6
  %9 = load i16, ptr %8, align 2, !tbaa !101
  %10 = sext i16 %9 to i32
  %11 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 117
  %12 = load i32, ptr %11, align 8, !tbaa !102
  %13 = mul nsw i32 %12, %12
  %14 = tail call ptr @CTX_wm_window(ptr noundef %1) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %76, label %16

16:                                               ; preds = %2
  %17 = tail call fastcc zeroext i8 @render_view3d_flag_changed(ptr noundef %0, ptr noundef %1) #18, !range !103
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %76, label %19

19:                                               ; preds = %16
  %20 = tail call ptr @CTX_wm_manager(ptr noundef %1) #16
  %21 = tail call ptr @CTX_wm_window(ptr noundef %1) #16
  %22 = tail call ptr @CTX_wm_region(ptr noundef %1) #16
  %23 = tail call ptr @WM_jobs_get(ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef nonnull @.str.44, i32 noundef 2, i32 noundef 3) #16
  %24 = load ptr, ptr @MEM_callocN, align 8, !tbaa !20
  %25 = tail call ptr %24(i64 noundef 168, ptr noundef nonnull @.str.45) #16
  %26 = getelementptr inbounds %struct.RenderPreview, ptr %25, i64 0, i32 3
  store ptr %23, ptr %26, align 8, !tbaa !104
  %27 = mul nsw i32 %7, %10
  %28 = icmp sgt i32 %27, %13
  br i1 %28, label %29, label %44

29:                                               ; preds = %19, %29
  %30 = phi i32 [ %36, %29 ], [ %7, %19 ]
  %31 = phi i32 [ %41, %29 ], [ 1, %19 ]
  %32 = phi i32 [ %40, %29 ], [ %10, %19 ]
  %33 = trunc i32 %30 to i16
  %34 = sdiv i16 %33, 2
  %35 = sext i16 %34 to i32
  %36 = tail call fastcc i32 @max_ii(i32 noundef %35) #18
  %37 = trunc i32 %32 to i16
  %38 = sdiv i16 %37, 2
  %39 = sext i16 %38 to i32
  %40 = tail call fastcc i32 @max_ii(i32 noundef %39) #18
  %41 = shl nsw i32 %31, 1
  %42 = mul nsw i32 %36, %40
  %43 = icmp sgt i32 %42, %13
  br i1 %43, label %29, label %44, !llvm.loop !106

44:                                               ; preds = %29, %19
  %45 = phi i32 [ 1, %19 ], [ %41, %29 ]
  %46 = getelementptr inbounds %struct.RenderPreview, ptr %25, i64 0, i32 4
  store ptr %3, ptr %46, align 8, !tbaa !108
  %47 = getelementptr inbounds %struct.RenderPreview, ptr %25, i64 0, i32 10
  store ptr %0, ptr %47, align 8, !tbaa !109
  %48 = tail call ptr @CTX_wm_area(ptr noundef %1) #16
  %49 = getelementptr inbounds %struct.RenderPreview, ptr %25, i64 0, i32 5
  store ptr %48, ptr %49, align 8, !tbaa !110
  %50 = tail call ptr @CTX_wm_region(ptr noundef %1) #16
  %51 = getelementptr inbounds %struct.RenderPreview, ptr %25, i64 0, i32 6
  store ptr %50, ptr %51, align 8, !tbaa !111
  %52 = load ptr, ptr %49, align 8, !tbaa !110
  %53 = getelementptr inbounds %struct.ScrArea, ptr %52, i64 0, i32 19
  %54 = load ptr, ptr %53, align 8, !tbaa !72
  %55 = getelementptr inbounds %struct.RenderPreview, ptr %25, i64 0, i32 7
  store ptr %54, ptr %55, align 8, !tbaa !112
  %56 = tail call ptr @CTX_wm_region_view3d(ptr noundef %1) #16
  %57 = getelementptr inbounds %struct.RenderPreview, ptr %25, i64 0, i32 8
  store ptr %56, ptr %57, align 8, !tbaa !113
  %58 = tail call ptr @CTX_data_main(ptr noundef %1) #16
  %59 = getelementptr inbounds %struct.RenderPreview, ptr %25, i64 0, i32 9
  store ptr %58, ptr %59, align 8, !tbaa !114
  %60 = getelementptr inbounds %struct.RenderPreview, ptr %25, i64 0, i32 13
  store i32 %45, ptr %60, align 4, !tbaa !115
  %61 = getelementptr inbounds %struct.RenderPreview, ptr %25, i64 0, i32 12
  store i32 %45, ptr %61, align 8, !tbaa !116
  %62 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 47
  %63 = load i32, ptr %62, align 8, !tbaa !117
  %64 = lshr i32 %63, 25
  %65 = trunc i32 %64 to i8
  %66 = and i8 %65, 1
  %67 = getelementptr inbounds %struct.RenderPreview, ptr %25, i64 0, i32 14
  store i8 %66, ptr %67, align 8, !tbaa !118
  %68 = getelementptr inbounds %struct.RenderPreview, ptr %25, i64 0, i32 11
  %69 = load ptr, ptr %57, align 8, !tbaa !113
  %70 = getelementptr inbounds %struct.RegionView3D, ptr %69, i64 0, i32 1
  tail call void @copy_m4_m4(ptr noundef nonnull %68, ptr noundef nonnull %70) #16
  %71 = getelementptr inbounds %struct.RenderEngine, ptr %0, i64 0, i32 9
  store i8 0, ptr %71, align 8, !tbaa !119
  tail call void @WM_jobs_customdata_set(ptr noundef %23, ptr noundef %25, ptr noundef nonnull @render_view3d_free) #16
  tail call void @WM_jobs_timer(ptr noundef %23, double noundef 1.000000e-01, i32 noundef 252248064, i32 noundef 252248064) #16
  tail call void @WM_jobs_callbacks(ptr noundef %23, ptr noundef nonnull @render_view3d_startjob, ptr noundef null, ptr noundef null, ptr noundef null) #16
  %72 = tail call ptr @CTX_wm_manager(ptr noundef %1) #16
  tail call void @WM_jobs_start(ptr noundef %72, ptr noundef %23) #16
  %73 = getelementptr inbounds %struct.RenderEngine, ptr %0, i64 0, i32 2
  %74 = load i32, ptr %73, align 8, !tbaa !120
  %75 = and i32 %74, -9
  store i32 %75, ptr %73, align 8, !tbaa !120
  br label %76

76:                                               ; preds = %16, %2, %44
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @render_view3d_draw(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.RenderResult, align 8
  %4 = alloca [32 x i8], align 16
  %5 = alloca %struct.rcti, align 4
  %6 = getelementptr inbounds %struct.RenderEngine, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #17
  tail call fastcc void @render_view3d_do(ptr noundef %0, ptr noundef %1) #18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = tail call ptr @CTX_wm_region(ptr noundef %1) #16
  %11 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef %10) #16
  %12 = call ptr @RE_GetRender(ptr noundef nonnull %4) #16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %108, label %14

14:                                               ; preds = %9, %2
  %15 = phi ptr [ %12, %9 ], [ %7, %2 ]
  call void @RE_AcquireResultImage(ptr noundef nonnull %15, ptr noundef nonnull %3) #16
  %16 = getelementptr inbounds %struct.RenderResult, ptr %3, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !122
  %18 = icmp eq ptr %17, null
  br i1 %18, label %107, label %19

19:                                               ; preds = %14
  %20 = call ptr @CTX_wm_region_view3d(ptr noundef %1) #16
  %21 = call ptr @CTX_wm_view3d(ptr noundef %1) #16
  %22 = call ptr @CTX_data_scene(ptr noundef %1) #16
  %23 = call ptr @CTX_wm_region(ptr noundef %1) #16
  %24 = getelementptr inbounds %struct.Scene, ptr %22, i64 0, i32 22, i32 71
  %25 = load float, ptr %24, align 4, !tbaa !124
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  %26 = call fastcc i32 @render_view3d_disprect(ptr noundef %22, ptr noundef %23, ptr noundef %21, ptr noundef %20, ptr noundef nonnull %5) #18, !range !125
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %19
  %29 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %5) #18
  %30 = getelementptr inbounds %struct.RenderResult, ptr %3, i64 0, i32 2
  %31 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %5) #18
  %32 = insertelement <2 x i32> poison, i32 %29, i64 0
  %33 = insertelement <2 x i32> %32, i32 %31, i64 1
  %34 = sitofp <2 x i32> %33 to <2 x float>
  %35 = load <2 x i32>, ptr %30, align 8, !tbaa !126
  %36 = sitofp <2 x i32> %35 to <2 x float>
  %37 = fdiv <2 x float> %34, %36
  %38 = load i32, ptr %5, align 4, !tbaa !127
  %39 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 2
  %40 = extractelement <2 x i32> %35, i64 0
  %41 = extractelement <2 x i32> %35, i64 1
  br label %55

42:                                               ; preds = %19
  %43 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 5
  %44 = getelementptr inbounds %struct.RenderResult, ptr %3, i64 0, i32 2
  %45 = load <2 x i16>, ptr %43, align 8, !tbaa !128
  %46 = sitofp <2 x i16> %45 to <2 x float>
  %47 = load <2 x i32>, ptr %44, align 8, !tbaa !126
  %48 = sitofp <2 x i32> %47 to <2 x float>
  %49 = fdiv <2 x float> %46, %48
  %50 = getelementptr inbounds %struct.RenderResult, ptr %3, i64 0, i32 10
  %51 = load i32, ptr %50, align 8, !tbaa !129
  %52 = getelementptr inbounds %struct.RenderResult, ptr %3, i64 0, i32 11
  %53 = extractelement <2 x i32> %47, i64 0
  %54 = extractelement <2 x i32> %47, i64 1
  br label %55

55:                                               ; preds = %42, %28
  %56 = phi ptr [ %52, %42 ], [ %39, %28 ]
  %57 = phi i32 [ %54, %42 ], [ %41, %28 ]
  %58 = phi i32 [ %53, %42 ], [ %40, %28 ]
  %59 = phi i32 [ %51, %42 ], [ %38, %28 ]
  %60 = phi <2 x float> [ %49, %42 ], [ %37, %28 ]
  %61 = load i32, ptr %56, align 4, !tbaa !126
  %62 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 89), align 2, !tbaa !130
  %63 = icmp eq i16 %62, 1
  br i1 %63, label %64, label %84

64:                                               ; preds = %55
  %65 = getelementptr inbounds %struct.Scene, ptr %22, i64 0, i32 44
  %66 = getelementptr inbounds %struct.Scene, ptr %22, i64 0, i32 45
  %67 = call zeroext i8 @IMB_colormanagement_setup_glsl_draw(ptr noundef nonnull %65, ptr noundef nonnull %66, float noundef %25, i8 noundef zeroext 1) #16
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.RenderResult, ptr %3, i64 0, i32 2
  %71 = load i32, ptr %70, align 8, !tbaa !134
  %72 = getelementptr inbounds %struct.RenderResult, ptr %3, i64 0, i32 3
  %73 = load i32, ptr %72, align 4, !tbaa !135
  br label %84

74:                                               ; preds = %64
  call void @glEnable(i32 noundef 3042) #16
  call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #16
  %75 = extractelement <2 x float> %60, i64 0
  %76 = extractelement <2 x float> %60, i64 1
  call void @glPixelZoom(float noundef %75, float noundef %76) #16
  %77 = sitofp i32 %59 to float
  %78 = sitofp i32 %61 to float
  %79 = getelementptr inbounds %struct.RenderResult, ptr %3, i64 0, i32 2
  %80 = load i32, ptr %79, align 8, !tbaa !134
  %81 = getelementptr inbounds %struct.RenderResult, ptr %3, i64 0, i32 3
  %82 = load i32, ptr %81, align 4, !tbaa !135
  %83 = load ptr, ptr %16, align 8, !tbaa !122
  call void @glaDrawPixelsTex(float noundef %77, float noundef %78, i32 noundef %80, i32 noundef %82, i32 noundef 6408, i32 noundef 5126, i32 noundef 9728, ptr noundef %83) #16
  call void @glPixelZoom(float noundef 1.000000e+00, float noundef 1.000000e+00) #16
  call void @glDisable(i32 noundef 3042) #16
  call void @IMB_colormanagement_finish_glsl_draw() #16
  br label %106

84:                                               ; preds = %69, %55
  %85 = phi i32 [ %73, %69 ], [ %57, %55 ]
  %86 = phi i32 [ %71, %69 ], [ %58, %55 ]
  %87 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !20
  %88 = getelementptr inbounds %struct.RenderResult, ptr %3, i64 0, i32 2
  %89 = shl nsw i32 %86, 2
  %90 = getelementptr inbounds %struct.RenderResult, ptr %3, i64 0, i32 3
  %91 = mul nsw i32 %89, %85
  %92 = sext i32 %91 to i64
  %93 = call ptr %87(i64 noundef %92, ptr noundef nonnull @.str.19) #16
  %94 = load ptr, ptr %16, align 8, !tbaa !122
  %95 = load i32, ptr %88, align 8, !tbaa !134
  %96 = load i32, ptr %90, align 4, !tbaa !135
  %97 = getelementptr inbounds %struct.Scene, ptr %22, i64 0, i32 44
  %98 = getelementptr inbounds %struct.Scene, ptr %22, i64 0, i32 45
  call void @IMB_colormanagement_buffer_make_display_space(ptr noundef %94, ptr noundef %93, i32 noundef %95, i32 noundef %96, i32 noundef 4, float noundef %25, ptr noundef nonnull %97, ptr noundef nonnull %98) #16
  call void @glEnable(i32 noundef 3042) #16
  call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #16
  %99 = extractelement <2 x float> %60, i64 0
  %100 = extractelement <2 x float> %60, i64 1
  call void @glPixelZoom(float noundef %99, float noundef %100) #16
  %101 = sitofp i32 %59 to float
  %102 = sitofp i32 %61 to float
  %103 = load i32, ptr %88, align 8, !tbaa !134
  %104 = load i32, ptr %90, align 4, !tbaa !135
  call void @glaDrawPixelsAuto(float noundef %101, float noundef %102, i32 noundef %103, i32 noundef %104, i32 noundef 6408, i32 noundef 5121, i32 noundef 9728, ptr noundef %93) #16
  call void @glPixelZoom(float noundef 1.000000e+00, float noundef 1.000000e+00) #16
  call void @glDisable(i32 noundef 3042) #16
  %105 = load ptr, ptr @MEM_freeN, align 8, !tbaa !20
  call void %105(ptr noundef %93) #16
  br label %106

106:                                              ; preds = %74, %84
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  br label %107

107:                                              ; preds = %106, %14
  call void @RE_ReleaseResultImage(ptr noundef nonnull %15) #16
  br label %108

108:                                              ; preds = %9, %107
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #17
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RE_GetRender(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RE_AcquireResultImage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @render_view3d_disprect(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.rctf, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #17
  %7 = getelementptr inbounds %struct.RegionView3D, ptr %3, i64 0, i32 25
  %8 = load i8, ptr %7, align 1, !tbaa !136
  %9 = icmp eq i8 %8, 2
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 47
  %12 = load i32, ptr %11, align 8, !tbaa !117
  %13 = and i32 %12, 512
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %44, label %20

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 29
  %17 = load i16, ptr %16, align 2, !tbaa !138
  %18 = and i16 %17, 2048
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %44, label %35

20:                                               ; preds = %10
  call void @ED_view3d_calc_camera_border(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %6, i8 noundef zeroext 0) #16
  %21 = load <4 x float>, ptr %6, align 16
  %22 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 58
  %23 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %6) #18
  %24 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 2
  %25 = load float, ptr %24, align 8, !tbaa !139
  %26 = call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %6) #18
  %27 = load <4 x float>, ptr %22, align 8, !tbaa !140
  %28 = insertelement <4 x float> poison, float %23, i64 0
  %29 = insertelement <4 x float> %28, float %26, i64 1
  %30 = shufflevector <4 x float> %29, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %31 = insertelement <4 x float> %21, float %25, i64 1
  %32 = shufflevector <4 x float> %31, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %33 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %27, <4 x float> %30, <4 x float> %32)
  %34 = fptosi <4 x float> %33 to <4 x i32>
  store <4 x i32> %34, ptr %4, align 4, !tbaa !126
  br label %45

35:                                               ; preds = %15
  %36 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 17
  %37 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %38 = load <2 x i16>, ptr %37, align 8, !tbaa !128
  %39 = sitofp <2 x i16> %38 to <2 x float>
  %40 = shufflevector <2 x float> %39, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %41 = load <4 x float>, ptr %36, align 8, !tbaa !140
  %42 = fmul <4 x float> %41, %40
  %43 = fptosi <4 x float> %42 to <4 x i32>
  store <4 x i32> %43, ptr %4, align 4, !tbaa !126
  br label %45

44:                                               ; preds = %15, %10
  tail call void @BLI_rcti_init(ptr noundef %4, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16
  br label %45

45:                                               ; preds = %20, %35, %44
  %46 = phi i32 [ 0, %44 ], [ 1, %35 ], [ 1, %20 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #17
  ret i32 %46
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !141
  %4 = load i32, ptr %0, align 4, !tbaa !127
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !142
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !143
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: optsize
declare zeroext i8 @IMB_colormanagement_setup_glsl_draw(ptr noundef, ptr noundef, float noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPixelZoom(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glaDrawPixelsTex(float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_colormanagement_finish_glsl_draw() local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_colormanagement_buffer_make_display_space(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glaDrawPixelsAuto(float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RE_ReleaseResultImage(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_viewport_render_kill_jobs(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca [32 x i8], align 16
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #16
  %5 = tail call ptr @CTX_data_main(ptr noundef %0) #16
  %6 = icmp eq ptr %4, null
  br i1 %6, label %62, label %7

7:                                                ; preds = %2
  tail call void @WM_jobs_kill(ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull @render_view3d_startjob) #16
  %8 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 26
  %9 = load ptr, ptr %8, align 8, !tbaa !20
  %10 = icmp eq ptr %9, null
  br i1 %10, label %62, label %11

11:                                               ; preds = %7
  %12 = icmp eq i8 %1, 0
  br label %16

13:                                               ; preds = %59, %16
  %14 = load ptr, ptr %17, align 8, !tbaa !20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %62, label %16, !llvm.loop !144

16:                                               ; preds = %11, %13
  %17 = phi ptr [ %9, %11 ], [ %14, %13 ]
  %18 = getelementptr inbounds %struct.bScreen, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !20
  %20 = icmp eq ptr %19, null
  br i1 %20, label %13, label %21

21:                                               ; preds = %16, %59
  %22 = phi ptr [ %60, %59 ], [ %19, %16 ]
  %23 = getelementptr inbounds %struct.ScrArea, ptr %22, i64 0, i32 8
  %24 = load i8, ptr %23, align 8, !tbaa !145
  %25 = icmp eq i8 %24, 1
  br i1 %25, label %26, label %59

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.ScrArea, ptr %22, i64 0, i32 20
  %28 = load ptr, ptr %27, align 8, !tbaa !20
  %29 = icmp eq ptr %28, null
  br i1 %29, label %59, label %30

30:                                               ; preds = %26, %56
  %31 = phi ptr [ %57, %56 ], [ %28, %26 ]
  %32 = getelementptr inbounds %struct.ARegion, ptr %31, i64 0, i32 8
  %33 = load i16, ptr %32, align 2, !tbaa !146
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.ARegion, ptr %31, i64 0, i32 30
  %37 = load ptr, ptr %36, align 8, !tbaa !147
  %38 = getelementptr inbounds %struct.RegionView3D, ptr %37, i64 0, i32 11
  %39 = load ptr, ptr %38, align 8, !tbaa !148
  %40 = icmp eq ptr %39, null
  br i1 %40, label %56, label %41

41:                                               ; preds = %35
  br i1 %12, label %52, label %42

42:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %43 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef nonnull %31) #16
  %44 = call ptr @RE_GetRender(ptr noundef nonnull %3) #16
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  call void @RE_Database_Free(ptr noundef nonnull %44) #16
  br label %47

47:                                               ; preds = %46, %42
  %48 = load ptr, ptr %38, align 8, !tbaa !148
  %49 = getelementptr inbounds %struct.RenderEngine, ptr %48, i64 0, i32 13
  %50 = load i32, ptr %49, align 8, !tbaa !96
  %51 = or i32 %50, 4
  store i32 %51, ptr %49, align 8, !tbaa !96
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %56

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.RenderEngine, ptr %39, i64 0, i32 13
  %54 = load i32, ptr %53, align 8, !tbaa !96
  %55 = or i32 %54, 1
  store i32 %55, ptr %53, align 8, !tbaa !96
  br label %56

56:                                               ; preds = %35, %52, %47, %30
  %57 = load ptr, ptr %31, align 8, !tbaa !20
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %30, !llvm.loop !149

59:                                               ; preds = %56, %26, %21
  %60 = load ptr, ptr %22, align 8, !tbaa !20
  %61 = icmp eq ptr %60, null
  br i1 %61, label %13, label %21, !llvm.loop !150

62:                                               ; preds = %13, %7, %2
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_jobs_kill(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @render_view3d_startjob(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture readnone %3) #0 {
  %5 = alloca %struct.rctf, align 4
  %6 = alloca %struct.rcti, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i8, align 1
  %11 = alloca [32 x i8], align 16
  %12 = alloca [4 x [4 x float]], align 16
  %13 = alloca %struct.RenderData, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #17
  %14 = getelementptr inbounds %struct.RenderPreview, ptr %0, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !109
  %16 = getelementptr inbounds %struct.RenderEngine, ptr %15, i64 0, i32 14
  %17 = load i32, ptr %16, align 4, !tbaa !151
  store i32 0, ptr %16, align 4, !tbaa !151
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !88
  %18 = getelementptr inbounds %struct.RenderPreview, ptr %0, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !111
  %20 = getelementptr inbounds %struct.RenderPreview, ptr %0, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !112
  %22 = getelementptr inbounds %struct.RenderPreview, ptr %0, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !113
  %24 = call fastcc zeroext i8 @render_view3d_get_rects(ptr noundef %19, ptr noundef %21, ptr noundef %23, ptr noundef nonnull %5, ptr noundef %15, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10) #18, !range !103
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %173, label %26

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.RenderPreview, ptr %0, i64 0, i32 1
  store ptr %1, ptr %27, align 8, !tbaa !152
  %28 = getelementptr inbounds %struct.RenderPreview, ptr %0, i64 0, i32 2
  store ptr %2, ptr %28, align 8, !tbaa !153
  %29 = load ptr, ptr %18, align 8, !tbaa !111
  %30 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef %29) #16
  %31 = call ptr @RE_GetRender(ptr noundef nonnull %11) #16
  %32 = load ptr, ptr %14, align 8, !tbaa !109
  %33 = getelementptr inbounds %struct.RenderEngine, ptr %32, i64 0, i32 7
  store ptr %31, ptr %33, align 8, !tbaa !121
  call void @RE_test_break_cb(ptr noundef %31, ptr noundef nonnull %0, ptr noundef nonnull @render_view3d_break) #16
  call void @RE_display_update_cb(ptr noundef %31, ptr noundef nonnull %0, ptr noundef nonnull @render_view3d_display_update) #16
  call void @RE_stats_draw_cb(ptr noundef %31, ptr noundef nonnull %0, ptr noundef nonnull @render_view3d_renderinfo_cb) #16
  %34 = call ptr @RE_GetStats(ptr noundef %31) #16
  %35 = and i32 %17, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %55, label %37

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.RenderPreview, ptr %0, i64 0, i32 12
  %39 = load i32, ptr %38, align 8, !tbaa !116
  %40 = getelementptr inbounds %struct.RenderPreview, ptr %0, i64 0, i32 13
  store i32 %39, ptr %40, align 4, !tbaa !115
  %41 = getelementptr inbounds %struct.RenderPreview, ptr %0, i64 0, i32 9
  %42 = load ptr, ptr %41, align 8, !tbaa !114
  %43 = getelementptr inbounds %struct.Main, ptr %42, i64 0, i32 13
  %44 = load ptr, ptr %43, align 8, !tbaa !20
  %45 = icmp eq ptr %44, null
  br i1 %45, label %55, label %46

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.RenderPreview, ptr %0, i64 0, i32 11
  br label %48

48:                                               ; preds = %46, %48
  %49 = phi ptr [ %44, %46 ], [ %53, %48 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #17
  %50 = getelementptr inbounds %struct.Object, ptr %49, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %12, ptr noundef nonnull %47, ptr noundef nonnull %50) #16
  %51 = getelementptr inbounds %struct.Object, ptr %49, i64 0, i32 51
  %52 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %51, ptr noundef nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #17
  %53 = load ptr, ptr %49, align 8, !tbaa !20
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %48, !llvm.loop !154

55:                                               ; preds = %48, %37, %26
  %56 = getelementptr inbounds %struct.RenderPreview, ptr %0, i64 0, i32 4
  %57 = load ptr, ptr %56, align 8, !tbaa !108
  %58 = load ptr, ptr %18, align 8, !tbaa !111
  %59 = load ptr, ptr %20, align 8, !tbaa !112
  %60 = load ptr, ptr %22, align 8, !tbaa !113
  %61 = call fastcc i32 @render_view3d_disprect(ptr noundef %57, ptr noundef %58, ptr noundef %59, ptr noundef %60, ptr noundef nonnull %6) #18, !range !125
  %62 = trunc i32 %61 to i8
  %63 = and i32 %17, 10
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct.RenderStats, ptr %34, i64 0, i32 11
  %67 = load i16, ptr %66, align 4, !tbaa !155
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %69, label %98

69:                                               ; preds = %65, %55
  call void @llvm.lifetime.start.p0(i64 3984, ptr nonnull %13) #17
  %70 = load ptr, ptr %56, align 8, !tbaa !108
  %71 = getelementptr inbounds %struct.Scene, ptr %70, i64 0, i32 22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3984) %13, ptr noundef nonnull align 8 dereferenceable(3984) %71, i64 3984, i1 false), !tbaa.struct !157
  %72 = getelementptr inbounds %struct.RenderData, ptr %13, i64 0, i32 47
  %73 = load i32, ptr %72, align 8, !tbaa !158
  %74 = and i32 %73, -17922
  store i32 %74, ptr %72, align 8, !tbaa !158
  %75 = getelementptr inbounds %struct.RenderData, ptr %13, i64 0, i32 46
  %76 = load i32, ptr %75, align 4, !tbaa !159
  %77 = and i32 %76, -525122
  %78 = or disjoint i32 %77, 524800
  store i32 %78, ptr %75, align 4, !tbaa !159
  %79 = icmp eq i8 %62, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %69
  %81 = or disjoint i32 %74, 512
  store i32 %81, ptr %72, align 8, !tbaa !158
  %82 = load ptr, ptr %18, align 8, !tbaa !111
  %83 = getelementptr inbounds %struct.ARegion, ptr %82, i64 0, i32 5
  %84 = load i16, ptr %83, align 8, !tbaa !98
  %85 = sext i16 %84 to i32
  %86 = getelementptr inbounds %struct.ARegion, ptr %82, i64 0, i32 6
  %87 = load i16, ptr %86, align 2, !tbaa !101
  %88 = sext i16 %87 to i32
  call void @RE_InitState(ptr noundef %31, ptr noundef null, ptr noundef nonnull %13, ptr noundef null, i32 noundef %85, i32 noundef %88, ptr noundef nonnull %6) #16
  br label %97

89:                                               ; preds = %69
  %90 = load ptr, ptr %18, align 8, !tbaa !111
  %91 = getelementptr inbounds %struct.ARegion, ptr %90, i64 0, i32 5
  %92 = load i16, ptr %91, align 8, !tbaa !98
  %93 = sext i16 %92 to i32
  %94 = getelementptr inbounds %struct.ARegion, ptr %90, i64 0, i32 6
  %95 = load i16, ptr %94, align 2, !tbaa !101
  %96 = sext i16 %95 to i32
  call void @RE_InitState(ptr noundef %31, ptr noundef null, ptr noundef nonnull %13, ptr noundef null, i32 noundef %93, i32 noundef %96, ptr noundef null) #16
  br label %97

97:                                               ; preds = %89, %80
  call void @llvm.lifetime.end.p0(i64 3984, ptr nonnull %13) #17
  br label %98

98:                                               ; preds = %97, %65
  %99 = load i8, ptr %10, align 1, !tbaa !119
  %100 = icmp eq i8 %99, 0
  %101 = load float, ptr %7, align 4, !tbaa !140
  %102 = load float, ptr %8, align 4, !tbaa !140
  br i1 %100, label %104, label %103

103:                                              ; preds = %98
  call void @RE_SetOrtho(ptr noundef %31, ptr noundef nonnull %5, float noundef %101, float noundef %102) #16
  br label %105

104:                                              ; preds = %98
  call void @RE_SetWindow(ptr noundef %31, ptr noundef nonnull %5, float noundef %101, float noundef %102) #16
  br label %105

105:                                              ; preds = %104, %103
  %106 = load float, ptr %9, align 4, !tbaa !140
  call void @RE_SetPixelSize(ptr noundef %31, float noundef %106) #16
  %107 = and i32 %17, 8
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.RenderStats, ptr %34, i64 0, i32 11
  %111 = load i16, ptr %110, align 4, !tbaa !155
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %113, label %143

113:                                              ; preds = %109, %105
  %114 = load ptr, ptr %20, align 8, !tbaa !112
  %115 = getelementptr inbounds %struct.View3D, ptr %114, i64 0, i32 22
  %116 = load i32, ptr %115, align 8, !tbaa !80
  %117 = icmp ult i32 %116, 16777216
  br i1 %117, label %123, label %118

118:                                              ; preds = %113
  %119 = load ptr, ptr %56, align 8, !tbaa !108
  %120 = getelementptr inbounds %struct.Scene, ptr %119, i64 0, i32 12
  %121 = load i32, ptr %120, align 8, !tbaa !79
  %122 = or i32 %121, %116
  br label %123

123:                                              ; preds = %113, %118
  %124 = phi i32 [ %122, %118 ], [ %116, %113 ]
  %125 = getelementptr inbounds %struct.RenderPreview, ptr %0, i64 0, i32 11
  call void @RE_SetView(ptr noundef %31, ptr noundef nonnull %125) #16
  %126 = getelementptr inbounds %struct.RenderPreview, ptr %0, i64 0, i32 3
  %127 = load ptr, ptr %126, align 8, !tbaa !104
  call void @WM_job_main_thread_lock_acquire(ptr noundef %127) #16
  call void @RE_Database_Free(ptr noundef %31) #16
  %128 = getelementptr inbounds %struct.RenderPreview, ptr %0, i64 0, i32 9
  %129 = load ptr, ptr %128, align 8, !tbaa !114
  %130 = load ptr, ptr %56, align 8, !tbaa !108
  call void @RE_Database_FromScene(ptr noundef %31, ptr noundef %129, ptr noundef %130, i32 noundef %124, i32 noundef 0) #16
  %131 = load ptr, ptr %126, align 8, !tbaa !104
  call void @WM_job_main_thread_lock_release(ptr noundef %131) #16
  call void @RE_Database_Preprocess(ptr noundef %31) #16
  %132 = getelementptr inbounds %struct.RenderStats, ptr %34, i64 0, i32 11
  %133 = load i16, ptr %132, align 4, !tbaa !155
  %134 = icmp eq i16 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %123
  %136 = call fastcc zeroext i8 @render_view3d_is_valid(ptr noundef nonnull %0) #18, !range !103
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %145, label %138

138:                                              ; preds = %135
  %139 = load ptr, ptr %14, align 8, !tbaa !109
  %140 = getelementptr inbounds %struct.RenderEngine, ptr %139, i64 0, i32 14
  %141 = load i32, ptr %140, align 4, !tbaa !151
  %142 = or i32 %141, 8
  store i32 %142, ptr %140, align 4, !tbaa !151
  br label %145

143:                                              ; preds = %109
  %144 = getelementptr inbounds %struct.RenderPreview, ptr %0, i64 0, i32 11
  call void @RE_DataBase_IncrementalView(ptr noundef %31, ptr noundef nonnull %144, i32 noundef 0) #16
  br label %145

145:                                              ; preds = %123, %138, %135, %143
  %146 = phi i8 [ 1, %143 ], [ 0, %135 ], [ 0, %138 ], [ 0, %123 ]
  call void @RE_DataBase_ApplyWindow(ptr noundef %31) #16
  %147 = getelementptr inbounds %struct.RenderStats, ptr %34, i64 0, i32 11
  %148 = load i16, ptr %147, align 4, !tbaa !155
  %149 = icmp eq i16 %148, 0
  br i1 %149, label %173, label %150

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.RenderPreview, ptr %0, i64 0, i32 13
  %152 = getelementptr inbounds %struct.RenderPreview, ptr %0, i64 0, i32 11
  br label %153

153:                                              ; preds = %150, %167
  %154 = phi i8 [ %164, %167 ], [ %146, %150 ]
  %155 = phi i1 [ true, %167 ], [ false, %150 ]
  br i1 %155, label %156, label %162

156:                                              ; preds = %153
  %157 = icmp eq i8 %154, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %156
  call void @RE_DataBase_IncrementalView(ptr noundef %31, ptr noundef nonnull %152, i32 noundef 1) #16
  br label %159

159:                                              ; preds = %158, %156
  %160 = load i32, ptr %151, align 4, !tbaa !115
  %161 = sdiv i32 %160, 2
  store i32 %161, ptr %151, align 4, !tbaa !115
  store i16 1, ptr %2, align 2, !tbaa !128
  call fastcc void @render_update_resolution(ptr noundef %31, ptr noundef nonnull %0, i8 noundef zeroext %62, ptr noundef nonnull %6) #18
  call void @RE_DataBase_IncrementalView(ptr noundef %31, ptr noundef nonnull %152, i32 noundef 0) #16
  call void @RE_DataBase_ApplyWindow(ptr noundef %31) #16
  br label %163

162:                                              ; preds = %153
  call fastcc void @render_update_resolution(ptr noundef %31, ptr noundef nonnull %0, i8 noundef zeroext %62, ptr noundef nonnull %6) #18
  br label %163

163:                                              ; preds = %162, %159
  %164 = phi i8 [ 1, %159 ], [ %154, %162 ]
  call void @RE_TileProcessor(ptr noundef %31) #16
  %165 = load i16, ptr %1, align 2, !tbaa !128
  %166 = icmp eq i16 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %163
  %168 = load i32, ptr %151, align 4, !tbaa !115
  %169 = icmp eq i32 %168, 1
  br i1 %169, label %170, label %153

170:                                              ; preds = %163, %167
  %171 = icmp eq i8 %164, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %170
  call void @RE_DataBase_IncrementalView(ptr noundef %31, ptr noundef nonnull %152, i32 noundef 1) #16
  br label %173

173:                                              ; preds = %145, %172, %170, %4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  ret void
}

; Function Attrs: optsize
declare void @RE_Database_Free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ED_render_job_get_scene(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_manager(ptr noundef %0) #16
  %3 = tail call ptr @WM_jobs_customdata_from_type(ptr noundef %2, i32 noundef 2) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.RenderJob, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: optsize
declare ptr @WM_jobs_customdata_from_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @WM_jobs_test(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RE_force_single_renderlayer(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RE_is_rendering_allowed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_imtype_is_movie(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_jobs_kill_all_except(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_undo_get_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_screen_animation_playing(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ED_screen_animation_play(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_cursor_wait(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_editors_flush_edits(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_sequencer_cache_cleanup() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @render_view_open(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @screen_render_scene_layer_set(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca [64 x i8], align 16
  %6 = alloca [74 x i8], align 16
  %7 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !21
  %9 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %8, ptr noundef nonnull @.str.15) #16
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #17
  %12 = load ptr, ptr %7, align 8, !tbaa !21
  call void @RNA_string_get(ptr noundef %12, ptr noundef nonnull @.str.15, ptr noundef nonnull %5) #16
  %13 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 11
  %14 = call ptr @BLI_findstring(ptr noundef nonnull %13, ptr noundef nonnull %5, i32 noundef 34) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %2, align 8, !tbaa !20
  %18 = getelementptr inbounds %struct.Scene, ptr %17, i64 0, i32 22, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !95
  %20 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 5
  store i32 %19, ptr %20, align 8, !tbaa !95
  %21 = call i32 @BKE_scene_camera_switch_update(ptr noundef nonnull %14) #16
  store ptr %14, ptr %2, align 8, !tbaa !20
  br label %22

22:                                               ; preds = %16, %11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #17
  br label %23

23:                                               ; preds = %22, %4
  %24 = load ptr, ptr %7, align 8, !tbaa !21
  %25 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %24, ptr noundef nonnull @.str.12) #16
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 74, ptr nonnull %6) #17
  %28 = load ptr, ptr %7, align 8, !tbaa !21
  call void @RNA_string_get(ptr noundef %28, ptr noundef nonnull @.str.12, ptr noundef nonnull %6) #16
  %29 = load ptr, ptr %2, align 8, !tbaa !20
  %30 = getelementptr inbounds %struct.Scene, ptr %29, i64 0, i32 22, i32 60
  %31 = call ptr @BLI_findstring(ptr noundef nonnull %30, ptr noundef nonnull %6, i32 noundef 16) #16
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  store ptr %31, ptr %3, align 8, !tbaa !20
  br label %34

34:                                               ; preds = %33, %27
  call void @llvm.lifetime.end.p0(i64 74, ptr nonnull %6) #17
  br label %35

35:                                               ; preds = %34, %23
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_color_managed_display_settings_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_color_managed_view_settings_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_set_locked_interface(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clean_viewport_memory(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %5 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %6 = load ptr, ptr %5, align 8, !tbaa !20
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %3, %8
  %9 = phi ptr [ %13, %8 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 5
  %11 = load i16, ptr %10, align 2, !tbaa !160
  %12 = or i16 %11, 1024
  store i16 %12, ptr %10, align 2, !tbaa !160
  %13 = load ptr, ptr %9, align 8, !tbaa !20
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %8, !llvm.loop !163

15:                                               ; preds = %8, %3
  store ptr %1, ptr %4, align 8, !tbaa !20
  %16 = call ptr @_setlooper_base_step(ptr noundef nonnull %4, ptr noundef null) #16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %37, %15
  %19 = load ptr, ptr %5, align 8, !tbaa !20
  %20 = icmp eq ptr %19, null
  br i1 %20, label %51, label %40

21:                                               ; preds = %15, %37
  %22 = phi ptr [ %38, %37 ], [ %16, %15 ]
  %23 = getelementptr inbounds %struct.Base, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !164
  %25 = and i32 %24, %2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.Base, ptr %22, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !166
  %30 = call zeroext i8 @RE_allow_render_generic_object(ptr noundef %29) #16
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load ptr, ptr %28, align 8, !tbaa !166
  %34 = getelementptr inbounds %struct.ID, ptr %33, i64 0, i32 5
  %35 = load i16, ptr %34, align 2, !tbaa !160
  %36 = and i16 %35, -1025
  store i16 %36, ptr %34, align 2, !tbaa !160
  br label %37

37:                                               ; preds = %27, %32, %21
  %38 = call ptr @_setlooper_base_step(ptr noundef nonnull %4, ptr noundef nonnull %22) #16
  %39 = icmp eq ptr %38, null
  br i1 %39, label %18, label %21, !llvm.loop !167

40:                                               ; preds = %18, %48
  %41 = phi ptr [ %49, %48 ], [ %19, %18 ]
  %42 = getelementptr inbounds %struct.ID, ptr %41, i64 0, i32 5
  %43 = load i16, ptr %42, align 2, !tbaa !160
  %44 = and i16 %43, 1024
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %40
  %47 = and i16 %43, -1025
  store i16 %47, ptr %42, align 2, !tbaa !160
  call void @BKE_object_free_derived_caches(ptr noundef nonnull %41) #16
  br label %48

48:                                               ; preds = %40, %46
  %49 = load ptr, ptr %41, align 8, !tbaa !20
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %40, !llvm.loop !168

51:                                               ; preds = %48, %18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  ret void
}

; Function Attrs: optsize
declare i32 @RE_seq_render_active(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_jobs_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_jobs_customdata_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @render_freejob(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 20
  tail call void @BKE_color_managed_view_settings_free(ptr noundef nonnull %2) #16
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !20
  tail call void %3(ptr noundef %0) #16
  ret void
}

; Function Attrs: optsize
declare void @WM_jobs_timer(ptr noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_jobs_callbacks(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @render_startjob(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 13
  store ptr %1, ptr %5, align 8, !tbaa !169
  %6 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 14
  store ptr %2, ptr %6, align 8, !tbaa !170
  %7 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 15
  store ptr %3, ptr %7, align 8, !tbaa !171
  %8 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !87
  %10 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 16
  %11 = load ptr, ptr %10, align 8, !tbaa !68
  tail call void @RE_SetReports(ptr noundef %9, ptr noundef %11) #16
  %12 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 8
  %13 = load i8, ptr %12, align 1, !tbaa !64
  %14 = icmp eq i8 %13, 0
  %15 = load ptr, ptr %8, align 8, !tbaa !87
  %16 = load ptr, ptr %0, align 8, !tbaa !56
  %17 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !59
  br i1 %14, label %30, label %19

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !62
  %22 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 6
  %23 = load i32, ptr %22, align 8, !tbaa !63
  %24 = getelementptr inbounds %struct.Scene, ptr %18, i64 0, i32 22, i32 6
  %25 = load i32, ptr %24, align 4, !tbaa !92
  %26 = getelementptr inbounds %struct.Scene, ptr %18, i64 0, i32 22, i32 7
  %27 = load i32, ptr %26, align 8, !tbaa !93
  %28 = getelementptr inbounds %struct.Scene, ptr %18, i64 0, i32 22, i32 26
  %29 = load i32, ptr %28, align 4, !tbaa !94
  tail call void @RE_BlenderAnim(ptr noundef %15, ptr noundef %16, ptr noundef %18, ptr noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29) #16
  br label %41

30:                                               ; preds = %4
  %31 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !61
  %33 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !62
  %35 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 6
  %36 = load i32, ptr %35, align 8, !tbaa !63
  %37 = getelementptr inbounds %struct.Scene, ptr %18, i64 0, i32 22, i32 5
  %38 = load i32, ptr %37, align 8, !tbaa !95
  %39 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 9
  %40 = load i8, ptr %39, align 2, !tbaa !65
  tail call void @RE_BlenderFrame(ptr noundef %15, ptr noundef %16, ptr noundef %18, ptr noundef %32, ptr noundef %34, i32 noundef %36, i32 noundef %38, i8 noundef zeroext %40) #16
  br label %41

41:                                               ; preds = %30, %19
  %42 = load ptr, ptr %8, align 8, !tbaa !87
  tail call void @RE_SetReports(ptr noundef %42, ptr noundef null) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @render_endjob(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !87
  tail call void @RE_InitRenderCB(ptr noundef %4) #16
  %5 = load ptr, ptr %0, align 8, !tbaa !56
  %6 = load ptr, ptr @G, align 8, !tbaa !172
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @BKE_main_free(ptr noundef %5) #16
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 8
  %11 = load i8, ptr %10, align 1, !tbaa !64
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !59
  %16 = getelementptr inbounds %struct.Scene, ptr %15, i64 0, i32 22, i32 46
  %17 = load i32, ptr %16, align 4, !tbaa !173
  %18 = and i32 %17, 16384
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = load ptr, ptr @G, align 8, !tbaa !172
  %22 = getelementptr inbounds %struct.Main, ptr %21, i64 0, i32 40
  %23 = load ptr, ptr %22, align 8, !tbaa !174
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  tail call void @ED_update_for_newframe(ptr noundef nonnull %21, ptr noundef nonnull %15, i32 noundef 1) #16
  br label %26

26:                                               ; preds = %20, %25, %13, %9
  %27 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !59
  %29 = getelementptr inbounds %struct.Scene, ptr %28, i64 0, i32 18
  %30 = load ptr, ptr %29, align 8, !tbaa !176
  tail call void @ntreeCompositClearTags(ptr noundef %30) #16
  %31 = load ptr, ptr %27, align 8, !tbaa !59
  %32 = getelementptr inbounds %struct.Scene, ptr %31, i64 0, i32 22, i32 46
  %33 = load i32, ptr %32, align 4, !tbaa !173
  %34 = and i32 %33, -16385
  store i32 %34, ptr %32, align 4, !tbaa !173
  %35 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !61
  %37 = icmp eq ptr %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.Scene, ptr %31, i64 0, i32 18
  %40 = load ptr, ptr %39, align 8, !tbaa !176
  %41 = tail call zeroext i8 @nodeUpdateID(ptr noundef %40, ptr noundef nonnull %31) #16
  %42 = load ptr, ptr %27, align 8, !tbaa !59
  tail call void @WM_main_add_notifier(i32 noundef 285212673, ptr noundef %42) #16
  br label %43

43:                                               ; preds = %38, %26
  %44 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 19
  %45 = load ptr, ptr %44, align 8, !tbaa !71
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  tail call fastcc void @render_image_restore_layer(ptr noundef nonnull %0) #18
  br label %48

48:                                               ; preds = %47, %43
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !90
  tail call void @WM_main_add_notifier(i32 noundef 67895296, ptr noundef null) #16
  %49 = load ptr, ptr %27, align 8, !tbaa !59
  %50 = getelementptr inbounds %struct.Scene, ptr %49, i64 0, i32 22, i32 60
  %51 = load ptr, ptr %50, align 8, !tbaa !177
  %52 = getelementptr inbounds %struct.Scene, ptr %49, i64 0, i32 22, i32 60, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !178
  %54 = icmp eq ptr %51, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 12
  %57 = load i8, ptr %56, align 8, !tbaa !179
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %71, label %59

59:                                               ; preds = %55, %48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  %60 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 10
  %61 = load ptr, ptr %60, align 8, !tbaa !86
  %62 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 11
  %63 = call ptr @BKE_image_acquire_ibuf(ptr noundef %61, ptr noundef nonnull %62, ptr noundef nonnull %2) #16
  %64 = icmp eq ptr %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.ImBuf, ptr %63, i64 0, i32 23
  %67 = load i32, ptr %66, align 4, !tbaa !180
  %68 = or i32 %67, 16
  store i32 %68, ptr %66, align 4, !tbaa !180
  br label %69

69:                                               ; preds = %65, %59
  %70 = load ptr, ptr %2, align 8, !tbaa !20
  call void @BKE_image_release_ibuf(ptr noundef %61, ptr noundef %63, ptr noundef %70) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  br label %71

71:                                               ; preds = %69, %55
  %72 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 22
  %73 = load i8, ptr %72, align 8, !tbaa !85
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %89, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr @G, align 8, !tbaa !172
  %77 = getelementptr inbounds %struct.Main, ptr %76, i64 0, i32 40
  %78 = load ptr, ptr %77, align 8, !tbaa !174
  call void @WM_set_locked_interface(ptr noundef %78, i8 noundef zeroext 0) #16
  %79 = load ptr, ptr @G, align 8, !tbaa !172
  %80 = getelementptr inbounds %struct.Main, ptr %79, i64 0, i32 11
  %81 = load ptr, ptr %80, align 8, !tbaa !20
  %82 = icmp eq ptr %81, null
  br i1 %82, label %88, label %83

83:                                               ; preds = %75, %83
  %84 = phi ptr [ %86, %83 ], [ %81, %75 ]
  %85 = getelementptr inbounds %struct.Scene, ptr %84, i64 0, i32 14
  store i32 0, ptr %85, align 8, !tbaa !183
  %86 = load ptr, ptr %84, align 8, !tbaa !20
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %83, !llvm.loop !184

88:                                               ; preds = %83, %75
  call void @DAG_on_visible_update(ptr noundef %79, i8 noundef zeroext 0) #16
  br label %89

89:                                               ; preds = %88, %71
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_image_verify_viewer(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_image_signal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_image_backup_render(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RE_NewRender(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RE_test_break_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef i32 @render_breakjob(ptr nocapture noundef readonly %0) #5 {
  %2 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !88
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %12

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 13
  %6 = load ptr, ptr %5, align 8, !tbaa !169
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = load i16, ptr %6, align 2, !tbaa !128
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %4
  br label %12

12:                                               ; preds = %8, %1, %11
  %13 = phi i32 [ 0, %11 ], [ 1, %1 ], [ 1, %8 ]
  ret i32 %13
}

; Function Attrs: optsize
declare void @RE_draw_lock_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @render_drawlock(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 22
  %4 = load i8, ptr %3, align 8, !tbaa !85
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @BKE_spacedata_draw_locks(i32 noundef %1) #16
  br label %7

7:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: optsize
declare void @RE_display_update_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @image_rect_update(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %7 = getelementptr inbounds %struct.Image, ptr %6, i64 0, i32 7
  %8 = load i16, ptr %7, align 8, !tbaa !185
  %9 = getelementptr inbounds %struct.Image, ptr %6, i64 0, i32 8
  %10 = load i16, ptr %9, align 2, !tbaa !187
  %11 = icmp eq i16 %8, %10
  %12 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 12
  br i1 %11, label %14, label %13

13:                                               ; preds = %3
  store i8 1, ptr %12, align 8, !tbaa !179
  br label %43

14:                                               ; preds = %3
  %15 = load i8, ptr %12, align 8, !tbaa !179
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  store i8 0, ptr %12, align 8, !tbaa !179
  tail call void @BKE_image_signal(ptr noundef nonnull %6, ptr noundef null, i32 noundef 7) #16
  %18 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 14
  %19 = load ptr, ptr %18, align 8, !tbaa !170
  store i16 1, ptr %19, align 2, !tbaa !128
  br label %43

20:                                               ; preds = %14
  %21 = icmp eq ptr %1, null
  br i1 %21, label %43, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 11
  tail call fastcc void @render_image_update_pass_and_layer(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %23) #18
  %24 = call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %6, ptr noundef nonnull %23, ptr noundef nonnull %4) #16
  %25 = icmp eq ptr %24, null
  br i1 %25, label %41, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 15
  %28 = load i32, ptr %27, align 8, !tbaa !188
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.ImBuf, ptr %24, i64 0, i32 5
  %32 = load i32, ptr %31, align 4, !tbaa !189
  %33 = icmp eq i32 %32, 1
  %34 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 89), align 2
  %35 = icmp ne i16 %34, 1
  %36 = select i1 %33, i1 true, i1 %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30, %26
  call fastcc void @image_buffer_rect_update(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %24, ptr noundef nonnull %23, ptr noundef %2) #18
  br label %38

38:                                               ; preds = %30, %37
  %39 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 14
  %40 = load ptr, ptr %39, align 8, !tbaa !170
  store i16 1, ptr %40, align 2, !tbaa !128
  br label %41

41:                                               ; preds = %38, %22
  %42 = load ptr, ptr %4, align 8, !tbaa !20
  call void @BKE_image_release_ibuf(ptr noundef nonnull %6, ptr noundef %24, ptr noundef %42) #16
  br label %43

43:                                               ; preds = %20, %41, %17, %13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  ret void
}

; Function Attrs: optsize
declare void @RE_current_scene_update_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @current_scene_update(ptr nocapture noundef writeonly %0, ptr noundef %1) #6 {
  %3 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !60
  %4 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 11
  store ptr %1, ptr %4, align 8, !tbaa !66
  ret void
}

; Function Attrs: optsize
declare void @RE_stats_draw_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @image_renderinfo_cb(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !87
  %5 = tail call ptr @RE_AcquireResultRead(ptr noundef %4) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.RenderResult, ptr %5, i64 0, i32 18
  %9 = load ptr, ptr %8, align 8, !tbaa !190
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !20
  %13 = tail call ptr %12(i64 noundef 512, ptr noundef nonnull @.str.24) #16
  store ptr %13, ptr %8, align 8, !tbaa !190
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi ptr [ %13, %11 ], [ %9, %7 ]
  %16 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !59
  %18 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 7
  %19 = load i8, ptr %18, align 4, !tbaa !82
  tail call fastcc void @make_renderinfo_string(ptr noundef %1, ptr noundef %17, i8 noundef zeroext %19, ptr noundef %15) #18
  br label %20

20:                                               ; preds = %14, %2
  %21 = load ptr, ptr %3, align 8, !tbaa !87
  tail call void @RE_ReleaseResult(ptr noundef %21) #16
  %22 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 14
  %23 = load ptr, ptr %22, align 8, !tbaa !170
  store i16 1, ptr %23, align 2, !tbaa !128
  ret void
}

; Function Attrs: optsize
declare void @RE_progress_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @render_progress_update(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 15
  %4 = load ptr, ptr %3, align 8, !tbaa !171
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = load float, ptr %4, align 4, !tbaa !140
  %8 = fcmp une float %7, %1
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  store float %1, ptr %4, align 4, !tbaa !140
  %10 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !170
  store i16 1, ptr %11, align 2, !tbaa !128
  br label %12

12:                                               ; preds = %9, %6, %2
  ret void
}

; Function Attrs: optsize
declare void @WM_jobs_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_scene_camera_switch_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @_setlooper_base_step(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RE_allow_render_generic_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_object_free_derived_caches(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_color_managed_view_settings_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RE_SetReports(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RE_BlenderAnim(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RE_BlenderFrame(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RE_InitRenderCB(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_main_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_update_for_newframe(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ntreeCompositClearTags(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @nodeUpdateID(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @render_image_restore_layer(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !56
  %3 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 40
  %4 = load ptr, ptr %3, align 8, !tbaa !20
  %5 = icmp eq ptr %4, null
  br i1 %5, label %42, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 19
  br label %11

8:                                                ; preds = %16, %11
  %9 = load ptr, ptr %12, align 8, !tbaa !20
  %10 = icmp eq ptr %9, null
  br i1 %10, label %42, label %11, !llvm.loop !191

11:                                               ; preds = %6, %8
  %12 = phi ptr [ %4, %6 ], [ %9, %8 ]
  %13 = getelementptr inbounds %struct.wmWindowManager, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %8, label %19

16:                                               ; preds = %24
  %17 = load ptr, ptr %20, align 8, !tbaa !20
  %18 = icmp eq ptr %17, null
  br i1 %18, label %8, label %19, !llvm.loop !192

19:                                               ; preds = %11, %16
  %20 = phi ptr [ %17, %16 ], [ %14, %11 ]
  %21 = getelementptr inbounds %struct.wmWindow, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !193
  %23 = getelementptr inbounds %struct.bScreen, ptr %22, i64 0, i32 3
  br label %24

24:                                               ; preds = %28, %19
  %25 = phi ptr [ %23, %19 ], [ %26, %28 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !20
  %27 = icmp eq ptr %26, null
  br i1 %27, label %16, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %7, align 8, !tbaa !71
  %30 = icmp eq ptr %26, %29
  br i1 %30, label %31, label %24, !llvm.loop !195

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.ScrArea, ptr %26, i64 0, i32 8
  %33 = load i8, ptr %32, align 8, !tbaa !145
  %34 = icmp eq i8 %33, 6
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ScrArea, ptr %26, i64 0, i32 19
  %37 = load ptr, ptr %36, align 8, !tbaa !72
  %38 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 17
  %39 = load i32, ptr %38, align 8, !tbaa !69
  %40 = trunc i32 %39 to i16
  %41 = getelementptr inbounds %struct.SpaceImage, ptr %37, i64 0, i32 6, i32 10
  store i16 %40, ptr %41, align 2, !tbaa !74
  br label %42

42:                                               ; preds = %8, %1, %31, %35
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_on_visible_update(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_spacedata_draw_locks(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @render_image_update_pass_and_layer(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 40
  %6 = load ptr, ptr %5, align 8, !tbaa !20
  %7 = icmp eq ptr %6, null
  br i1 %7, label %84, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 10
  %10 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 19
  br label %15

11:                                               ; preds = %53, %15
  %12 = phi ptr [ %17, %15 ], [ %54, %53 ]
  %13 = load ptr, ptr %16, align 8, !tbaa !20
  %14 = icmp eq ptr %13, null
  br i1 %14, label %57, label %15, !llvm.loop !196

15:                                               ; preds = %8, %11
  %16 = phi ptr [ %6, %8 ], [ %13, %11 ]
  %17 = phi ptr [ null, %8 ], [ %12, %11 ]
  %18 = getelementptr inbounds %struct.wmWindowManager, ptr %16, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !20
  %20 = icmp eq ptr %19, null
  br i1 %20, label %11, label %21

21:                                               ; preds = %15, %53
  %22 = phi ptr [ %55, %53 ], [ %19, %15 ]
  %23 = phi ptr [ %54, %53 ], [ %17, %15 ]
  %24 = getelementptr inbounds %struct.wmWindow, ptr %22, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !193
  %26 = getelementptr inbounds %struct.bScreen, ptr %25, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !20
  %28 = icmp eq ptr %27, null
  br i1 %28, label %53, label %29

29:                                               ; preds = %21, %49
  %30 = phi ptr [ %51, %49 ], [ %27, %21 ]
  %31 = phi ptr [ %50, %49 ], [ %23, %21 ]
  %32 = getelementptr inbounds %struct.ScrArea, ptr %30, i64 0, i32 8
  %33 = load i8, ptr %32, align 8, !tbaa !145
  %34 = icmp eq i8 %33, 6
  br i1 %34, label %35, label %49

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.ScrArea, ptr %30, i64 0, i32 19
  %37 = load ptr, ptr %36, align 8, !tbaa !72
  %38 = icmp eq ptr %37, null
  br i1 %38, label %49, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.SpaceImage, ptr %37, i64 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !197
  %42 = load ptr, ptr %9, align 8, !tbaa !86
  %43 = icmp eq ptr %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = icmp eq ptr %31, null
  %46 = select i1 %45, ptr %30, ptr %31
  %47 = load ptr, ptr %10, align 8, !tbaa !71
  %48 = icmp eq ptr %30, %47
  br i1 %48, label %57, label %49

49:                                               ; preds = %44, %35, %39, %29
  %50 = phi ptr [ %31, %29 ], [ %46, %44 ], [ %31, %35 ], [ %31, %39 ]
  %51 = load ptr, ptr %30, align 8, !tbaa !20
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %29, !llvm.loop !198

53:                                               ; preds = %49, %21
  %54 = phi ptr [ %23, %21 ], [ %50, %49 ]
  %55 = load ptr, ptr %22, align 8, !tbaa !20
  %56 = icmp eq ptr %55, null
  br i1 %56, label %11, label %21, !llvm.loop !199

57:                                               ; preds = %11, %44
  %58 = phi ptr [ %30, %44 ], [ %12, %11 ]
  %59 = icmp eq ptr %58, null
  br i1 %59, label %84, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.ScrArea, ptr %58, i64 0, i32 19
  %62 = load ptr, ptr %61, align 8, !tbaa !72
  %63 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !87
  %65 = tail call ptr @RE_AcquireResultRead(ptr noundef %64) #16
  %66 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 14
  %67 = load ptr, ptr %66, align 8, !tbaa !200
  %68 = icmp eq ptr %67, null
  br i1 %68, label %79, label %69

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.RenderResult, ptr %65, i64 0, i32 12
  %71 = getelementptr inbounds %struct.RenderLayer, ptr %67, i64 0, i32 2
  %72 = tail call i32 @BLI_findstringindex(ptr noundef nonnull %70, ptr noundef nonnull %71, i32 noundef 16) #16
  %73 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 18
  %74 = load i32, ptr %73, align 4, !tbaa !70
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %79, label %76

76:                                               ; preds = %69
  %77 = trunc i32 %72 to i16
  %78 = getelementptr inbounds %struct.SpaceImage, ptr %62, i64 0, i32 6, i32 10
  store i16 %77, ptr %78, align 2, !tbaa !74
  store i32 %72, ptr %73, align 4, !tbaa !70
  br label %79

79:                                               ; preds = %69, %76, %60
  %80 = getelementptr inbounds %struct.SpaceImage, ptr %62, i64 0, i32 6, i32 10
  %81 = getelementptr inbounds %struct.ImageUser, ptr %2, i64 0, i32 10
  %82 = load <2 x i16>, ptr %80, align 2, !tbaa !128
  store <2 x i16> %82, ptr %81, align 2, !tbaa !128
  %83 = load ptr, ptr %63, align 8, !tbaa !87
  tail call void @RE_ReleaseResult(ptr noundef %83) #16
  br label %84

84:                                               ; preds = %3, %79, %57
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @image_buffer_rect_update(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 23
  %9 = load i32, ptr %8, align 4, !tbaa !180
  %10 = and i32 %9, 16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 15
  %14 = load i32, ptr %13, align 8, !tbaa !188
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %144, label %16

16:                                               ; preds = %12, %5
  %17 = icmp eq ptr %4, null
  br i1 %17, label %49, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 14
  %20 = load ptr, ptr %19, align 8, !tbaa !200
  %21 = icmp eq ptr %20, null
  br i1 %21, label %144, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 3
  %24 = load volatile i32, ptr %23, align 4, !tbaa !142
  %25 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !135
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %144

28:                                               ; preds = %22
  %29 = load volatile i32, ptr %4, align 4, !tbaa !127
  %30 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 4
  %31 = load i16, ptr %30, align 8, !tbaa !201
  %32 = sext i16 %31 to i32
  %33 = add nsw i32 %29, %32
  %34 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 1
  %35 = load volatile i32, ptr %34, align 4, !tbaa !141
  %36 = sub nsw i32 %35, %33
  %37 = add nsw i32 %36, %32
  %38 = icmp slt i32 %37, 2
  br i1 %38, label %144, label %39

39:                                               ; preds = %28
  %40 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 2
  %41 = load volatile i32, ptr %40, align 4, !tbaa !143
  %42 = add nsw i32 %41, %32
  %43 = load volatile i32, ptr %23, align 4, !tbaa !142
  %44 = sub nsw i32 %43, %42
  %45 = add nsw i32 %44, %32
  %46 = icmp slt i32 %45, 2
  br i1 %46, label %144, label %47

47:                                               ; preds = %39
  %48 = load volatile i32, ptr %23, align 4, !tbaa !142
  store volatile i32 %48, ptr %40, align 4, !tbaa !143
  br label %60

49:                                               ; preds = %16
  %50 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 4
  %51 = load i16, ptr %50, align 8, !tbaa !201
  %52 = sext i16 %51 to i32
  %53 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 2
  %54 = load i32, ptr %53, align 8, !tbaa !134
  %55 = shl nsw i32 %52, 1
  %56 = sub nsw i32 %54, %55
  %57 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 3
  %58 = load i32, ptr %57, align 4, !tbaa !135
  %59 = sub nsw i32 %58, %55
  br label %60

60:                                               ; preds = %49, %47
  %61 = phi i32 [ %45, %47 ], [ %59, %49 ]
  %62 = phi i32 [ %33, %47 ], [ %52, %49 ]
  %63 = phi i32 [ %37, %47 ], [ %56, %49 ]
  %64 = phi i32 [ %42, %47 ], [ %52, %49 ]
  %65 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 9
  %66 = load i32, ptr %65, align 8, !tbaa !202
  %67 = add nsw i32 %66, %62
  %68 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 2
  %69 = load i32, ptr %68, align 8, !tbaa !203
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %144

71:                                               ; preds = %60
  %72 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 9, i32 2
  %73 = load i32, ptr %72, align 8, !tbaa !204
  %74 = add nsw i32 %73, %64
  %75 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 3
  %76 = load i32, ptr %75, align 4, !tbaa !205
  %77 = icmp slt i32 %74, %76
  br i1 %77, label %78, label %144

78:                                               ; preds = %71
  %79 = add nsw i32 %67, %63
  %80 = icmp sgt i32 %79, %69
  %81 = sub nsw i32 %69, %67
  %82 = select i1 %80, i32 %81, i32 %63
  %83 = add nsw i32 %74, %61
  %84 = icmp sgt i32 %83, %76
  %85 = sub nsw i32 %76, %74
  %86 = select i1 %84, i32 %85, i32 %61
  %87 = icmp slt i32 %82, 1
  %88 = icmp slt i32 %86, 1
  %89 = select i1 %87, i1 true, i1 %88
  br i1 %89, label %144, label %90

90:                                               ; preds = %78
  %91 = getelementptr inbounds %struct.ImageUser, ptr %3, i64 0, i32 11
  %92 = load i16, ptr %91, align 8, !tbaa !206
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %94, label %124

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 7
  %96 = load ptr, ptr %95, align 8, !tbaa !122
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %115

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 6
  %100 = load ptr, ptr %99, align 8, !tbaa !207
  %101 = icmp eq ptr %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %98
  %103 = or i32 %9, 16
  store i32 %103, ptr %8, align 4, !tbaa !180
  br label %144

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 14
  %106 = load ptr, ptr %105, align 8, !tbaa !200
  %107 = icmp eq ptr %106, null
  br i1 %107, label %144, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.RenderLayer, ptr %106, i64 0, i32 11
  %110 = load volatile ptr, ptr %109, align 8, !tbaa !208
  %111 = icmp eq ptr %110, null
  br i1 %111, label %144, label %112

112:                                              ; preds = %108
  %113 = load volatile ptr, ptr %109, align 8, !tbaa !208
  %114 = icmp eq ptr %113, null
  br i1 %114, label %144, label %115

115:                                              ; preds = %94, %112
  %116 = phi ptr [ %113, %112 ], [ %96, %94 ]
  %117 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 2
  %118 = load i32, ptr %117, align 8, !tbaa !134
  %119 = mul nsw i32 %118, %64
  %120 = add nsw i32 %119, %62
  %121 = shl nsw i32 %120, 2
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds float, ptr %116, i64 %122
  br label %127

124:                                              ; preds = %90
  %125 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 9
  %126 = load ptr, ptr %125, align 8, !tbaa !210
  br label %127

127:                                              ; preds = %124, %115
  %128 = phi ptr [ %123, %115 ], [ %126, %124 ]
  %129 = phi i32 [ %118, %115 ], [ %69, %124 ]
  %130 = phi i32 [ %67, %115 ], [ 0, %124 ]
  %131 = phi i32 [ %74, %115 ], [ 0, %124 ]
  %132 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 15
  %133 = load i32, ptr %132, align 8, !tbaa !188
  %134 = icmp eq i32 %133, 0
  %135 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 20
  %136 = getelementptr inbounds %struct.RenderJob, ptr %0, i64 0, i32 21
  %137 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 44
  %138 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 45
  %139 = select i1 %134, ptr %137, ptr %135
  %140 = select i1 %134, ptr %138, ptr %136
  %141 = add nsw i32 %82, %67
  %142 = add nsw i32 %86, %74
  %143 = trunc i32 %133 to i8
  tail call void @IMB_partial_display_buffer_update(ptr noundef nonnull %2, ptr noundef %128, ptr noundef null, i32 noundef %129, i32 noundef %130, i32 noundef %131, ptr noundef nonnull %139, ptr noundef nonnull %140, i32 noundef %67, i32 noundef %74, i32 noundef %141, i32 noundef %142, i8 noundef zeroext %143) #16
  br label %144

144:                                              ; preds = %112, %104, %108, %78, %71, %60, %39, %28, %18, %22, %12, %127, %102
  ret void
}

; Function Attrs: optsize
declare ptr @RE_AcquireResultRead(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_findstringindex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RE_ReleaseResult(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_partial_display_buffer_update(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_renderinfo_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %6 = load ptr, ptr @MEM_get_memory_in_use, align 8, !tbaa !20
  %7 = tail call i64 %6() #16
  %8 = load ptr, ptr @MEM_get_mapped_memory_in_use, align 8, !tbaa !20
  %9 = tail call i64 %8() #16
  %10 = load ptr, ptr @MEM_get_peak_memory, align 8, !tbaa !20
  %11 = tail call i64 %10() #16
  %12 = sub i64 %7, %9
  %13 = uitofp i64 %12 to double
  %14 = fmul double %13, 0x3EB0000000000000
  %15 = fptrunc double %14 to float
  %16 = uitofp i64 %9 to double
  %17 = fmul double %16, 0x3EB0000000000000
  %18 = fptrunc double %17 to float
  %19 = uitofp i64 %11 to double
  %20 = fmul double %19, 0x3EB0000000000000
  %21 = fptrunc double %20 to float
  %22 = getelementptr inbounds %struct.RenderStats, ptr %0, i64 0, i32 13
  %23 = load i8, ptr %22, align 8, !tbaa !211
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = icmp eq i8 %2, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %25, %4
  %28 = phi ptr [ @.str.26, %4 ], [ @.str.27, %25 ]
  %29 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.25, ptr noundef nonnull %28) #16
  %30 = sext i32 %29 to i64
  br label %31

31:                                               ; preds = %27, %25
  %32 = phi i64 [ 0, %25 ], [ %30, %27 ]
  %33 = getelementptr inbounds i8, ptr %3, i64 %32
  %34 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 5
  %35 = load i32, ptr %34, align 8, !tbaa !95
  %36 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %33, ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef %35) #16
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %32, %37
  %39 = getelementptr inbounds i8, ptr %3, i64 %38
  %40 = getelementptr inbounds %struct.RenderStats, ptr %0, i64 0, i32 15
  %41 = load double, ptr %40, align 8, !tbaa !212
  call void @BLI_timestr(double noundef %41, ptr noundef nonnull %5, i64 noundef 32) #16
  %42 = getelementptr inbounds %struct.RenderStats, ptr %0, i64 0, i32 16
  %43 = load ptr, ptr %42, align 8, !tbaa !213
  %44 = icmp eq ptr %43, null
  br i1 %44, label %61, label %45

45:                                               ; preds = %31
  %46 = load i8, ptr %43, align 1, !tbaa !119
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %61, label %48

48:                                               ; preds = %45
  %49 = load double, ptr %40, align 8, !tbaa !212
  %50 = fcmp une double %49, 0.000000e+00
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(1) @.str.29, ptr noundef nonnull %5) #16
  %53 = sext i32 %52 to i64
  br label %55

54:                                               ; preds = %48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %39, ptr noundef nonnull align 1 dereferenceable(3) @.str.30, i64 3, i1 false)
  br label %55

55:                                               ; preds = %54, %51
  %56 = phi i64 [ %53, %51 ], [ 2, %54 ]
  %57 = call double @PIL_check_seconds_timer() #16
  %58 = getelementptr inbounds %struct.RenderStats, ptr %0, i64 0, i32 14
  %59 = load double, ptr %58, align 8, !tbaa !214
  %60 = fsub double %57, %59
  call void @BLI_timestr(double noundef %60, ptr noundef nonnull %5, i64 noundef 32) #16
  br label %62

61:                                               ; preds = %45, %31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %39, ptr noundef nonnull align 1 dereferenceable(3) @.str.30, i64 3, i1 false)
  br label %62

62:                                               ; preds = %61, %55
  %63 = phi i64 [ %56, %55 ], [ 2, %61 ]
  %64 = add nsw i64 %63, %38
  %65 = getelementptr inbounds i8, ptr %3, i64 %64
  %66 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %65, ptr noundef nonnull dereferenceable(1) @.str.31, ptr noundef nonnull %5) #16
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %64, %67
  %69 = getelementptr inbounds i8, ptr %3, i64 %68
  %70 = getelementptr inbounds %struct.RenderStats, ptr %0, i64 0, i32 17
  %71 = load ptr, ptr %70, align 8, !tbaa !215
  %72 = icmp eq ptr %71, null
  br i1 %72, label %80, label %73

73:                                               ; preds = %62
  %74 = load i8, ptr %71, align 1, !tbaa !119
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %190, label %76

76:                                               ; preds = %73
  %77 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %69, ptr noundef nonnull dereferenceable(1) @.str.32, ptr noundef nonnull %71) #16
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %68, %78
  br label %190

80:                                               ; preds = %62
  %81 = getelementptr inbounds %struct.RenderStats, ptr %0, i64 0, i32 2
  %82 = load i32, ptr %81, align 8, !tbaa !216
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %100

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.RenderStats, ptr %0, i64 0, i32 1
  %86 = load i32, ptr %85, align 4, !tbaa !217
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.RenderStats, ptr %0, i64 0, i32 4
  %90 = load i32, ptr %89, align 8, !tbaa !218
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.RenderStats, ptr %0, i64 0, i32 3
  %94 = load i32, ptr %93, align 4, !tbaa !219
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.RenderStats, ptr %0, i64 0, i32 5
  %98 = load i32, ptr %97, align 4, !tbaa !220
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %109, label %100

100:                                              ; preds = %80, %84, %88, %92, %96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %69, ptr noundef nonnull align 1 dereferenceable(3) @.str.30, i64 3, i1 false)
  %101 = add nsw i64 %68, 2
  %102 = load i32, ptr %81, align 8, !tbaa !216
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds i8, ptr %3, i64 %101
  %106 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %105, ptr noundef nonnull dereferenceable(1) @.str.33, i32 noundef %102) #16
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %101, %107
  br label %109

109:                                              ; preds = %96, %104, %100
  %110 = phi i64 [ %108, %104 ], [ %101, %100 ], [ %68, %96 ]
  %111 = getelementptr inbounds %struct.RenderStats, ptr %0, i64 0, i32 1
  %112 = load i32, ptr %111, align 4, !tbaa !217
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %109
  %115 = getelementptr inbounds i8, ptr %3, i64 %110
  %116 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %115, ptr noundef nonnull dereferenceable(1) @.str.34, i32 noundef %112) #16
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %110, %117
  br label %119

119:                                              ; preds = %114, %109
  %120 = phi i64 [ %118, %114 ], [ %110, %109 ]
  %121 = getelementptr inbounds %struct.RenderStats, ptr %0, i64 0, i32 4
  %122 = load i32, ptr %121, align 8, !tbaa !218
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %119
  %125 = getelementptr inbounds i8, ptr %3, i64 %120
  %126 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %125, ptr noundef nonnull dereferenceable(1) @.str.35, i32 noundef %122) #16
  %127 = sext i32 %126 to i64
  %128 = add nsw i64 %120, %127
  br label %129

129:                                              ; preds = %124, %119
  %130 = phi i64 [ %128, %124 ], [ %120, %119 ]
  %131 = getelementptr inbounds %struct.RenderStats, ptr %0, i64 0, i32 3
  %132 = load i32, ptr %131, align 4, !tbaa !219
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %129
  %135 = getelementptr inbounds i8, ptr %3, i64 %130
  %136 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %135, ptr noundef nonnull dereferenceable(1) @.str.36, i32 noundef %132) #16
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %130, %137
  br label %139

139:                                              ; preds = %134, %129
  %140 = phi i64 [ %138, %134 ], [ %130, %129 ]
  %141 = getelementptr inbounds %struct.RenderStats, ptr %0, i64 0, i32 5
  %142 = load i32, ptr %141, align 4, !tbaa !220
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %139
  %145 = getelementptr inbounds i8, ptr %3, i64 %140
  %146 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %145, ptr noundef nonnull dereferenceable(1) @.str.37, i32 noundef %142) #16
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %140, %147
  br label %149

149:                                              ; preds = %144, %139
  %150 = phi i64 [ %148, %144 ], [ %140, %139 ]
  %151 = getelementptr inbounds i8, ptr %3, i64 %150
  %152 = getelementptr inbounds %struct.RenderStats, ptr %0, i64 0, i32 20
  %153 = load float, ptr %152, align 4, !tbaa !221
  %154 = fcmp oeq float %153, 0.000000e+00
  br i1 %154, label %155, label %160

155:                                              ; preds = %149
  %156 = fpext float %15 to double
  %157 = fpext float %18 to double
  %158 = fpext float %21 to double
  %159 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %151, ptr noundef nonnull dereferenceable(1) @.str.38, double noundef %156, double noundef %157, double noundef %158) #16
  br label %166

160:                                              ; preds = %149
  %161 = getelementptr inbounds %struct.RenderStats, ptr %0, i64 0, i32 19
  %162 = load float, ptr %161, align 8, !tbaa !222
  %163 = fpext float %162 to double
  %164 = fpext float %153 to double
  %165 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %151, ptr noundef nonnull dereferenceable(1) @.str.39, double noundef %163, double noundef %164) #16
  br label %166

166:                                              ; preds = %160, %155
  %167 = phi i32 [ %159, %155 ], [ %165, %160 ]
  %168 = sext i32 %167 to i64
  %169 = add nsw i64 %150, %168
  %170 = getelementptr inbounds %struct.RenderStats, ptr %0, i64 0, i32 7
  %171 = load i16, ptr %170, align 4, !tbaa !223
  %172 = icmp eq i16 %171, 0
  br i1 %172, label %179, label %173

173:                                              ; preds = %166
  %174 = getelementptr inbounds i8, ptr %3, i64 %169
  %175 = sext i16 %171 to i32
  %176 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %174, ptr noundef nonnull dereferenceable(1) @.str.40, i32 noundef %175) #16
  %177 = sext i32 %176 to i64
  %178 = add nsw i64 %169, %177
  br label %179

179:                                              ; preds = %173, %166
  %180 = phi i64 [ %178, %173 ], [ %169, %166 ]
  %181 = getelementptr inbounds %struct.RenderStats, ptr %0, i64 0, i32 8
  %182 = load i16, ptr %181, align 2, !tbaa !224
  %183 = icmp eq i16 %182, 0
  br i1 %183, label %190, label %184

184:                                              ; preds = %179
  %185 = getelementptr inbounds i8, ptr %3, i64 %180
  %186 = sext i16 %182 to i32
  %187 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %185, ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %186) #16
  %188 = sext i32 %187 to i64
  %189 = add nsw i64 %180, %188
  br label %190

190:                                              ; preds = %179, %184, %73, %76
  %191 = phi i64 [ %79, %76 ], [ %68, %73 ], [ %189, %184 ], [ %180, %179 ]
  %192 = getelementptr inbounds %struct.RenderStats, ptr %0, i64 0, i32 12
  %193 = load i16, ptr %192, align 2, !tbaa !225
  %194 = icmp eq i16 %193, 0
  br i1 %194, label %201, label %195

195:                                              ; preds = %190
  %196 = getelementptr inbounds i8, ptr %3, i64 %191
  %197 = sext i16 %193 to i32
  %198 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %196, ptr noundef nonnull dereferenceable(1) @.str.42, i32 noundef %197) #16
  %199 = sext i32 %198 to i64
  %200 = add nsw i64 %191, %199
  br label %201

201:                                              ; preds = %195, %190
  %202 = phi i64 [ %200, %195 ], [ %191, %190 ]
  %203 = getelementptr inbounds i8, ptr %3, i64 %202
  %204 = load ptr, ptr %42, align 8, !tbaa !213
  %205 = icmp eq ptr %204, null
  br i1 %205, label %213, label %206

206:                                              ; preds = %201
  %207 = load i8, ptr %204, align 1, !tbaa !119
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %213, label %209

209:                                              ; preds = %206
  %210 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %203, ptr noundef nonnull dereferenceable(1) @.str.32, ptr noundef nonnull %204) #16
  %211 = sext i32 %210 to i64
  %212 = add nsw i64 %202, %211
  br label %213

213:                                              ; preds = %209, %206, %201
  %214 = phi i64 [ %212, %209 ], [ %202, %206 ], [ %202, %201 ]
  %215 = icmp slt i64 %214, 512
  br i1 %215, label %222, label %216

216:                                              ; preds = %213
  %217 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !226
  %218 = and i32 %217, 1
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %222, label %220

220:                                              ; preds = %216
  %221 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %222

222:                                              ; preds = %216, %220, %213
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  ret void
}

; Function Attrs: optsize
declare void @BLI_timestr(double noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare double @PIL_check_seconds_timer() local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_jobs_kill_type(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal i32 @render_break(ptr nocapture readnone %0) #9 {
  %2 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !88
  %3 = icmp ne i8 %2, 0
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: optsize
declare void @BLI_begin_threaded_malloc() local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_end_threaded_malloc() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @render_view3d_flag_changed(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.rctf, align 4
  %4 = alloca %struct.rcti, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i8, align 1
  %8 = alloca [32 x i8], align 16
  %9 = tail call ptr @CTX_wm_region_view3d(ptr noundef %1) #16
  %10 = tail call ptr @CTX_wm_view3d(ptr noundef %1) #16
  %11 = tail call ptr @CTX_wm_region(ptr noundef %1) #16
  %12 = tail call ptr @CTX_data_scene(ptr noundef %1) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #17
  %13 = getelementptr inbounds %struct.RenderEngine, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !121
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.RenderEngine, ptr %0, i64 0, i32 13
  %18 = load i32, ptr %17, align 8, !tbaa !96
  br label %29

19:                                               ; preds = %2
  %20 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef %11) #16
  %21 = call ptr @RE_GetRender(ptr noundef nonnull %8) #16
  store ptr %21, ptr %13, align 8, !tbaa !121
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call ptr @RE_NewRender(ptr noundef nonnull %8) #16
  store ptr %24, ptr %13, align 8, !tbaa !121
  br label %25

25:                                               ; preds = %23, %19
  %26 = getelementptr inbounds %struct.RenderEngine, ptr %0, i64 0, i32 13
  %27 = load i32, ptr %26, align 8, !tbaa !96
  %28 = or i32 %27, 4
  store i32 %28, ptr %26, align 8, !tbaa !96
  br label %29

29:                                               ; preds = %16, %25
  %30 = phi i32 [ %18, %16 ], [ %28, %25 ]
  %31 = getelementptr inbounds %struct.RenderEngine, ptr %0, i64 0, i32 13
  %32 = shl i32 %30, 2
  %33 = and i32 %32, 4
  %34 = and i32 %30, 2
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i32 %33, i32 4
  %37 = and i32 %30, 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %29
  %40 = or disjoint i32 %36, 8
  %41 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 7
  %42 = load ptr, ptr %41, align 8, !tbaa !227
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  %45 = call zeroext i8 @ED_object_editmode_load(ptr noundef nonnull %42) #16
  br label %46

46:                                               ; preds = %39, %44, %29
  %47 = phi i32 [ %40, %44 ], [ %40, %39 ], [ %36, %29 ]
  store i32 0, ptr %31, align 8, !tbaa !96
  %48 = getelementptr inbounds %struct.RenderEngine, ptr %0, i64 0, i32 18
  %49 = load i32, ptr %48, align 8, !tbaa !228
  %50 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 5
  %51 = load i16, ptr %50, align 8, !tbaa !98
  %52 = sext i16 %51 to i32
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 6
  %56 = load i16, ptr %55, align 2, !tbaa !101
  %57 = sext i16 %56 to i32
  br label %65

58:                                               ; preds = %46
  %59 = getelementptr inbounds %struct.RenderEngine, ptr %0, i64 0, i32 19
  %60 = load i32, ptr %59, align 4, !tbaa !229
  %61 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 6
  %62 = load i16, ptr %61, align 2, !tbaa !101
  %63 = sext i16 %62 to i32
  %64 = icmp eq i32 %60, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %54, %58
  %66 = phi i32 [ %57, %54 ], [ %63, %58 ]
  store i32 %52, ptr %48, align 8, !tbaa !228
  %67 = getelementptr inbounds %struct.RenderEngine, ptr %0, i64 0, i32 19
  store i32 %66, ptr %67, align 4, !tbaa !229
  %68 = or i32 %47, 2
  br label %69

69:                                               ; preds = %65, %58
  %70 = phi i32 [ %68, %65 ], [ %47, %58 ]
  %71 = getelementptr inbounds %struct.RenderEngine, ptr %0, i64 0, i32 17
  %72 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 1
  %73 = call i32 @compare_m4m4(ptr noundef nonnull %71, ptr noundef nonnull %72, float noundef 0x3EE4F8B580000000) #16
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  call void @copy_m4_m4(ptr noundef nonnull %71, ptr noundef nonnull %72) #16
  %76 = or i32 %70, 1
  br label %77

77:                                               ; preds = %75, %69
  %78 = phi i32 [ %76, %75 ], [ %70, %69 ]
  %79 = call fastcc zeroext i8 @render_view3d_get_rects(ptr noundef nonnull %11, ptr noundef %10, ptr noundef %9, ptr noundef nonnull %3, ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef null, ptr noundef nonnull %7) #18, !range !103
  %80 = getelementptr inbounds %struct.RenderEngine, ptr %0, i64 0, i32 15
  %81 = call zeroext i8 @BLI_rctf_compare(ptr noundef nonnull %3, ptr noundef nonnull %80, float noundef 0x3EE4F8B580000000) #16
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %80, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !230
  %84 = or i32 %78, 1
  br label %85

85:                                               ; preds = %83, %77
  %86 = phi i32 [ %84, %83 ], [ %78, %77 ]
  %87 = call fastcc i32 @render_view3d_disprect(ptr noundef %12, ptr noundef nonnull %11, ptr noundef %10, ptr noundef %9, ptr noundef nonnull %4) #18, !range !125
  %88 = getelementptr inbounds %struct.RenderEngine, ptr %0, i64 0, i32 16
  %89 = call zeroext i8 @BLI_rcti_compare(ptr noundef nonnull %4, ptr noundef nonnull %88) #16
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %88, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !231
  %92 = or i32 %86, 2
  br label %95

93:                                               ; preds = %85
  %94 = icmp eq i32 %86, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %91, %93
  %96 = phi i32 [ %92, %91 ], [ %86, %93 ]
  %97 = getelementptr inbounds %struct.RenderEngine, ptr %0, i64 0, i32 14
  %98 = load i32, ptr %97, align 4, !tbaa !151
  %99 = or i32 %98, %96
  store i32 %99, ptr %97, align 4, !tbaa !151
  br label %100

100:                                              ; preds = %93, %95
  %101 = phi i8 [ 1, %95 ], [ 0, %93 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  ret i8 %101
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0) unnamed_addr #10 {
  %2 = tail call i32 @llvm.smax.i32(i32 %0, i32 1)
  ret i32 %2
}

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @render_view3d_free(ptr noundef %0) #0 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !20
  tail call void %2(ptr noundef %0) #16
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @ED_object_editmode_load(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @compare_m4m4(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @render_view3d_get_rects(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr nocapture noundef writeonly %8) unnamed_addr #0 {
  %10 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 5
  %11 = load i16, ptr %10, align 8, !tbaa !98
  %12 = sext i16 %11 to i32
  %13 = icmp slt i16 %11, 4
  br i1 %13, label %27, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 6
  %16 = load i16, ptr %15, align 2, !tbaa !101
  %17 = icmp slt i16 %16, 4
  br i1 %17, label %27, label %18

18:                                               ; preds = %14
  %19 = zext nneg i16 %16 to i32
  %20 = tail call zeroext i8 @ED_view3d_viewplane_get(ptr noundef %1, ptr noundef %2, i32 noundef %12, i32 noundef %19, ptr noundef %3, ptr noundef %5, ptr noundef %6, ptr noundef %7) #16
  store i8 %20, ptr %8, align 1, !tbaa !119
  %21 = load i16, ptr %10, align 8, !tbaa !98
  %22 = sext i16 %21 to i32
  %23 = getelementptr inbounds %struct.RenderEngine, ptr %4, i64 0, i32 10
  store i32 %22, ptr %23, align 8, !tbaa !232
  %24 = load i16, ptr %15, align 2, !tbaa !101
  %25 = sext i16 %24 to i32
  %26 = getelementptr inbounds %struct.RenderEngine, ptr %4, i64 0, i32 11
  store i32 %25, ptr %26, align 4, !tbaa !233
  br label %27

27:                                               ; preds = %9, %14, %18
  %28 = phi i8 [ 1, %18 ], [ 0, %14 ], [ 0, %9 ]
  ret i8 %28
}

; Function Attrs: optsize
declare zeroext i8 @BLI_rctf_compare(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: optsize
declare zeroext i8 @BLI_rcti_compare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_view3d_viewplane_get(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_view3d_calc_camera_border(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !234
  %4 = load float, ptr %0, align 4, !tbaa !235
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_y(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %3 = load float, ptr %2, align 4, !tbaa !236
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !139
  %6 = fsub float %3, %5
  ret float %6
}

; Function Attrs: optsize
declare void @BLI_rcti_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @render_view3d_break(ptr nocapture noundef readonly %0) #7 {
  %2 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !88
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @render_view3d_is_valid(ptr noundef %0) #18, !range !103
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.RenderPreview, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !152
  br i1 %6, label %12, label %9

9:                                                ; preds = %4
  %10 = load i16, ptr %8, align 2, !tbaa !128
  %11 = sext i16 %10 to i32
  br label %13

12:                                               ; preds = %4
  store i16 1, ptr %8, align 2, !tbaa !128
  br label %13

13:                                               ; preds = %12, %9, %1
  %14 = phi i32 [ 1, %1 ], [ %11, %9 ], [ 1, %12 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @render_view3d_display_update(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #12 {
  %4 = getelementptr inbounds %struct.RenderPreview, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !153
  store i16 1, ptr %5, align 2, !tbaa !128
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @render_view3d_renderinfo_cb(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.RenderPreview, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !113
  %5 = getelementptr inbounds %struct.RegionView3D, ptr %4, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !148
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.RenderPreview, ptr %0, i64 0, i32 1
  br label %17

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.RenderPreview, ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !108
  %13 = getelementptr inbounds %struct.RenderPreview, ptr %0, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !109
  %15 = getelementptr inbounds %struct.RenderEngine, ptr %14, i64 0, i32 9
  tail call fastcc void @make_renderinfo_string(ptr noundef %1, ptr noundef %12, i8 noundef zeroext 0, ptr noundef nonnull %15) #18
  %16 = getelementptr inbounds %struct.RenderPreview, ptr %0, i64 0, i32 2
  br label %17

17:                                               ; preds = %10, %8
  %18 = phi ptr [ %16, %10 ], [ %9, %8 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !20
  store i16 1, ptr %19, align 2, !tbaa !128
  ret void
}

; Function Attrs: optsize
declare ptr @RE_GetStats(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RE_InitState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RE_SetOrtho(ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RE_SetWindow(ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RE_SetPixelSize(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RE_SetView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_job_main_thread_lock_acquire(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RE_Database_FromScene(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_job_main_thread_lock_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RE_Database_Preprocess(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @render_view3d_is_valid(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.RenderPreview, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !113
  %4 = getelementptr inbounds %struct.RegionView3D, ptr %3, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !148
  %6 = icmp ne ptr %5, null
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: optsize
declare void @RE_DataBase_IncrementalView(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RE_DataBase_ApplyWindow(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @render_update_resolution(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = alloca %struct.rcti, align 4
  %6 = getelementptr inbounds %struct.RenderPreview, ptr %1, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !111
  %8 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 5
  %9 = load i16, ptr %8, align 8, !tbaa !98
  %10 = sext i16 %9 to i32
  %11 = getelementptr inbounds %struct.RenderPreview, ptr %1, i64 0, i32 13
  %12 = load i32, ptr %11, align 4, !tbaa !115
  %13 = sdiv i32 %10, %12
  %14 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 6
  %15 = load i16, ptr %14, align 2, !tbaa !101
  %16 = sext i16 %15 to i32
  %17 = sdiv i32 %16, %12
  %18 = icmp eq i8 %2, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  %20 = sitofp i32 %12 to float
  %21 = fdiv float 1.000000e+00, %20
  call fastcc void @rcti_scale_coords(ptr noundef nonnull %5, ptr noundef %3, float noundef %21) #18
  call void @RE_ChangeResolution(ptr noundef %0, i32 noundef %13, i32 noundef %17, ptr noundef nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  br label %23

22:                                               ; preds = %4
  tail call void @RE_ChangeResolution(ptr noundef %0, i32 noundef %13, i32 noundef %17, ptr noundef null) #16
  br label %23

23:                                               ; preds = %22, %19
  %24 = getelementptr inbounds %struct.RenderPreview, ptr %1, i64 0, i32 14
  %25 = load i8, ptr %24, align 8, !tbaa !118
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, ptr %11, align 4, !tbaa !115
  %29 = icmp ne i32 %28, 1
  %30 = zext i1 %29 to i8
  call void @RE_ChangeModeFlag(ptr noundef %0, i32 noundef 33554432, i8 noundef zeroext %30) #16
  br label %31

31:                                               ; preds = %27, %23
  ret void
}

; Function Attrs: optsize
declare void @RE_TileProcessor(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @rcti_scale_coords(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #13 {
  %4 = load <4 x i32>, ptr %1, align 4, !tbaa !126
  %5 = sitofp <4 x i32> %4 to <4 x float>
  %6 = insertelement <4 x float> poison, float %2, i64 0
  %7 = shufflevector <4 x float> %6, <4 x float> poison, <4 x i32> zeroinitializer
  %8 = fmul <4 x float> %7, %5
  %9 = fptosi <4 x float> %8 to <4 x i32>
  store <4 x i32> %9, ptr %0, align 4, !tbaa !126
  ret void
}

; Function Attrs: optsize
declare void @RE_ChangeResolution(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RE_ChangeModeFlag(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind optsize }
attributes #17 = { nounwind }
attributes #18 = { optsize }

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
!13 = !{!6, !7, i64 24}
!14 = !{!6, !7, i64 8}
!15 = !{!6, !7, i64 48}
!16 = !{!6, !7, i64 64}
!17 = !{!6, !7, i64 56}
!18 = !{!6, !7, i64 32}
!19 = !{!6, !7, i64 88}
!20 = !{!7, !7, i64 0}
!21 = !{!22, !7, i64 112}
!22 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!23 = !{!24, !12, i64 236}
!24 = !{!"View3D", !7, i64 0, !7, i64 8, !10, i64 16, !25, i64 32, !26, i64 36, !8, i64 40, !8, i64 56, !26, i64 72, !26, i64 76, !8, i64 80, !8, i64 81, !25, i64 84, !25, i64 88, !12, i64 92, !12, i64 94, !7, i64 96, !7, i64 104, !27, i64 112, !10, i64 128, !7, i64 144, !7, i64 152, !8, i64 160, !25, i64 224, !25, i64 228, !12, i64 232, !12, i64 234, !12, i64 236, !12, i64 238, !12, i64 240, !12, i64 242, !26, i64 244, !26, i64 248, !26, i64 252, !26, i64 256, !8, i64 260, !8, i64 272, !12, i64 284, !12, i64 286, !12, i64 288, !8, i64 290, !8, i64 291, !8, i64 292, !8, i64 293, !8, i64 294, !10, i64 296, !10, i64 312, !10, i64 328, !8, i64 344, !8, i64 345, !8, i64 346, !8, i64 347, !7, i64 352, !7, i64 360, !7, i64 368}
!25 = !{!"int", !8, i64 0}
!26 = !{!"float", !8, i64 0}
!27 = !{!"rctf", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12}
!28 = !{!24, !7, i64 96}
!29 = !{!22, !7, i64 120}
!30 = !{!31, !8, i64 280}
!31 = !{!"Scene", !32, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !10, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !25, i64 232, !25, i64 236, !25, i64 240, !12, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !33, i64 280, !41, i64 4264, !10, i64 4296, !10, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !12, i64 4376, !12, i64 4378, !25, i64 4380, !10, i64 4384, !42, i64 4400, !43, i64 4416, !46, i64 4600, !7, i64 4608, !47, i64 4616, !7, i64 4640, !48, i64 4648, !48, i64 4656, !35, i64 4664, !36, i64 4824, !49, i64 4888, !7, i64 4952}
!32 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !25, i64 100, !25, i64 104, !25, i64 108, !7, i64 112}
!33 = !{!"RenderData", !34, i64 0, !7, i64 248, !7, i64 256, !37, i64 264, !38, i64 328, !25, i64 400, !25, i64 404, !25, i64 408, !26, i64 412, !25, i64 416, !25, i64 420, !25, i64 424, !25, i64 428, !12, i64 432, !12, i64 434, !26, i64 436, !26, i64 440, !26, i64 444, !26, i64 448, !26, i64 452, !12, i64 456, !12, i64 458, !12, i64 460, !12, i64 462, !12, i64 464, !12, i64 466, !25, i64 468, !12, i64 472, !12, i64 474, !12, i64 476, !12, i64 478, !12, i64 480, !12, i64 482, !25, i64 484, !25, i64 488, !12, i64 492, !12, i64 494, !25, i64 496, !25, i64 500, !12, i64 504, !12, i64 506, !12, i64 508, !12, i64 510, !12, i64 512, !8, i64 514, !8, i64 515, !25, i64 516, !25, i64 520, !25, i64 524, !12, i64 528, !12, i64 530, !12, i64 532, !12, i64 534, !12, i64 536, !12, i64 538, !12, i64 540, !12, i64 542, !27, i64 544, !27, i64 560, !39, i64 576, !10, i64 592, !12, i64 608, !12, i64 610, !26, i64 612, !26, i64 616, !26, i64 620, !26, i64 624, !25, i64 628, !26, i64 632, !26, i64 636, !26, i64 640, !26, i64 644, !12, i64 648, !12, i64 650, !12, i64 652, !12, i64 654, !12, i64 656, !12, i64 658, !26, i64 660, !26, i64 664, !12, i64 668, !12, i64 670, !26, i64 672, !26, i64 676, !8, i64 680, !25, i64 1704, !12, i64 1708, !12, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !25, i64 2520, !12, i64 2524, !12, i64 2526, !26, i64 2528, !26, i64 2532, !12, i64 2536, !12, i64 2538, !26, i64 2540, !12, i64 2544, !12, i64 2546, !25, i64 2548, !12, i64 2552, !12, i64 2554, !12, i64 2556, !12, i64 2558, !26, i64 2560, !26, i64 2564, !7, i64 2568, !25, i64 2576, !26, i64 2580, !8, i64 2584, !40, i64 2616, !25, i64 3976, !25, i64 3980}
!34 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !12, i64 8, !12, i64 10, !26, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !35, i64 24, !36, i64 184}
!35 = !{!"ColorManagedViewSettings", !25, i64 0, !25, i64 4, !8, i64 8, !8, i64 72, !26, i64 136, !26, i64 140, !7, i64 144, !7, i64 152}
!36 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!37 = !{!"QuicktimeCodecSettings", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12, !25, i64 16, !25, i64 20, !25, i64 24, !25, i64 28, !25, i64 32, !25, i64 36, !25, i64 40, !25, i64 44, !12, i64 48, !12, i64 50, !25, i64 52, !25, i64 56, !25, i64 60}
!38 = !{!"FFMpegCodecData", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12, !25, i64 16, !25, i64 20, !25, i64 24, !25, i64 28, !26, i64 32, !25, i64 36, !25, i64 40, !25, i64 44, !25, i64 48, !25, i64 52, !25, i64 56, !25, i64 60, !7, i64 64}
!39 = !{!"rcti", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12}
!40 = !{!"BakeData", !34, i64 0, !8, i64 248, !12, i64 1272, !12, i64 1274, !12, i64 1276, !12, i64 1278, !26, i64 1280, !26, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!41 = !{!"AudioData", !25, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !25, i64 16, !12, i64 20, !12, i64 22, !26, i64 24, !26, i64 28}
!42 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!43 = !{!"GameData", !42, i64 0, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !12, i64 32, !8, i64 34, !44, i64 40, !12, i64 64, !12, i64 66, !26, i64 68, !45, i64 72, !26, i64 128, !26, i64 132, !25, i64 136, !12, i64 140, !12, i64 142, !12, i64 144, !12, i64 146, !12, i64 148, !12, i64 150, !12, i64 152, !12, i64 154, !12, i64 156, !12, i64 158, !12, i64 160, !12, i64 162, !26, i64 164, !26, i64 168, !26, i64 172, !26, i64 176, !26, i64 180}
!44 = !{!"GameDome", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !26, i64 8, !26, i64 12, !7, i64 16}
!45 = !{!"RecastData", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !26, i64 16, !26, i64 20, !26, i64 24, !26, i64 28, !26, i64 32, !26, i64 36, !25, i64 40, !26, i64 44, !26, i64 48, !12, i64 52, !12, i64 54}
!46 = !{!"UnitSettings", !26, i64 0, !8, i64 4, !8, i64 5, !12, i64 6}
!47 = !{!"PhysicsSettings", !8, i64 0, !25, i64 12, !25, i64 16, !25, i64 20}
!48 = !{!"long", !8, i64 0}
!49 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!50 = !{!51, !12, i64 2092}
!51 = !{!"Global", !7, i64 0, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 2057, !8, i64 2058, !10, i64 2064, !8, i64 2080, !8, i64 2081, !8, i64 2082, !12, i64 2084, !12, i64 2086, !12, i64 2088, !8, i64 2090, !12, i64 2092, !25, i64 2096, !25, i64 2100, !8, i64 2104, !25, i64 2108, !25, i64 2112, !8, i64 2116}
!52 = !{!53, !25, i64 20}
!53 = !{!"wmEvent", !7, i64 0, !7, i64 8, !12, i64 16, !12, i64 18, !25, i64 20, !25, i64 24, !8, i64 28, !8, i64 36, !8, i64 42, !8, i64 43, !12, i64 44, !12, i64 46, !25, i64 48, !25, i64 52, !54, i64 56, !25, i64 64, !25, i64 68, !12, i64 72, !12, i64 74, !12, i64 76, !12, i64 78, !12, i64 80, !12, i64 82, !7, i64 88, !7, i64 96, !12, i64 104, !12, i64 106, !25, i64 108, !7, i64 112}
!54 = !{!"double", !8, i64 0}
!55 = !{!53, !25, i64 24}
!56 = !{!57, !7, i64 0}
!57 = !{!"RenderJob", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !25, i64 48, !8, i64 52, !8, i64 53, !8, i64 54, !7, i64 56, !58, i64 64, !8, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !25, i64 144, !25, i64 148, !7, i64 152, !35, i64 160, !36, i64 320, !8, i64 384}
!58 = !{!"ImageUser", !7, i64 0, !25, i64 8, !25, i64 12, !25, i64 16, !25, i64 20, !8, i64 24, !8, i64 25, !8, i64 26, !8, i64 27, !12, i64 28, !12, i64 30, !12, i64 32, !12, i64 34, !25, i64 36}
!59 = !{!57, !7, i64 8}
!60 = !{!57, !7, i64 16}
!61 = !{!57, !7, i64 32}
!62 = !{!57, !7, i64 40}
!63 = !{!57, !25, i64 48}
!64 = !{!57, !8, i64 53}
!65 = !{!57, !8, i64 54}
!66 = !{!57, !7, i64 64}
!67 = !{!57, !8, i64 90}
!68 = !{!57, !7, i64 136}
!69 = !{!57, !25, i64 144}
!70 = !{!57, !25, i64 148}
!71 = !{!57, !7, i64 152}
!72 = !{!73, !7, i64 96}
!73 = !{!"ScrArea", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !39, i64 56, !8, i64 72, !8, i64 73, !12, i64 74, !12, i64 76, !12, i64 78, !12, i64 80, !12, i64 82, !12, i64 84, !8, i64 86, !8, i64 87, !7, i64 88, !10, i64 96, !10, i64 112, !10, i64 128, !10, i64 144}
!74 = !{!75, !12, i64 78}
!75 = !{!"SpaceImage", !7, i64 0, !7, i64 8, !10, i64 16, !25, i64 32, !25, i64 36, !7, i64 40, !58, i64 48, !7, i64 88, !76, i64 96, !77, i64 5360, !7, i64 10520, !8, i64 10528, !26, i64 10536, !26, i64 10540, !26, i64 10544, !26, i64 10548, !26, i64 10552, !8, i64 10556, !8, i64 10557, !12, i64 10558, !12, i64 10560, !12, i64 10562, !8, i64 10564, !8, i64 10565, !8, i64 10566, !8, i64 10567, !78, i64 10568}
!76 = !{!"Scopes", !25, i64 0, !25, i64 4, !25, i64 8, !26, i64 12, !25, i64 16, !26, i64 20, !26, i64 24, !25, i64 28, !26, i64 32, !25, i64 36, !8, i64 40, !77, i64 64, !7, i64 5224, !7, i64 5232, !7, i64 5240, !7, i64 5248, !25, i64 5256, !25, i64 5260}
!77 = !{!"Histogram", !25, i64 0, !25, i64 4, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 3080, !8, i64 4104, !26, i64 5128, !26, i64 5132, !12, i64 5136, !12, i64 5138, !25, i64 5140, !8, i64 5144}
!78 = !{!"MaskSpaceInfo", !7, i64 0, !8, i64 8, !8, i64 9, !8, i64 10, !8, i64 11}
!79 = !{!31, !25, i64 232}
!80 = !{!24, !25, i64 224}
!81 = !{!31, !7, i64 128}
!82 = !{!57, !8, i64 52}
!83 = !{!24, !7, i64 152}
!84 = !{!31, !8, i64 794}
!85 = !{!57, !8, i64 384}
!86 = !{!57, !7, i64 56}
!87 = !{!57, !7, i64 24}
!88 = !{!51, !8, i64 2080}
!89 = !{!22, !7, i64 96}
!90 = !{!51, !8, i64 2090}
!91 = !{!53, !12, i64 16}
!92 = !{!31, !25, i64 684}
!93 = !{!31, !25, i64 688}
!94 = !{!31, !25, i64 748}
!95 = !{!31, !25, i64 680}
!96 = !{!97, !25, i64 600}
!97 = !{!"RenderEngine", !7, i64 0, !7, i64 8, !25, i64 16, !7, i64 24, !25, i64 32, !25, i64 36, !25, i64 40, !7, i64 48, !10, i64 56, !8, i64 72, !25, i64 584, !25, i64 588, !7, i64 592, !25, i64 600, !25, i64 604, !27, i64 608, !39, i64 624, !8, i64 640, !25, i64 704, !25, i64 708}
!98 = !{!99, !12, i64 208}
!99 = !{!"ARegion", !7, i64 0, !7, i64 8, !100, i64 16, !39, i64 176, !39, i64 192, !12, i64 208, !12, i64 210, !12, i64 212, !12, i64 214, !12, i64 216, !12, i64 218, !26, i64 220, !12, i64 224, !12, i64 226, !12, i64 228, !12, i64 230, !12, i64 232, !12, i64 234, !12, i64 236, !12, i64 238, !7, i64 240, !10, i64 248, !10, i64 264, !10, i64 280, !10, i64 296, !10, i64 312, !10, i64 328, !10, i64 344, !7, i64 360, !7, i64 368, !7, i64 376}
!100 = !{!"View2D", !27, i64 0, !27, i64 16, !39, i64 32, !39, i64 48, !39, i64 64, !8, i64 80, !8, i64 88, !26, i64 96, !26, i64 100, !12, i64 104, !12, i64 106, !12, i64 108, !12, i64 110, !12, i64 112, !12, i64 114, !12, i64 116, !12, i64 118, !12, i64 120, !12, i64 122, !12, i64 124, !12, i64 126, !7, i64 128, !25, i64 136, !25, i64 140, !7, i64 144, !7, i64 152}
!101 = !{!99, !12, i64 210}
!102 = !{!31, !25, i64 4256}
!103 = !{i8 0, i8 2}
!104 = !{!105, !7, i64 24}
!105 = !{!"RenderPreview", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !8, i64 88, !25, i64 152, !25, i64 156, !8, i64 160}
!106 = distinct !{!106, !107}
!107 = !{!"llvm.loop.mustprogress"}
!108 = !{!105, !7, i64 32}
!109 = !{!105, !7, i64 80}
!110 = !{!105, !7, i64 40}
!111 = !{!105, !7, i64 48}
!112 = !{!105, !7, i64 56}
!113 = !{!105, !7, i64 64}
!114 = !{!105, !7, i64 72}
!115 = !{!105, !25, i64 156}
!116 = !{!105, !25, i64 152}
!117 = !{!31, !25, i64 800}
!118 = !{!105, !8, i64 160}
!119 = !{!8, !8, i64 0}
!120 = !{!97, !25, i64 16}
!121 = !{!97, !7, i64 48}
!122 = !{!123, !7, i64 40}
!123 = !{!"RenderResult", !7, i64 0, !7, i64 8, !25, i64 16, !25, i64 20, !12, i64 24, !12, i64 26, !7, i64 32, !7, i64 40, !7, i64 48, !39, i64 56, !25, i64 72, !25, i64 76, !10, i64 80, !39, i64 96, !7, i64 112, !25, i64 120, !25, i64 124, !25, i64 128, !7, i64 136}
!124 = !{!31, !26, i64 924}
!125 = !{i32 0, i32 2}
!126 = !{!25, !25, i64 0}
!127 = !{!39, !25, i64 0}
!128 = !{!12, !12, i64 0}
!129 = !{!123, !25, i64 72}
!130 = !{!131, !12, i64 8970}
!131 = !{!"UserDef", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12, !25, i64 16, !8, i64 20, !8, i64 788, !8, i64 1556, !8, i64 2580, !8, i64 3348, !8, i64 4116, !8, i64 4884, !8, i64 5652, !8, i64 6420, !8, i64 7444, !25, i64 8468, !12, i64 8472, !12, i64 8474, !12, i64 8476, !12, i64 8478, !12, i64 8480, !12, i64 8482, !25, i64 8484, !25, i64 8488, !25, i64 8492, !12, i64 8496, !12, i64 8498, !25, i64 8500, !25, i64 8504, !25, i64 8508, !25, i64 8512, !25, i64 8516, !25, i64 8520, !25, i64 8524, !12, i64 8528, !12, i64 8530, !12, i64 8532, !12, i64 8534, !10, i64 8536, !10, i64 8552, !10, i64 8568, !10, i64 8584, !10, i64 8600, !10, i64 8616, !10, i64 8632, !8, i64 8648, !12, i64 8712, !12, i64 8714, !12, i64 8716, !12, i64 8718, !12, i64 8720, !12, i64 8722, !12, i64 8724, !12, i64 8726, !8, i64 8728, !12, i64 8896, !12, i64 8898, !12, i64 8900, !12, i64 8902, !12, i64 8904, !12, i64 8906, !12, i64 8908, !12, i64 8910, !25, i64 8912, !25, i64 8916, !12, i64 8920, !12, i64 8922, !12, i64 8924, !12, i64 8926, !12, i64 8928, !12, i64 8930, !12, i64 8932, !12, i64 8934, !12, i64 8936, !12, i64 8938, !8, i64 8940, !8, i64 8941, !8, i64 8942, !8, i64 8943, !12, i64 8944, !12, i64 8946, !12, i64 8948, !12, i64 8950, !12, i64 8952, !12, i64 8954, !26, i64 8956, !26, i64 8960, !25, i64 8964, !12, i64 8968, !12, i64 8970, !26, i64 8972, !12, i64 8976, !12, i64 8978, !12, i64 8980, !12, i64 8982, !132, i64 8984, !8, i64 9760, !8, i64 9772, !12, i64 9788, !8, i64 9790, !8, i64 9791, !8, i64 9792, !8, i64 9872, !25, i64 10896, !25, i64 10900, !26, i64 10904, !26, i64 10908, !25, i64 10912, !12, i64 10916, !12, i64 10918, !12, i64 10920, !12, i64 10922, !12, i64 10924, !12, i64 10926, !133, i64 10928}
!132 = !{!"ColorBand", !12, i64 0, !12, i64 2, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8}
!133 = !{!"WalkNavigation", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !26, i64 16, !26, i64 20, !12, i64 24, !8, i64 26}
!134 = !{!123, !25, i64 16}
!135 = !{!123, !25, i64 20}
!136 = !{!137, !8, i64 809}
!137 = !{!"RegionView3D", !8, i64 0, !8, i64 64, !8, i64 128, !8, i64 192, !8, i64 256, !8, i64 320, !8, i64 384, !8, i64 448, !8, i64 544, !7, i64 640, !7, i64 648, !7, i64 656, !7, i64 664, !7, i64 672, !7, i64 680, !7, i64 688, !8, i64 696, !8, i64 760, !26, i64 776, !26, i64 780, !26, i64 784, !26, i64 788, !8, i64 792, !26, i64 804, !8, i64 808, !8, i64 809, !8, i64 810, !8, i64 811, !8, i64 812, !8, i64 813, !8, i64 816, !12, i64 824, !12, i64 826, !8, i64 828, !12, i64 844, !12, i64 846, !26, i64 848, !8, i64 852, !26, i64 864, !8, i64 868}
!138 = !{!24, !12, i64 242}
!139 = !{!27, !26, i64 8}
!140 = !{!26, !26, i64 0}
!141 = !{!39, !25, i64 4}
!142 = !{!39, !25, i64 12}
!143 = !{!39, !25, i64 8}
!144 = distinct !{!144, !107}
!145 = !{!73, !8, i64 72}
!146 = !{!99, !12, i64 214}
!147 = !{!99, !7, i64 376}
!148 = !{!137, !7, i64 656}
!149 = distinct !{!149, !107}
!150 = distinct !{!150, !107}
!151 = !{!97, !25, i64 604}
!152 = !{!105, !7, i64 8}
!153 = !{!105, !7, i64 16}
!154 = distinct !{!154, !107}
!155 = !{!156, !12, i64 36}
!156 = !{!"RenderStats", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12, !25, i64 16, !25, i64 20, !25, i64 24, !12, i64 28, !12, i64 30, !12, i64 32, !12, i64 34, !12, i64 36, !12, i64 38, !8, i64 40, !54, i64 48, !54, i64 56, !7, i64 64, !7, i64 72, !8, i64 80, !26, i64 144, !26, i64 148}
!157 = !{i64 0, i64 1, !119, i64 1, i64 1, !119, i64 2, i64 1, !119, i64 3, i64 1, !119, i64 4, i64 1, !119, i64 5, i64 1, !119, i64 6, i64 1, !119, i64 7, i64 1, !119, i64 8, i64 2, !128, i64 10, i64 2, !128, i64 12, i64 4, !140, i64 16, i64 1, !119, i64 17, i64 1, !119, i64 18, i64 6, !119, i64 24, i64 4, !126, i64 28, i64 4, !126, i64 32, i64 64, !119, i64 96, i64 64, !119, i64 160, i64 4, !140, i64 164, i64 4, !140, i64 168, i64 8, !20, i64 176, i64 8, !20, i64 184, i64 64, !119, i64 248, i64 8, !20, i64 256, i64 8, !20, i64 264, i64 4, !126, i64 268, i64 4, !126, i64 272, i64 4, !126, i64 276, i64 4, !126, i64 280, i64 4, !126, i64 284, i64 4, !126, i64 288, i64 4, !126, i64 292, i64 4, !126, i64 296, i64 4, !126, i64 300, i64 4, !126, i64 304, i64 4, !126, i64 308, i64 4, !126, i64 312, i64 2, !128, i64 314, i64 2, !128, i64 316, i64 4, !126, i64 320, i64 4, !126, i64 324, i64 4, !126, i64 328, i64 4, !126, i64 332, i64 4, !126, i64 336, i64 4, !126, i64 340, i64 4, !126, i64 344, i64 4, !126, i64 348, i64 4, !126, i64 352, i64 4, !126, i64 356, i64 4, !126, i64 360, i64 4, !140, i64 364, i64 4, !126, i64 368, i64 4, !126, i64 372, i64 4, !126, i64 376, i64 4, !126, i64 380, i64 4, !126, i64 384, i64 4, !126, i64 388, i64 4, !126, i64 392, i64 8, !20, i64 400, i64 4, !126, i64 404, i64 4, !126, i64 408, i64 4, !126, i64 412, i64 4, !140, i64 416, i64 4, !126, i64 420, i64 4, !126, i64 424, i64 4, !126, i64 428, i64 4, !126, i64 432, i64 2, !128, i64 434, i64 2, !128, i64 436, i64 4, !140, i64 440, i64 4, !140, i64 444, i64 4, !140, i64 448, i64 4, !140, i64 452, i64 4, !140, i64 456, i64 2, !128, i64 458, i64 2, !128, i64 460, i64 2, !128, i64 462, i64 2, !128, i64 464, i64 2, !128, i64 466, i64 2, !128, i64 468, i64 4, !126, i64 472, i64 2, !128, i64 474, i64 2, !128, i64 476, i64 2, !128, i64 478, i64 2, !128, i64 480, i64 2, !128, i64 482, i64 2, !128, i64 484, i64 4, !126, i64 488, i64 4, !126, i64 492, i64 2, !128, i64 494, i64 2, !128, i64 496, i64 4, !126, i64 500, i64 4, !126, i64 504, i64 2, !128, i64 506, i64 2, !128, i64 508, i64 2, !128, i64 510, i64 2, !128, i64 512, i64 2, !128, i64 514, i64 1, !119, i64 515, i64 1, !119, i64 516, i64 4, !126, i64 520, i64 4, !126, i64 524, i64 4, !126, i64 528, i64 2, !128, i64 530, i64 2, !128, i64 532, i64 2, !128, i64 534, i64 2, !128, i64 536, i64 2, !128, i64 538, i64 2, !128, i64 540, i64 2, !128, i64 542, i64 2, !128, i64 544, i64 4, !140, i64 548, i64 4, !140, i64 552, i64 4, !140, i64 556, i64 4, !140, i64 560, i64 4, !140, i64 564, i64 4, !140, i64 568, i64 4, !140, i64 572, i64 4, !140, i64 576, i64 4, !126, i64 580, i64 4, !126, i64 584, i64 4, !126, i64 588, i64 4, !126, i64 592, i64 8, !20, i64 600, i64 8, !20, i64 608, i64 2, !128, i64 610, i64 2, !128, i64 612, i64 4, !140, i64 616, i64 4, !140, i64 620, i64 4, !140, i64 624, i64 4, !140, i64 628, i64 4, !126, i64 632, i64 4, !140, i64 636, i64 4, !140, i64 640, i64 4, !140, i64 644, i64 4, !140, i64 648, i64 2, !128, i64 650, i64 2, !128, i64 652, i64 2, !128, i64 654, i64 2, !128, i64 656, i64 2, !128, i64 658, i64 2, !128, i64 660, i64 4, !140, i64 664, i64 4, !140, i64 668, i64 2, !128, i64 670, i64 2, !128, i64 672, i64 4, !140, i64 676, i64 4, !140, i64 680, i64 1024, !119, i64 1704, i64 4, !126, i64 1708, i64 2, !128, i64 1710, i64 2, !128, i64 1712, i64 768, !119, i64 2480, i64 16, !119, i64 2496, i64 16, !119, i64 2512, i64 1, !119, i64 2513, i64 1, !119, i64 2514, i64 1, !119, i64 2515, i64 5, !119, i64 2520, i64 4, !126, i64 2524, i64 2, !128, i64 2526, i64 2, !128, i64 2528, i64 4, !140, i64 2532, i64 4, !140, i64 2536, i64 2, !128, i64 2538, i64 2, !128, i64 2540, i64 4, !140, i64 2544, i64 2, !128, i64 2546, i64 2, !128, i64 2548, i64 4, !126, i64 2552, i64 2, !128, i64 2554, i64 2, !128, i64 2556, i64 2, !128, i64 2558, i64 2, !128, i64 2560, i64 4, !140, i64 2564, i64 4, !140, i64 2568, i64 8, !20, i64 2576, i64 4, !126, i64 2580, i64 4, !140, i64 2584, i64 32, !119, i64 2616, i64 1, !119, i64 2617, i64 1, !119, i64 2618, i64 1, !119, i64 2619, i64 1, !119, i64 2620, i64 1, !119, i64 2621, i64 1, !119, i64 2622, i64 1, !119, i64 2623, i64 1, !119, i64 2624, i64 2, !128, i64 2626, i64 2, !128, i64 2628, i64 4, !140, i64 2632, i64 1, !119, i64 2633, i64 1, !119, i64 2634, i64 6, !119, i64 2640, i64 4, !126, i64 2644, i64 4, !126, i64 2648, i64 64, !119, i64 2712, i64 64, !119, i64 2776, i64 4, !140, i64 2780, i64 4, !140, i64 2784, i64 8, !20, i64 2792, i64 8, !20, i64 2800, i64 64, !119, i64 2864, i64 1024, !119, i64 3888, i64 2, !128, i64 3890, i64 2, !128, i64 3892, i64 2, !128, i64 3894, i64 2, !128, i64 3896, i64 4, !140, i64 3900, i64 4, !140, i64 3904, i64 3, !119, i64 3907, i64 1, !119, i64 3908, i64 1, !119, i64 3909, i64 3, !119, i64 3912, i64 64, !119, i64 3976, i64 4, !126, i64 3980, i64 4, !126}
!158 = !{!33, !25, i64 520}
!159 = !{!33, !25, i64 516}
!160 = !{!161, !12, i64 98}
!161 = !{!"Object", !32, i64 0, !7, i64 120, !7, i64 128, !12, i64 136, !12, i64 138, !25, i64 140, !25, i64 144, !25, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !162, i64 312, !7, i64 360, !10, i64 368, !10, i64 384, !10, i64 400, !10, i64 416, !25, i64 432, !25, i64 436, !7, i64 440, !7, i64 448, !25, i64 456, !25, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !26, i64 616, !26, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !25, i64 944, !12, i64 948, !12, i64 950, !12, i64 952, !12, i64 954, !12, i64 956, !12, i64 958, !12, i64 960, !12, i64 962, !12, i64 964, !8, i64 966, !8, i64 967, !25, i64 968, !25, i64 972, !25, i64 976, !25, i64 980, !25, i64 984, !26, i64 988, !26, i64 992, !26, i64 996, !26, i64 1000, !26, i64 1004, !26, i64 1008, !26, i64 1012, !26, i64 1016, !26, i64 1020, !26, i64 1024, !26, i64 1028, !26, i64 1032, !12, i64 1036, !12, i64 1038, !12, i64 1040, !8, i64 1042, !8, i64 1043, !12, i64 1044, !8, i64 1046, !8, i64 1047, !26, i64 1048, !26, i64 1052, !10, i64 1056, !10, i64 1072, !10, i64 1088, !10, i64 1104, !26, i64 1120, !12, i64 1124, !12, i64 1126, !8, i64 1128, !25, i64 1144, !25, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !12, i64 1162, !8, i64 1164, !10, i64 1176, !10, i64 1192, !10, i64 1208, !10, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !12, i64 1266, !26, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !48, i64 1304, !48, i64 1312, !25, i64 1320, !25, i64 1324, !10, i64 1328, !10, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !10, i64 1400, !7, i64 1416}
!162 = !{!"bAnimVizSettings", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !25, i64 32, !25, i64 36, !25, i64 40, !25, i64 44}
!163 = distinct !{!163, !107}
!164 = !{!165, !25, i64 16}
!165 = !{!"Base", !7, i64 0, !7, i64 8, !25, i64 16, !25, i64 20, !25, i64 24, !12, i64 28, !12, i64 30, !7, i64 32}
!166 = !{!165, !7, i64 32}
!167 = distinct !{!167, !107}
!168 = distinct !{!168, !107}
!169 = !{!57, !7, i64 112}
!170 = !{!57, !7, i64 120}
!171 = !{!57, !7, i64 128}
!172 = !{!51, !7, i64 0}
!173 = !{!31, !25, i64 796}
!174 = !{!175, !7, i64 1552}
!175 = !{!"Main", !7, i64 0, !7, i64 8, !8, i64 16, !12, i64 1040, !12, i64 1042, !12, i64 1044, !12, i64 1046, !48, i64 1048, !8, i64 1056, !12, i64 1072, !7, i64 1080, !10, i64 1088, !10, i64 1104, !10, i64 1120, !10, i64 1136, !10, i64 1152, !10, i64 1168, !10, i64 1184, !10, i64 1200, !10, i64 1216, !10, i64 1232, !10, i64 1248, !10, i64 1264, !10, i64 1280, !10, i64 1296, !10, i64 1312, !10, i64 1328, !10, i64 1344, !10, i64 1360, !10, i64 1376, !10, i64 1392, !10, i64 1408, !10, i64 1424, !10, i64 1440, !10, i64 1456, !10, i64 1472, !10, i64 1488, !10, i64 1504, !10, i64 1520, !10, i64 1536, !10, i64 1552, !10, i64 1568, !10, i64 1584, !10, i64 1600, !10, i64 1616, !8, i64 1632, !7, i64 1888, !7, i64 1896}
!176 = !{!31, !7, i64 248}
!177 = !{!31, !7, i64 872}
!178 = !{!31, !7, i64 880}
!179 = !{!57, !8, i64 104}
!180 = !{!181, !25, i64 292}
!181 = !{!"ImBuf", !7, i64 0, !7, i64 8, !25, i64 16, !25, i64 20, !8, i64 24, !25, i64 28, !25, i64 32, !25, i64 36, !7, i64 40, !7, i64 48, !8, i64 56, !25, i64 72, !25, i64 76, !25, i64 80, !25, i64 84, !7, i64 88, !7, i64 96, !7, i64 104, !26, i64 112, !8, i64 120, !25, i64 280, !25, i64 284, !25, i64 288, !25, i64 292, !7, i64 296, !7, i64 304, !25, i64 312, !8, i64 316, !8, i64 1340, !7, i64 2368, !25, i64 2376, !7, i64 2384, !25, i64 2392, !25, i64 2396, !7, i64 2400, !7, i64 2408, !7, i64 2416, !7, i64 2424, !25, i64 2432, !39, i64 2436, !182, i64 2456}
!182 = !{!"DDSData", !25, i64 0, !25, i64 4, !7, i64 8, !25, i64 16}
!183 = !{!31, !25, i64 240}
!184 = distinct !{!184, !107}
!185 = !{!186, !12, i64 1240}
!186 = !{!"Image", !32, i64 0, !8, i64 120, !7, i64 1144, !7, i64 1152, !7, i64 1160, !7, i64 1168, !8, i64 1176, !12, i64 1240, !12, i64 1242, !12, i64 1244, !12, i64 1246, !12, i64 1248, !12, i64 1250, !25, i64 1252, !12, i64 1256, !12, i64 1258, !12, i64 1260, !12, i64 1262, !12, i64 1264, !12, i64 1266, !25, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !26, i64 1296, !25, i64 1300, !12, i64 1304, !12, i64 1306, !25, i64 1308, !25, i64 1312, !8, i64 1316, !8, i64 1317, !12, i64 1318, !8, i64 1320, !26, i64 1336, !26, i64 1340, !49, i64 1344, !8, i64 1408, !8, i64 1409, !8, i64 1416}
!187 = !{!186, !12, i64 1242}
!188 = !{!123, !25, i64 120}
!189 = !{!181, !25, i64 28}
!190 = !{!123, !7, i64 136}
!191 = distinct !{!191, !107}
!192 = distinct !{!192, !107}
!193 = !{!194, !7, i64 24}
!194 = !{!"wmWindow", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !8, i64 40, !12, i64 104, !12, i64 106, !12, i64 108, !12, i64 110, !12, i64 112, !12, i64 114, !12, i64 116, !12, i64 118, !12, i64 120, !12, i64 122, !12, i64 124, !12, i64 126, !25, i64 128, !12, i64 132, !12, i64 134, !7, i64 136, !7, i64 144, !7, i64 152, !25, i64 160, !25, i64 164, !7, i64 168, !10, i64 176, !10, i64 192, !10, i64 208, !10, i64 224, !10, i64 240}
!195 = distinct !{!195, !107}
!196 = distinct !{!196, !107}
!197 = !{!75, !7, i64 40}
!198 = distinct !{!198, !107}
!199 = distinct !{!199, !107}
!200 = !{!123, !7, i64 112}
!201 = !{!123, !12, i64 24}
!202 = !{!123, !25, i64 56}
!203 = !{!181, !25, i64 16}
!204 = !{!123, !25, i64 64}
!205 = !{!181, !25, i64 20}
!206 = !{!58, !12, i64 32}
!207 = !{!123, !7, i64 32}
!208 = !{!209, !7, i64 136}
!209 = !{!"RenderLayer", !7, i64 0, !7, i64 8, !8, i64 16, !25, i64 92, !25, i64 96, !25, i64 100, !25, i64 104, !25, i64 108, !25, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !25, i64 168, !25, i64 172, !7, i64 176, !10, i64 184}
!210 = !{!181, !7, i64 48}
!211 = !{!156, !8, i64 40}
!212 = !{!156, !54, i64 56}
!213 = !{!156, !7, i64 64}
!214 = !{!156, !54, i64 48}
!215 = !{!156, !7, i64 72}
!216 = !{!156, !25, i64 8}
!217 = !{!156, !25, i64 4}
!218 = !{!156, !25, i64 16}
!219 = !{!156, !25, i64 12}
!220 = !{!156, !25, i64 20}
!221 = !{!156, !26, i64 148}
!222 = !{!156, !26, i64 144}
!223 = !{!156, !12, i64 28}
!224 = !{!156, !12, i64 30}
!225 = !{!156, !12, i64 38}
!226 = !{!51, !25, i64 2100}
!227 = !{!31, !7, i64 176}
!228 = !{!97, !25, i64 704}
!229 = !{!97, !25, i64 708}
!230 = !{i64 0, i64 4, !140, i64 4, i64 4, !140, i64 8, i64 4, !140, i64 12, i64 4, !140}
!231 = !{i64 0, i64 4, !126, i64 4, i64 4, !126, i64 8, i64 4, !126, i64 12, i64 4, !126}
!232 = !{!97, !25, i64 584}
!233 = !{!97, !25, i64 588}
!234 = !{!27, !26, i64 4}
!235 = !{!27, !26, i64 0}
!236 = !{!27, !26, i64 12}
