; ModuleID = 'blender/source/blender/editors/render/render_opengl.c'
source_filename = "blender/source/blender/editors/render/render_opengl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.OGLRender = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, %struct.ImageUser, ptr, i32, i32, i32, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
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
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.RenderResult = type { ptr, ptr, i32, i32, i16, i16, ptr, ptr, ptr, %struct.rcti, i32, i32, %struct.ListBase, %struct.rcti, ptr, i32, i32, i32, ptr }
%struct.bMovieHandle = type { ptr, ptr, ptr, ptr, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.SeqRenderData = type { ptr, ptr, ptr, i32, i32, i32, i32, float, i8, i8 }
%struct.SpaceSeq = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, float, float, i16, i16, i16, i16, i32, float, i32, i32, ptr, %struct.SequencerScopes }
%struct.SequencerScopes = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }

@.str = private unnamed_addr constant [14 x i8] c"OpenGL Render\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"OpenGL render active viewport\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"RENDER_OT_opengl\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"animation\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Animation\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"Render files from the animation range of this scene\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"sequencer\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"Sequencer\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"Render using the sequencer's OpenGL display\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"write_still\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"Write Image\00", align 1
@.str.11 = private unnamed_addr constant [82 x i8] c"Save rendered the image to the output path (used only when animation is disabled)\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"view_context\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"View Context\00", align 1
@.str.14 = private unnamed_addr constant [63 x i8] c"Use the current 3D view for rendering, else use scene settings\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.15 = private unnamed_addr constant [64 x i8] c"Cannot use OpenGL render in background mode (no opengl context)\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"Scene has no camera\00", align 1
@.str.17 = private unnamed_addr constant [61 x i8] c"Cannot write a single file with an animation format selected\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"Failed to create OpenGL off-screen buffer, %s\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.19 = private unnamed_addr constant [10 x i8] c"OGLRender\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"Render Result\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"screen_opengl_render_init rect\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.22 = private unnamed_addr constant [15 x i8] c"offscreen rect\00", align 1
@screen_opengl_render_apply.jit_ofs = internal global [32 x [2 x float]] zeroinitializer, align 16
@.str.23 = private unnamed_addr constant [7 x i8] c"accum1\00", align 1
@__const.screen_opengl_render_apply.err_out = private unnamed_addr constant [256 x i8] c"unknown\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@stderr = external local_unnamed_addr global ptr, align 8
@.str.24 = private unnamed_addr constant [30 x i8] c"%s: failed to get buffer, %s\0A\00", align 1
@__func__.screen_opengl_render_apply = private unnamed_addr constant [27 x i8] c"screen_opengl_render_apply\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"OpenGL Render written to '%s'\0A\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"OpenGL Render failed to write '%s'\0A\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"Skipping existing frame \22%s\22\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"Append frame %d\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"Appended frame: %d\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"Write error: cannot save %s\0A\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"Write error: cannot save %s\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"Saved: %s\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"Saved file: %s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @RENDER_OT_opengl(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @screen_opengl_render_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @screen_opengl_render_exec, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @screen_opengl_render_modal, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @screen_opengl_render_cancel, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive, ptr %8, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #8
  tail call void @RNA_def_property_flag(ptr noundef %11, i32 noundef 268435456) #8
  %12 = load ptr, ptr %9, align 8, !tbaa !49
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #8
  tail call void @RNA_def_property_flag(ptr noundef %13, i32 noundef 268435456) #8
  %14 = load ptr, ptr %9, align 8, !tbaa !49
  %15 = tail call ptr @RNA_def_boolean(ptr noundef %14, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #8
  tail call void @RNA_def_property_flag(ptr noundef %15, i32 noundef 268435456) #8
  %16 = load ptr, ptr %9, align 8, !tbaa !49
  %17 = tail call ptr @RNA_def_boolean(ptr noundef %16, ptr noundef nonnull @.str.12, i32 noundef 1, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #8
  tail call void @RNA_def_property_flag(ptr noundef %17, i32 noundef 268435456) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @screen_opengl_render_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %5, ptr noundef nonnull @.str.3) #8
  %7 = tail call fastcc zeroext i8 @screen_opengl_render_init(ptr noundef %0, ptr noundef %1), !range !52
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %31, label %9

9:                                                ; preds = %3
  %10 = and i32 %6, 255
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = tail call fastcc i32 @screen_opengl_render_anim_initialize(ptr noundef %0, ptr noundef %1), !range !53
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %12, %9
  %16 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !54
  %18 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %19 = load i32, ptr %18, align 4, !tbaa !55
  %20 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !59
  %22 = tail call ptr @render_view_open(ptr noundef %0, i32 noundef %19, i32 noundef %21) #8
  %23 = tail call ptr @CTX_wm_window(ptr noundef %0) #8
  %24 = getelementptr inbounds %struct.OGLRender, ptr %17, i64 0, i32 21
  store ptr %23, ptr %24, align 8, !tbaa !60
  %25 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #8
  %26 = getelementptr inbounds %struct.OGLRender, ptr %17, i64 0, i32 20
  %27 = load ptr, ptr %26, align 8, !tbaa !63
  %28 = load ptr, ptr %24, align 8, !tbaa !60
  %29 = tail call ptr @WM_event_add_timer(ptr noundef %27, ptr noundef %28, i32 noundef 272, double noundef 0x3F847AE140000000) #8
  %30 = getelementptr inbounds %struct.OGLRender, ptr %17, i64 0, i32 22
  store ptr %29, ptr %30, align 8, !tbaa !64
  br label %31

31:                                               ; preds = %12, %3, %15
  %32 = phi i32 [ 1, %15 ], [ 2, %3 ], [ 2, %12 ]
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @screen_opengl_render_exec(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = tail call i32 @RNA_boolean_get(ptr noundef %4, ptr noundef nonnull @.str.3) #8
  %6 = tail call fastcc zeroext i8 @screen_opengl_render_init(ptr noundef %0, ptr noundef %1), !range !52
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %2
  %9 = and i32 %5, 255
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !54
  tail call fastcc void @screen_opengl_render_apply(ptr noundef %13)
  %14 = load ptr, ptr %12, align 8, !tbaa !54
  tail call fastcc void @screen_opengl_render_end(ptr noundef %0, ptr noundef %14)
  br label %24

15:                                               ; preds = %8
  %16 = tail call fastcc i32 @screen_opengl_render_anim_initialize(ptr noundef %0, ptr noundef %1), !range !53
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15, %18
  %19 = tail call fastcc zeroext i8 @screen_opengl_render_anim_step(ptr noundef %0, ptr noundef %1), !range !52
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %18, !llvm.loop !65

21:                                               ; preds = %18
  br i1 %17, label %24, label %22

22:                                               ; preds = %21
  %23 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67895296, ptr noundef %23) #8
  br label %24

24:                                               ; preds = %15, %2, %21, %22, %11
  %25 = phi i32 [ 4, %22 ], [ 2, %21 ], [ 4, %11 ], [ 2, %2 ], [ 2, %15 ]
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @screen_opengl_render_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.3) #8
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !68
  switch i16 %10, label %31 [
    i16 218, label %11
    i16 272, label %13
  ]

11:                                               ; preds = %3
  %12 = load ptr, ptr %4, align 8, !tbaa !54
  tail call fastcc void @screen_opengl_render_end(ptr noundef %0, ptr noundef %12)
  br label %31

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.OGLRender, ptr %5, i64 0, i32 22
  %15 = load ptr, ptr %14, align 8, !tbaa !64
  %16 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %17 = load ptr, ptr %16, align 8, !tbaa !69
  %18 = icmp eq ptr %15, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.OGLRender, ptr %5, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !70
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67895296, ptr noundef %21) #8
  %22 = and i32 %8, 255
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load ptr, ptr %4, align 8, !tbaa !54
  tail call fastcc void @screen_opengl_render_apply(ptr noundef %25)
  %26 = load ptr, ptr %4, align 8, !tbaa !54
  tail call fastcc void @screen_opengl_render_end(ptr noundef %0, ptr noundef %26)
  br label %31

27:                                               ; preds = %19
  %28 = tail call fastcc zeroext i8 @screen_opengl_render_anim_step(ptr noundef %0, ptr noundef %1), !range !52
  %29 = icmp eq i8 %28, 0
  %30 = select i1 %29, i32 4, i32 1
  br label %31

31:                                               ; preds = %27, %3, %13, %24, %11
  %32 = phi i32 [ 4, %24 ], [ 4, %11 ], [ 1, %13 ], [ 1, %3 ], [ %30, %27 ]
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal void @screen_opengl_render_cancel(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  tail call fastcc void @screen_opengl_render_end(ptr noundef %0, ptr noundef %4)
  ret void
}

declare i32 @ED_operator_screenactive(ptr noundef) #2

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @screen_opengl_render_init(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca [256 x i8], align 16
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #8
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #8
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %7 = tail call ptr @CTX_wm_area(ptr noundef %0) #8
  %8 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.12) #8
  %12 = trunc i32 %11 to i8
  %13 = load ptr, ptr %9, align 8, !tbaa !50
  %14 = tail call i32 @RNA_boolean_get(ptr noundef %13, ptr noundef nonnull @.str.3) #8
  %15 = load ptr, ptr %9, align 8, !tbaa !50
  %16 = tail call i32 @RNA_boolean_get(ptr noundef %15, ptr noundef nonnull @.str.6) #8
  %17 = trunc i32 %16 to i8
  %18 = load ptr, ptr %9, align 8, !tbaa !50
  %19 = tail call i32 @RNA_boolean_get(ptr noundef %18, ptr noundef nonnull @.str.9) #8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %3, ptr noundef nonnull align 16 dereferenceable(256) @__const.screen_opengl_render_apply.err_out, i64 256, i1 false)
  %20 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !71
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !73
  tail call void @BKE_report(ptr noundef %24, i32 noundef 32, ptr noundef nonnull @.str.15) #8
  br label %144

25:                                               ; preds = %2
  %26 = tail call zeroext i8 @WM_jobs_test(ptr noundef %4, ptr noundef %6, i32 noundef 2) #8
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %144

28:                                               ; preds = %25
  %29 = icmp eq i8 %17, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %28
  %31 = tail call zeroext i8 @ED_view3d_context_activate(ptr noundef %0) #8
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load ptr, ptr %9, align 8, !tbaa !50
  tail call void @RNA_boolean_set(ptr noundef %34, ptr noundef nonnull @.str.12, i32 noundef 0) #8
  br label %35

35:                                               ; preds = %33, %30
  %36 = phi i8 [ %12, %30 ], [ 0, %33 ]
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !74
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %44 = load ptr, ptr %43, align 8, !tbaa !73
  tail call void @BKE_report(ptr noundef %44, i32 noundef 32, ptr noundef nonnull @.str.16) #8
  br label %144

45:                                               ; preds = %28, %35, %38
  %46 = phi i1 [ false, %35 ], [ true, %38 ], [ true, %28 ]
  %47 = and i32 %14, 255
  %48 = icmp eq i32 %47, 0
  %49 = and i32 %19, 255
  %50 = icmp ne i32 %49, 0
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22
  %54 = load i8, ptr %53, align 8, !tbaa !96
  %55 = tail call zeroext i8 @BKE_imtype_is_movie(i8 noundef zeroext %54) #8
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %59 = load ptr, ptr %58, align 8, !tbaa !73
  tail call void @BKE_report(ptr noundef %59, i32 noundef 32, ptr noundef nonnull @.str.17) #8
  br label %144

60:                                               ; preds = %52, %45
  %61 = tail call ptr @CTX_wm_screen(ptr noundef %0) #8
  tail call void @WM_jobs_kill_all_except(ptr noundef %4, ptr noundef %61) #8
  %62 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22
  %63 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 30
  %64 = load i16, ptr %63, align 2, !tbaa !97
  %65 = sext i16 %64 to i32
  %66 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 33
  %67 = load i32, ptr %66, align 4, !tbaa !98
  %68 = mul nsw i32 %67, %65
  %69 = sdiv i32 %68, 100
  %70 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 34
  %71 = load i32, ptr %70, align 8, !tbaa !99
  %72 = mul nsw i32 %71, %65
  %73 = sdiv i32 %72, 100
  %74 = call ptr @GPU_offscreen_create(i32 noundef %69, i32 noundef %73, ptr noundef nonnull %3) #8
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %60
  %77 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %78 = load ptr, ptr %77, align 8, !tbaa !73
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %78, i32 noundef 32, ptr noundef nonnull @.str.18, ptr noundef nonnull %3) #8
  br label %144

79:                                               ; preds = %60
  %80 = load ptr, ptr @MEM_callocN, align 8, !tbaa !100
  %81 = call ptr %80(i64 noundef 200, ptr noundef nonnull @.str.19) #8
  %82 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %81, ptr %82, align 8, !tbaa !54
  %83 = getelementptr inbounds %struct.OGLRender, ptr %81, i64 0, i32 12
  store ptr %74, ptr %83, align 8, !tbaa !101
  %84 = getelementptr inbounds %struct.OGLRender, ptr %81, i64 0, i32 13
  store i32 %69, ptr %84, align 8, !tbaa !102
  %85 = getelementptr inbounds %struct.OGLRender, ptr %81, i64 0, i32 14
  store i32 %73, ptr %85, align 4, !tbaa !103
  %86 = call ptr @CTX_data_main(ptr noundef %0) #8
  store ptr %86, ptr %81, align 8, !tbaa !104
  %87 = getelementptr inbounds %struct.OGLRender, ptr %81, i64 0, i32 2
  store ptr %6, ptr %87, align 8, !tbaa !70
  %88 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 5
  %89 = load i32, ptr %88, align 8, !tbaa !105
  %90 = getelementptr inbounds %struct.OGLRender, ptr %81, i64 0, i32 18
  store i32 %89, ptr %90, align 8, !tbaa !106
  %91 = and i1 %48, %50
  %92 = zext i1 %91 to i32
  %93 = getelementptr inbounds %struct.OGLRender, ptr %81, i64 0, i32 15
  store i32 %92, ptr %93, align 8, !tbaa !107
  %94 = getelementptr inbounds %struct.OGLRender, ptr %81, i64 0, i32 8
  store i8 %17, ptr %94, align 8, !tbaa !108
  br i1 %29, label %98, label %95

95:                                               ; preds = %79
  %96 = call ptr @CTX_wm_space_seq(ptr noundef %0) #8
  %97 = getelementptr inbounds %struct.OGLRender, ptr %81, i64 0, i32 9
  store ptr %96, ptr %97, align 8, !tbaa !109
  br label %98

98:                                               ; preds = %95, %79
  %99 = getelementptr inbounds %struct.OGLRender, ptr %81, i64 0, i32 6
  store ptr %7, ptr %99, align 8, !tbaa !110
  %100 = getelementptr inbounds %struct.OGLRender, ptr %81, i64 0, i32 7
  store ptr %8, ptr %100, align 8, !tbaa !111
  br i1 %46, label %117, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.OGLRender, ptr %81, i64 0, i32 3
  %103 = getelementptr inbounds %struct.OGLRender, ptr %81, i64 0, i32 5
  %104 = call zeroext i8 @ED_view3d_context_user_region(ptr noundef %0, ptr noundef nonnull %102, ptr noundef nonnull %103) #8
  %105 = load ptr, ptr %103, align 8, !tbaa !112
  %106 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 30
  %107 = load ptr, ptr %106, align 8, !tbaa !113
  %108 = getelementptr inbounds %struct.OGLRender, ptr %81, i64 0, i32 4
  store ptr %107, ptr %108, align 8, !tbaa !116
  %109 = load ptr, ptr %87, align 8, !tbaa !70
  %110 = load ptr, ptr %102, align 8, !tbaa !117
  %111 = call i64 @ED_view3d_datamask(ptr noundef %109, ptr noundef %110) #8
  %112 = load ptr, ptr %87, align 8, !tbaa !70
  %113 = getelementptr inbounds %struct.Scene, ptr %112, i64 0, i32 43
  store i64 %111, ptr %113, align 8, !tbaa !118
  %114 = getelementptr inbounds %struct.Scene, ptr %112, i64 0, i32 42
  %115 = load i64, ptr %114, align 8, !tbaa !119
  %116 = or i64 %115, %111
  store i64 %116, ptr %114, align 8, !tbaa !119
  br label %117

117:                                              ; preds = %101, %98
  %118 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 4
  %119 = call ptr @RE_NewRender(ptr noundef nonnull %118) #8
  %120 = getelementptr inbounds %struct.OGLRender, ptr %81, i64 0, i32 1
  store ptr %119, ptr %120, align 8, !tbaa !120
  %121 = call ptr @BKE_image_verify_viewer(i32 noundef 4, ptr noundef nonnull @.str.20) #8
  %122 = getelementptr inbounds %struct.OGLRender, ptr %81, i64 0, i32 10
  store ptr %121, ptr %122, align 8, !tbaa !121
  call void @BKE_image_signal(ptr noundef %121, ptr noundef null, i32 noundef 1) #8
  %123 = load ptr, ptr %87, align 8, !tbaa !70
  %124 = load ptr, ptr %122, align 8, !tbaa !121
  call void @BKE_image_backup_render(ptr noundef %123, ptr noundef %124) #8
  %125 = getelementptr inbounds %struct.OGLRender, ptr %81, i64 0, i32 11
  store ptr %6, ptr %125, align 8, !tbaa !122
  %126 = getelementptr inbounds %struct.OGLRender, ptr %81, i64 0, i32 11, i32 7
  store i8 1, ptr %126, align 2, !tbaa !123
  %127 = load ptr, ptr %120, align 8, !tbaa !120
  call void @RE_InitState(ptr noundef %127, ptr noundef null, ptr noundef nonnull %62, ptr noundef null, i32 noundef %69, i32 noundef %73, ptr noundef null) #8
  %128 = load ptr, ptr %120, align 8, !tbaa !120
  %129 = call ptr @RE_AcquireResultWrite(ptr noundef %128) #8
  %130 = getelementptr inbounds %struct.RenderResult, ptr %129, i64 0, i32 7
  %131 = load ptr, ptr %130, align 8, !tbaa !124
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %140

133:                                              ; preds = %117
  %134 = load ptr, ptr @MEM_callocN, align 8, !tbaa !100
  %135 = sext i32 %69 to i64
  %136 = shl nsw i64 %135, 4
  %137 = sext i32 %73 to i64
  %138 = mul nsw i64 %136, %137
  %139 = call ptr %134(i64 noundef %138, ptr noundef nonnull @.str.21) #8
  store ptr %139, ptr %130, align 8, !tbaa !124
  br label %140

140:                                              ; preds = %133, %117
  %141 = load ptr, ptr %120, align 8, !tbaa !120
  call void @RE_ReleaseResult(ptr noundef %141) #8
  %142 = getelementptr inbounds %struct.OGLRender, ptr %81, i64 0, i32 20
  store ptr %4, ptr %142, align 8, !tbaa !63
  %143 = getelementptr inbounds %struct.OGLRender, ptr %81, i64 0, i32 21
  store ptr %5, ptr %143, align 8, !tbaa !60
  br label %144

144:                                              ; preds = %25, %140, %76, %57, %42, %22
  %145 = phi i8 [ 0, %22 ], [ 0, %57 ], [ 1, %140 ], [ 0, %76 ], [ 0, %42 ], [ 0, %25 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #8
  ret i8 %145
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @screen_opengl_render_anim_initialize(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.OGLRender, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !73
  %9 = getelementptr inbounds %struct.OGLRender, ptr %4, i64 0, i32 16
  store ptr %8, ptr %9, align 8, !tbaa !126
  %10 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22
  %11 = load i8, ptr %10, align 8, !tbaa !96
  %12 = tail call ptr @BKE_movie_handle_get(i8 noundef zeroext %11) #8
  %13 = getelementptr inbounds %struct.OGLRender, ptr %4, i64 0, i32 17
  store ptr %12, ptr %13, align 8, !tbaa !127
  %14 = load i8, ptr %10, align 8, !tbaa !96
  %15 = tail call zeroext i8 @BKE_imtype_is_movie(i8 noundef zeroext %14) #8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %2
  %18 = load ptr, ptr %13, align 8, !tbaa !127
  %19 = load ptr, ptr %18, align 8, !tbaa !128
  %20 = getelementptr inbounds %struct.OGLRender, ptr %4, i64 0, i32 13
  %21 = load i32, ptr %20, align 8, !tbaa !102
  %22 = getelementptr inbounds %struct.OGLRender, ptr %4, i64 0, i32 14
  %23 = load i32, ptr %22, align 4, !tbaa !103
  %24 = load ptr, ptr %9, align 8, !tbaa !126
  %25 = tail call i32 %19(ptr noundef %6, ptr noundef nonnull %10, i32 noundef %21, i32 noundef %23, ptr noundef %24) #8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  tail call fastcc void @screen_opengl_render_end(ptr noundef %0, ptr noundef %4)
  br label %42

28:                                               ; preds = %17, %2
  %29 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 5
  %30 = load i32, ptr %29, align 8, !tbaa !105
  %31 = getelementptr inbounds %struct.OGLRender, ptr %4, i64 0, i32 18
  store i32 %30, ptr %31, align 8, !tbaa !106
  %32 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 13
  %33 = load i16, ptr %32, align 8, !tbaa !130
  %34 = and i16 %33, 1
  %35 = icmp eq i16 %34, 0
  %36 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 9
  %37 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 6
  %38 = select i1 %35, ptr %37, ptr %36
  %39 = load i32, ptr %38, align 4, !tbaa !131
  %40 = getelementptr inbounds %struct.OGLRender, ptr %4, i64 0, i32 19
  store i32 %39, ptr %40, align 4, !tbaa !132
  %41 = load i32, ptr %38, align 4, !tbaa !131
  store i32 %41, ptr %29, align 8, !tbaa !105
  br label %42

42:                                               ; preds = %28, %27
  %43 = phi i32 [ 1, %28 ], [ 0, %27 ]
  ret i32 %43
}

declare ptr @render_view_open(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @WM_event_add_timer(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #2

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @WM_jobs_test(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @ED_view3d_context_activate(ptr noundef) local_unnamed_addr #2

declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_imtype_is_movie(i8 noundef zeroext) local_unnamed_addr #2

declare void @WM_jobs_kill_all_except(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #2

declare ptr @GPU_offscreen_create(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_space_seq(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_view3d_context_user_region(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @ED_view3d_datamask(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RE_NewRender(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_image_verify_viewer(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_image_signal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_image_backup_render(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RE_InitState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RE_AcquireResultWrite(ptr noundef) local_unnamed_addr #2

declare void @RE_ReleaseResult(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_movie_handle_get(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @screen_opengl_render_end(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.OGLRender, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  %6 = getelementptr inbounds %struct.OGLRender, ptr %1, i64 0, i32 17
  %7 = load ptr, ptr %6, align 8, !tbaa !127
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22
  %11 = load i8, ptr %10, align 8, !tbaa !96
  %12 = tail call zeroext i8 @BKE_imtype_is_movie(i8 noundef zeroext %11) #8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr %6, align 8, !tbaa !127
  %16 = getelementptr inbounds %struct.bMovieHandle, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !133
  tail call void %17() #8
  br label %18

18:                                               ; preds = %9, %14, %2
  %19 = getelementptr inbounds %struct.OGLRender, ptr %1, i64 0, i32 22
  %20 = load ptr, ptr %19, align 8, !tbaa !64
  %21 = icmp eq ptr %20, null
  br i1 %21, label %45, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.OGLRender, ptr %1, i64 0, i32 18
  %24 = load i32, ptr %23, align 8, !tbaa !106
  %25 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 5
  store i32 %24, ptr %25, align 8, !tbaa !105
  %26 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 46
  %27 = load ptr, ptr %26, align 8, !tbaa !134
  %28 = getelementptr inbounds %struct.OGLRender, ptr %1, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !117
  %30 = icmp eq ptr %29, null
  %31 = load ptr, ptr %4, align 8, !tbaa !70
  %32 = getelementptr inbounds %struct.Scene, ptr %31, i64 0, i32 12
  %33 = load i32, ptr %32, align 8, !tbaa !136
  br i1 %30, label %38, label %34

34:                                               ; preds = %22
  %35 = getelementptr inbounds %struct.View3D, ptr %29, i64 0, i32 22
  %36 = load i32, ptr %35, align 8, !tbaa !137
  %37 = or i32 %36, %33
  br label %38

38:                                               ; preds = %22, %34
  %39 = phi i32 [ %37, %34 ], [ %33, %22 ]
  tail call void @BKE_scene_update_for_newframe(ptr noundef %27, ptr noundef %3, ptr noundef %5, i32 noundef %39) #8
  %40 = getelementptr inbounds %struct.OGLRender, ptr %1, i64 0, i32 20
  %41 = load ptr, ptr %40, align 8, !tbaa !63
  %42 = getelementptr inbounds %struct.OGLRender, ptr %1, i64 0, i32 21
  %43 = load ptr, ptr %42, align 8, !tbaa !60
  %44 = load ptr, ptr %19, align 8, !tbaa !64
  tail call void @WM_event_remove_timer(ptr noundef %41, ptr noundef %43, ptr noundef %44) #8
  br label %45

45:                                               ; preds = %38, %18
  %46 = getelementptr inbounds %struct.OGLRender, ptr %1, i64 0, i32 21
  %47 = load ptr, ptr %46, align 8, !tbaa !60
  tail call void @WM_cursor_modal_restore(ptr noundef %47) #8
  %48 = load ptr, ptr %4, align 8, !tbaa !70
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67895296, ptr noundef %48) #8
  %49 = getelementptr inbounds %struct.OGLRender, ptr %1, i64 0, i32 12
  %50 = load ptr, ptr %49, align 8, !tbaa !101
  tail call void @GPU_offscreen_free(ptr noundef %50) #8
  %51 = load ptr, ptr %4, align 8, !tbaa !70
  %52 = getelementptr inbounds %struct.Scene, ptr %51, i64 0, i32 43
  store i64 0, ptr %52, align 8, !tbaa !118
  %53 = getelementptr inbounds %struct.OGLRender, ptr %1, i64 0, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !110
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef %54) #8
  %55 = getelementptr inbounds %struct.OGLRender, ptr %1, i64 0, i32 7
  %56 = load ptr, ptr %55, align 8, !tbaa !111
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef %56) #8
  %57 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  tail call void %57(ptr noundef %1) #8
  ret void
}

declare void @BKE_scene_update_for_newframe(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @WM_event_remove_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_cursor_modal_restore(ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @GPU_offscreen_free(ptr noundef) local_unnamed_addr #2

declare void @CTX_wm_area_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CTX_wm_region_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @screen_opengl_render_apply(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca %struct.SeqRenderData, align 8
  %5 = alloca [4 x float], align 16
  %6 = alloca %struct.rctf, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [256 x i8], align 16
  %11 = alloca [1024 x i8], align 16
  %12 = getelementptr inbounds %struct.OGLRender, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !70
  %14 = getelementptr inbounds %struct.OGLRender, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !112
  %16 = getelementptr inbounds %struct.OGLRender, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !117
  %18 = getelementptr inbounds %struct.OGLRender, ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #8
  %20 = getelementptr inbounds %struct.OGLRender, ptr %0, i64 0, i32 13
  %21 = load i32, ptr %20, align 8, !tbaa !102
  %22 = getelementptr inbounds %struct.OGLRender, ptr %0, i64 0, i32 14
  %23 = load i32, ptr %22, align 4, !tbaa !103
  %24 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 22
  %25 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 22, i32 53
  %26 = load i16, ptr %25, align 8, !tbaa !139
  %27 = icmp eq i16 %26, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.OGLRender, ptr %0, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !120
  %31 = tail call ptr @RE_AcquireResultRead(ptr noundef %30) #8
  %32 = getelementptr inbounds %struct.OGLRender, ptr %0, i64 0, i32 8
  %33 = load i8, ptr %32, align 8, !tbaa !108
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %138, label %35

35:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #8
  %36 = getelementptr inbounds %struct.OGLRender, ptr %0, i64 0, i32 9
  %37 = load ptr, ptr %36, align 8, !tbaa !109
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.SpaceSeq, ptr %37, i64 0, i32 11
  %41 = load i16, ptr %40, align 4, !tbaa !140
  %42 = sext i16 %41 to i32
  br label %43

43:                                               ; preds = %35, %39
  %44 = phi i32 [ %42, %39 ], [ 0, %35 ]
  br i1 %38, label %53, label %45

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.SpaceSeq, ptr %37, i64 0, i32 13
  %47 = load i32, ptr %46, align 8, !tbaa !143
  %48 = and i32 %47, 16
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.SpaceSeq, ptr %37, i64 0, i32 17
  %52 = load ptr, ptr %51, align 8, !tbaa !144
  br label %53

53:                                               ; preds = %43, %45, %50
  %54 = phi ptr [ %52, %50 ], [ null, %45 ], [ null, %43 ]
  %55 = load ptr, ptr %0, align 8, !tbaa !104
  %56 = getelementptr inbounds %struct.Main, ptr %55, i64 0, i32 46
  %57 = load ptr, ptr %56, align 8, !tbaa !134
  %58 = load i32, ptr %20, align 8, !tbaa !102
  %59 = load i32, ptr %22, align 4, !tbaa !103
  call void @BKE_sequencer_new_render_data(ptr dead_on_unwind nonnull writable sret(%struct.SeqRenderData) align 8 %4, ptr noundef %57, ptr noundef %55, ptr noundef %13, i32 noundef %58, i32 noundef %59, i32 noundef 100) #8
  %60 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 22, i32 5
  %61 = load i32, ptr %60, align 8, !tbaa !105
  %62 = sitofp i32 %61 to float
  %63 = call ptr @BKE_sequencer_give_ibuf(ptr noundef nonnull %4, float noundef %62, i32 noundef %44) #8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %82, label %65

65:                                               ; preds = %53
  %66 = call ptr @IMB_dupImBuf(ptr noundef nonnull %63) #8
  call void @IMB_freeImBuf(ptr noundef nonnull %63) #8
  %67 = getelementptr inbounds %struct.ImBuf, ptr %66, i64 0, i32 9
  %68 = load ptr, ptr %67, align 8, !tbaa !145
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  call void @IMB_float_from_rect(ptr noundef %66) #8
  br label %72

71:                                               ; preds = %65
  call void @BKE_sequencer_imbuf_from_sequencer_space(ptr noundef %13, ptr noundef %66) #8
  br label %72

72:                                               ; preds = %71, %70
  %73 = getelementptr inbounds %struct.RenderResult, ptr %31, i64 0, i32 7
  %74 = load ptr, ptr %73, align 8, !tbaa !124
  %75 = load ptr, ptr %67, align 8, !tbaa !145
  %76 = load i32, ptr %20, align 8, !tbaa !102
  %77 = sext i32 %76 to i64
  %78 = shl nsw i64 %77, 4
  %79 = load i32, ptr %22, align 4, !tbaa !103
  %80 = sext i32 %79 to i64
  %81 = mul i64 %78, %80
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %74, ptr align 4 %75, i64 %81, i1 false)
  call void @IMB_freeImBuf(ptr noundef %66) #8
  br label %82

82:                                               ; preds = %72, %53
  %83 = icmp eq ptr %54, null
  br i1 %83, label %137, label %84

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.OGLRender, ptr %0, i64 0, i32 12
  %86 = load ptr, ptr %85, align 8, !tbaa !101
  call void @GPU_offscreen_bind(ptr noundef %86) #8
  call void @glClearColor(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #8
  call void @glClear(i32 noundef 16640) #8
  %87 = sitofp i32 %21 to float
  %88 = sitofp i32 %23 to float
  call void @wmOrtho2(float noundef 0.000000e+00, float noundef %87, float noundef 0.000000e+00, float noundef %88) #8
  %89 = sdiv i32 %21, 2
  %90 = sitofp i32 %89 to float
  %91 = sdiv i32 %23, 2
  %92 = sitofp i32 %91 to float
  call void @glTranslatef(float noundef %90, float noundef %92, float noundef 0.000000e+00) #8
  %93 = load i32, ptr %60, align 8, !tbaa !105
  call void @ED_gpencil_draw_ex(ptr noundef nonnull %54, i32 noundef %21, i32 noundef %23, i32 noundef %93) #8
  %94 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !100
  %95 = mul nsw i32 %23, %21
  %96 = sext i32 %95 to i64
  %97 = shl nsw i64 %96, 2
  %98 = call ptr %94(i64 noundef %97, ptr noundef nonnull @.str.22) #8
  %99 = load ptr, ptr %85, align 8, !tbaa !101
  call void @GPU_offscreen_read_pixels(ptr noundef %99, i32 noundef 5121, ptr noundef %98) #8
  %100 = icmp sgt i32 %95, 0
  br i1 %100, label %101, label %134

101:                                              ; preds = %84
  %102 = shl nsw i32 %95, 2
  %103 = getelementptr inbounds float, ptr %5, i64 3
  %104 = getelementptr inbounds %struct.RenderResult, ptr %31, i64 0, i32 7
  %105 = getelementptr inbounds float, ptr %5, i64 1
  %106 = getelementptr inbounds float, ptr %5, i64 2
  %107 = zext nneg i32 %102 to i64
  br label %108

108:                                              ; preds = %101, %131
  %109 = phi i64 [ 0, %101 ], [ %132, %131 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  %110 = getelementptr inbounds i8, ptr %98, i64 %109
  call void @rgba_uchar_to_float(ptr noundef nonnull %5, ptr noundef %110) #8
  %111 = load float, ptr %103, align 4, !tbaa !148
  %112 = fcmp une float %111, 0.000000e+00
  br i1 %112, label %113, label %131

113:                                              ; preds = %108
  %114 = load ptr, ptr %104, align 8, !tbaa !124
  %115 = getelementptr inbounds float, ptr %114, i64 %109
  %116 = fsub float 1.000000e+00, %111
  %117 = load float, ptr %115, align 4, !tbaa !148
  %118 = load float, ptr %5, align 16, !tbaa !148
  %119 = call float @llvm.fmuladd.f32(float %116, float %117, float %118)
  store float %119, ptr %115, align 4, !tbaa !148
  %120 = getelementptr inbounds float, ptr %115, i64 1
  %121 = load float, ptr %120, align 4, !tbaa !148
  %122 = load float, ptr %105, align 4, !tbaa !148
  %123 = call float @llvm.fmuladd.f32(float %116, float %121, float %122)
  store float %123, ptr %120, align 4, !tbaa !148
  %124 = getelementptr inbounds float, ptr %115, i64 2
  %125 = load float, ptr %124, align 4, !tbaa !148
  %126 = load float, ptr %106, align 8, !tbaa !148
  %127 = call float @llvm.fmuladd.f32(float %116, float %125, float %126)
  store float %127, ptr %124, align 4, !tbaa !148
  %128 = getelementptr inbounds float, ptr %115, i64 3
  %129 = load float, ptr %128, align 4, !tbaa !148
  %130 = call float @llvm.fmuladd.f32(float %116, float %129, float %111)
  store float %130, ptr %128, align 4, !tbaa !148
  br label %131

131:                                              ; preds = %108, %113
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  %132 = add nuw nsw i64 %109, 4
  %133 = icmp ult i64 %132, %107
  br i1 %133, label %108, label %134, !llvm.loop !149

134:                                              ; preds = %131, %84
  %135 = load ptr, ptr %85, align 8, !tbaa !101
  call void @GPU_offscreen_unbind(ptr noundef %135) #8
  %136 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  call void %136(ptr noundef %98) #8
  br label %137

137:                                              ; preds = %134, %82
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #8
  br label %282

138:                                              ; preds = %1
  %139 = icmp eq ptr %17, null
  br i1 %139, label %261, label %140

140:                                              ; preds = %138
  tail call void @ED_view3d_draw_offscreen_init(ptr noundef %13, ptr noundef nonnull %17) #8
  %141 = getelementptr inbounds %struct.OGLRender, ptr %0, i64 0, i32 12
  %142 = load ptr, ptr %141, align 8, !tbaa !101
  tail call void @GPU_offscreen_bind(ptr noundef %142) #8
  %143 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 25
  %144 = load i8, ptr %143, align 1, !tbaa !150
  %145 = icmp eq i8 %144, 2
  br i1 %145, label %146, label %154

146:                                              ; preds = %140
  %147 = getelementptr inbounds %struct.View3D, ptr %17, i64 0, i32 15
  %148 = load ptr, ptr %147, align 8, !tbaa !152
  %149 = icmp eq ptr %148, null
  br i1 %149, label %154, label %150

150:                                              ; preds = %146
  %151 = load ptr, ptr %29, align 8, !tbaa !120
  %152 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 22, i32 5
  %153 = load i32, ptr %152, align 8, !tbaa !105
  call void @RE_GetCameraWindow(ptr noundef %151, ptr noundef nonnull %148, i32 noundef %153, ptr noundef nonnull %3) #8
  br label %171

154:                                              ; preds = %146, %140
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  %155 = call zeroext i8 @ED_view3d_viewplane_get(ptr noundef nonnull %17, ptr noundef %19, i32 noundef %21, i32 noundef %23, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef null) #8
  %156 = icmp eq i8 %155, 0
  %157 = load float, ptr %6, align 4, !tbaa !153
  %158 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 1
  %159 = load float, ptr %158, align 4, !tbaa !154
  %160 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 2
  %161 = load float, ptr %160, align 4, !tbaa !155
  %162 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 3
  %163 = load float, ptr %162, align 4, !tbaa !156
  br i1 %156, label %167, label %164

164:                                              ; preds = %154
  %165 = load float, ptr %8, align 4, !tbaa !148
  %166 = fneg float %165
  call void @orthographic_m4(ptr noundef nonnull %3, float noundef %157, float noundef %159, float noundef %161, float noundef %163, float noundef %166, float noundef %165) #8
  br label %170

167:                                              ; preds = %154
  %168 = load float, ptr %7, align 4, !tbaa !148
  %169 = load float, ptr %8, align 4, !tbaa !148
  call void @perspective_m4(ptr noundef nonnull %3, float noundef %157, float noundef %159, float noundef %161, float noundef %163, float noundef %168, float noundef %169) #8
  br label %170

170:                                              ; preds = %167, %164
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  br label %171

171:                                              ; preds = %170, %150
  %172 = phi ptr [ %148, %150 ], [ null, %170 ]
  %173 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !100
  %174 = mul nsw i32 %23, %21
  %175 = sext i32 %174 to i64
  %176 = shl nsw i64 %175, 2
  %177 = call ptr %173(i64 noundef %176, ptr noundef nonnull @.str.22) #8
  %178 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 22, i32 47
  %179 = load i32, ptr %178, align 8, !tbaa !157
  %180 = and i32 %179, 1
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %171
  call void @ED_view3d_draw_offscreen(ptr noundef %13, ptr noundef nonnull %17, ptr noundef %15, i32 noundef %21, i32 noundef %23, ptr noundef null, ptr noundef nonnull %3, i8 noundef zeroext 1, i8 noundef zeroext %28) #8
  %183 = load ptr, ptr %141, align 8, !tbaa !101
  call void @GPU_offscreen_read_pixels(ptr noundef %183, i32 noundef 5121, ptr noundef %177) #8
  br label %259

184:                                              ; preds = %171
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #8
  %185 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !100
  %186 = shl nsw i64 %175, 4
  %187 = call ptr %185(i64 noundef %186, ptr noundef nonnull @.str.23) #8
  %188 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 22, i32 54
  %189 = load i16, ptr %188, align 2, !tbaa !158
  %190 = sext i16 %189 to i32
  call void @BLI_jitter_init(ptr noundef nonnull @screen_opengl_render_apply.jit_ofs, i32 noundef %190) #8
  call void @ED_view3d_draw_offscreen(ptr noundef %13, ptr noundef nonnull %17, ptr noundef %15, i32 noundef %21, i32 noundef %23, ptr noundef null, ptr noundef nonnull %3, i8 noundef zeroext 1, i8 noundef zeroext %28) #8
  %191 = load ptr, ptr %141, align 8, !tbaa !101
  call void @GPU_offscreen_read_pixels(ptr noundef %191, i32 noundef 5121, ptr noundef %177) #8
  %192 = shl i32 %174, 2
  %193 = icmp sgt i32 %174, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %184
  %195 = call i32 @llvm.smax.i32(i32 %192, i32 1)
  %196 = zext nneg i32 %195 to i64
  br label %207

197:                                              ; preds = %207, %184
  %198 = load i16, ptr %188, align 2, !tbaa !158
  %199 = icmp sgt i16 %198, 1
  br i1 %199, label %200, label %215

200:                                              ; preds = %197
  %201 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 3
  %202 = sitofp i32 %21 to float
  %203 = sitofp i32 %23 to float
  %204 = icmp sgt i32 %174, 0
  %205 = call i32 @llvm.smax.i32(i32 %192, i32 1)
  %206 = zext nneg i32 %205 to i64
  br label %220

207:                                              ; preds = %194, %207
  %208 = phi i64 [ 0, %194 ], [ %213, %207 ]
  %209 = getelementptr inbounds i8, ptr %177, i64 %208
  %210 = load i8, ptr %209, align 1, !tbaa !159
  %211 = zext i8 %210 to i32
  %212 = getelementptr inbounds i32, ptr %187, i64 %208
  store i32 %211, ptr %212, align 4, !tbaa !131
  %213 = add nuw nsw i64 %208, 1
  %214 = icmp eq i64 %213, %196
  br i1 %214, label %197, label %207, !llvm.loop !160

215:                                              ; preds = %241, %197
  %216 = icmp sgt i32 %174, 0
  br i1 %216, label %217, label %257

217:                                              ; preds = %215
  %218 = call i32 @llvm.smax.i32(i32 %192, i32 1)
  %219 = zext nneg i32 %218 to i64
  br label %246

220:                                              ; preds = %200, %241
  %221 = phi i64 [ 1, %200 ], [ %242, %241 ]
  call void @copy_m4_m4(ptr noundef nonnull %9, ptr noundef nonnull %3) #8
  %222 = getelementptr inbounds [32 x [2 x float]], ptr @screen_opengl_render_apply.jit_ofs, i64 0, i64 %221
  %223 = load float, ptr %222, align 8, !tbaa !148
  %224 = fmul float %223, 2.000000e+00
  %225 = fdiv float %224, %202
  %226 = getelementptr inbounds [32 x [2 x float]], ptr @screen_opengl_render_apply.jit_ofs, i64 0, i64 %221, i64 1
  %227 = load float, ptr %226, align 4, !tbaa !148
  %228 = fmul float %227, 2.000000e+00
  %229 = fdiv float %228, %203
  call void @window_translate_m4(ptr noundef nonnull %9, ptr noundef nonnull %201, float noundef %225, float noundef %229) #8
  call void @ED_view3d_draw_offscreen(ptr noundef %13, ptr noundef nonnull %17, ptr noundef %15, i32 noundef %21, i32 noundef %23, ptr noundef null, ptr noundef nonnull %9, i8 noundef zeroext 1, i8 noundef zeroext %28) #8
  %230 = load ptr, ptr %141, align 8, !tbaa !101
  call void @GPU_offscreen_read_pixels(ptr noundef %230, i32 noundef 5121, ptr noundef %177) #8
  br i1 %204, label %231, label %241

231:                                              ; preds = %220, %231
  %232 = phi i64 [ %239, %231 ], [ 0, %220 ]
  %233 = getelementptr inbounds i8, ptr %177, i64 %232
  %234 = load i8, ptr %233, align 1, !tbaa !159
  %235 = zext i8 %234 to i32
  %236 = getelementptr inbounds i32, ptr %187, i64 %232
  %237 = load i32, ptr %236, align 4, !tbaa !131
  %238 = add nsw i32 %237, %235
  store i32 %238, ptr %236, align 4, !tbaa !131
  %239 = add nuw nsw i64 %232, 1
  %240 = icmp eq i64 %239, %206
  br i1 %240, label %241, label %231, !llvm.loop !161

241:                                              ; preds = %231, %220
  %242 = add nuw nsw i64 %221, 1
  %243 = load i16, ptr %188, align 2, !tbaa !158
  %244 = sext i16 %243 to i64
  %245 = icmp slt i64 %242, %244
  br i1 %245, label %220, label %215, !llvm.loop !162

246:                                              ; preds = %217, %246
  %247 = phi i64 [ 0, %217 ], [ %255, %246 ]
  %248 = getelementptr inbounds i32, ptr %187, i64 %247
  %249 = load i32, ptr %248, align 4, !tbaa !131
  %250 = load i16, ptr %188, align 2, !tbaa !158
  %251 = sext i16 %250 to i32
  %252 = sdiv i32 %249, %251
  %253 = trunc i32 %252 to i8
  %254 = getelementptr inbounds i8, ptr %177, i64 %247
  store i8 %253, ptr %254, align 1, !tbaa !159
  %255 = add nuw nsw i64 %247, 1
  %256 = icmp eq i64 %255, %219
  br i1 %256, label %257, label %246, !llvm.loop !163

257:                                              ; preds = %246, %215
  %258 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  call void %258(ptr noundef %187) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #8
  br label %259

259:                                              ; preds = %257, %182
  %260 = load ptr, ptr %141, align 8, !tbaa !101
  call void @GPU_offscreen_unbind(ptr noundef %260) #8
  br label %282

261:                                              ; preds = %138
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %10) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %10, ptr noundef nonnull align 16 dereferenceable(256) @__const.screen_opengl_render_apply.err_out, i64 256, i1 false)
  %262 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 2
  %263 = load ptr, ptr %262, align 8, !tbaa !74
  %264 = load i32, ptr %20, align 8, !tbaa !102
  %265 = load i32, ptr %22, align 4, !tbaa !103
  %266 = xor i1 %27, true
  %267 = zext i1 %266 to i32
  %268 = call ptr @ED_view3d_draw_offscreen_imbuf_simple(ptr noundef %13, ptr noundef %263, i32 noundef %264, i32 noundef %265, i32 noundef 1, i32 noundef 3, i8 noundef zeroext 0, i8 noundef zeroext 1, i32 noundef %267, ptr noundef nonnull %10) #8
  %269 = load ptr, ptr %262, align 8, !tbaa !74
  %270 = icmp eq ptr %268, null
  br i1 %270, label %277, label %271

271:                                              ; preds = %261
  %272 = getelementptr inbounds %struct.ImBuf, ptr %268, i64 0, i32 8
  %273 = load ptr, ptr %272, align 8, !tbaa !164
  %274 = getelementptr inbounds %struct.ImBuf, ptr %268, i64 0, i32 7
  %275 = load i32, ptr %274, align 4, !tbaa !165
  %276 = and i32 %275, -2
  store i32 %276, ptr %274, align 4, !tbaa !165
  call void @IMB_freeImBuf(ptr noundef nonnull %268) #8
  br label %280

277:                                              ; preds = %261
  %278 = load ptr, ptr @stderr, align 8, !tbaa !100
  %279 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %278, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.screen_opengl_render_apply, ptr noundef nonnull %10) #9
  br label %280

280:                                              ; preds = %277, %271
  %281 = phi ptr [ %273, %271 ], [ null, %277 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %10) #8
  br label %282

282:                                              ; preds = %259, %280, %137
  %283 = phi ptr [ null, %137 ], [ %177, %259 ], [ %281, %280 ]
  %284 = phi ptr [ null, %137 ], [ %172, %259 ], [ %269, %280 ]
  %285 = icmp eq ptr %283, null
  br i1 %285, label %294, label %286

286:                                              ; preds = %282
  %287 = call zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef %13) #8
  %288 = icmp eq i8 %287, 0
  %289 = select i1 %288, i32 2, i32 1
  %290 = getelementptr inbounds %struct.RenderResult, ptr %31, i64 0, i32 7
  %291 = load ptr, ptr %290, align 8, !tbaa !124
  %292 = load i32, ptr %20, align 8, !tbaa !102
  %293 = load i32, ptr %22, align 4, !tbaa !103
  call void @IMB_buffer_float_from_byte(ptr noundef %291, ptr noundef nonnull %283, i32 noundef %289, i32 noundef 2, i8 noundef zeroext 1, i32 noundef %292, i32 noundef %293, i32 noundef %292, i32 noundef %292) #8
  br label %294

294:                                              ; preds = %286, %282
  %295 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 22, i32 85
  %296 = load i32, ptr %295, align 8, !tbaa !166
  %297 = and i32 %296, 4031
  %298 = icmp eq i32 %297, 0
  %299 = and i32 %296, 64
  %300 = icmp eq i32 %299, 0
  %301 = or i1 %298, %300
  br i1 %301, label %309, label %302

302:                                              ; preds = %294
  %303 = getelementptr inbounds %struct.RenderResult, ptr %31, i64 0, i32 7
  %304 = load ptr, ptr %303, align 8, !tbaa !124
  %305 = getelementptr inbounds %struct.RenderResult, ptr %31, i64 0, i32 2
  %306 = load i32, ptr %305, align 8, !tbaa !167
  %307 = getelementptr inbounds %struct.RenderResult, ptr %31, i64 0, i32 3
  %308 = load i32, ptr %307, align 4, !tbaa !168
  call void @BKE_stamp_buf(ptr noundef %13, ptr noundef %284, ptr noundef %283, ptr noundef %304, i32 noundef %306, i32 noundef %308, i32 noundef 4) #8
  br label %309

309:                                              ; preds = %302, %294
  %310 = load ptr, ptr %29, align 8, !tbaa !120
  call void @RE_ReleaseResult(ptr noundef %310) #8
  %311 = getelementptr inbounds %struct.OGLRender, ptr %0, i64 0, i32 10
  %312 = load ptr, ptr %311, align 8, !tbaa !121
  %313 = getelementptr inbounds %struct.OGLRender, ptr %0, i64 0, i32 11
  %314 = call ptr @BKE_image_acquire_ibuf(ptr noundef %312, ptr noundef nonnull %313, ptr noundef nonnull %2) #8
  %315 = icmp eq ptr %314, null
  br i1 %315, label %343, label %316

316:                                              ; preds = %309
  %317 = getelementptr inbounds %struct.ImBuf, ptr %314, i64 0, i32 23
  %318 = load i32, ptr %317, align 4, !tbaa !169
  %319 = or i32 %318, 16
  store i32 %319, ptr %317, align 4, !tbaa !169
  %320 = getelementptr inbounds %struct.OGLRender, ptr %0, i64 0, i32 15
  %321 = load i32, ptr %320, align 8, !tbaa !107
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %343, label %323

323:                                              ; preds = %316
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %11) #8
  %324 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 22, i32 0, i32 2
  %325 = load i8, ptr %324, align 2, !tbaa !170
  %326 = icmp eq i8 %325, 2
  br i1 %326, label %327, label %328

327:                                              ; preds = %323
  call void @IMB_color_to_bw(ptr noundef nonnull %314) #8
  br label %328

328:                                              ; preds = %327, %323
  %329 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 22, i32 84
  %330 = load ptr, ptr %0, align 8, !tbaa !104
  %331 = getelementptr inbounds %struct.Main, ptr %330, i64 0, i32 2
  %332 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 22, i32 5
  %333 = load i32, ptr %332, align 8, !tbaa !105
  %334 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 22, i32 46
  %335 = load i32, ptr %334, align 4, !tbaa !171
  %336 = trunc i32 %335 to i8
  %337 = lshr i8 %336, 4
  %338 = and i8 %337, 1
  call void @BKE_makepicstring(ptr noundef nonnull %11, ptr noundef nonnull %329, ptr noundef nonnull %331, i32 noundef %333, ptr noundef nonnull %24, i8 noundef zeroext %338, i8 noundef zeroext 0) #8
  %339 = call i32 @BKE_imbuf_write_as(ptr noundef nonnull %314, ptr noundef nonnull %11, ptr noundef nonnull %24, i8 noundef zeroext 1) #8
  %340 = icmp eq i32 %339, 0
  %341 = select i1 %340, ptr @.str.26, ptr @.str.25
  %342 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %341, ptr noundef nonnull %11)
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %11) #8
  br label %343

343:                                              ; preds = %316, %328, %309
  %344 = load ptr, ptr %311, align 8, !tbaa !121
  %345 = load ptr, ptr %2, align 8, !tbaa !100
  call void @BKE_image_release_ibuf(ptr noundef %344, ptr noundef %314, ptr noundef %345) #8
  br i1 %285, label %348, label %346

346:                                              ; preds = %343
  %347 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  call void %347(ptr noundef nonnull %283) #8
  br label %348

348:                                              ; preds = %346, %343
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @screen_opengl_render_anim_step(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = getelementptr inbounds %struct.OGLRender, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #8
  %10 = getelementptr inbounds %struct.OGLRender, ptr %7, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !117
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22
  %14 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !105
  %16 = getelementptr inbounds %struct.OGLRender, ptr %7, i64 0, i32 19
  %17 = load i32, ptr %16, align 4, !tbaa !132
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = add nsw i32 %15, 1
  store i32 %20, ptr %14, align 8, !tbaa !105
  br label %21

21:                                               ; preds = %19, %2
  %22 = load i32, ptr %14, align 8, !tbaa !105
  %23 = load i32, ptr %16, align 4, !tbaa !132
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 46
  br label %27

27:                                               ; preds = %25, %37
  %28 = load ptr, ptr %10, align 8, !tbaa !117
  %29 = icmp eq ptr %28, null
  %30 = load ptr, ptr %8, align 8, !tbaa !70
  %31 = getelementptr inbounds %struct.Scene, ptr %30, i64 0, i32 12
  %32 = load i32, ptr %31, align 8, !tbaa !136
  br i1 %29, label %37, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.View3D, ptr %28, i64 0, i32 22
  %35 = load i32, ptr %34, align 8, !tbaa !137
  %36 = or i32 %35, %32
  br label %37

37:                                               ; preds = %27, %33
  %38 = phi i32 [ %36, %33 ], [ %32, %27 ]
  %39 = and i32 %38, -16777216
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 %38, i32 %39
  %42 = load ptr, ptr %26, align 8, !tbaa !134
  tail call void @BKE_scene_update_for_newframe(ptr noundef %42, ptr noundef %5, ptr noundef %9, i32 noundef %41) #8
  %43 = load i32, ptr %14, align 8, !tbaa !105
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %14, align 8, !tbaa !105
  %45 = load i32, ptr %16, align 4, !tbaa !132
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %27, label %47, !llvm.loop !172

47:                                               ; preds = %37, %21
  %48 = load i8, ptr %13, align 8, !tbaa !96
  %49 = tail call zeroext i8 @BKE_imtype_is_movie(i8 noundef zeroext %48) #8
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 84
  %53 = load ptr, ptr %7, align 8, !tbaa !104
  %54 = getelementptr inbounds %struct.Main, ptr %53, i64 0, i32 2
  %55 = load i32, ptr %14, align 8, !tbaa !105
  %56 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 46
  %57 = load i32, ptr %56, align 4, !tbaa !171
  %58 = trunc i32 %57 to i8
  %59 = lshr i8 %58, 4
  %60 = and i8 %59, 1
  call void @BKE_makepicstring(ptr noundef nonnull %4, ptr noundef nonnull %52, ptr noundef nonnull %54, i32 noundef %55, ptr noundef nonnull %13, i8 noundef zeroext %60, i8 noundef zeroext 1) #8
  %61 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 47
  %62 = load i32, ptr %61, align 8, !tbaa !157
  %63 = and i32 %62, 4194304
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %51
  %66 = call i32 @BLI_exists(ptr noundef nonnull %4) #8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %70 = load ptr, ptr %69, align 8, !tbaa !73
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %70, i32 noundef 2, ptr noundef nonnull @.str.27, ptr noundef nonnull %4) #8
  br label %220

71:                                               ; preds = %51, %65, %47
  %72 = getelementptr inbounds %struct.OGLRender, ptr %7, i64 0, i32 21
  %73 = load ptr, ptr %72, align 8, !tbaa !60
  %74 = load i32, ptr %14, align 8, !tbaa !105
  call void @WM_cursor_time(ptr noundef %73, i32 noundef %74) #8
  %75 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 46
  %76 = load ptr, ptr %75, align 8, !tbaa !134
  %77 = load ptr, ptr %10, align 8, !tbaa !117
  %78 = icmp eq ptr %77, null
  %79 = load ptr, ptr %8, align 8, !tbaa !70
  %80 = getelementptr inbounds %struct.Scene, ptr %79, i64 0, i32 12
  %81 = load i32, ptr %80, align 8, !tbaa !136
  br i1 %78, label %86, label %82

82:                                               ; preds = %71
  %83 = getelementptr inbounds %struct.View3D, ptr %77, i64 0, i32 22
  %84 = load i32, ptr %83, align 8, !tbaa !137
  %85 = or i32 %84, %81
  br label %86

86:                                               ; preds = %71, %82
  %87 = phi i32 [ %85, %82 ], [ %81, %71 ]
  call void @BKE_scene_update_for_newframe(ptr noundef %76, ptr noundef %5, ptr noundef %9, i32 noundef %87) #8
  br i1 %12, label %114, label %88

88:                                               ; preds = %86
  %89 = getelementptr inbounds %struct.OGLRender, ptr %7, i64 0, i32 4
  %90 = load ptr, ptr %89, align 8, !tbaa !116
  %91 = getelementptr inbounds %struct.RegionView3D, ptr %90, i64 0, i32 25
  %92 = load i8, ptr %91, align 1, !tbaa !150
  %93 = icmp eq i8 %92, 2
  br i1 %93, label %94, label %120

94:                                               ; preds = %88
  %95 = load ptr, ptr %10, align 8, !tbaa !117
  %96 = getelementptr inbounds %struct.View3D, ptr %95, i64 0, i32 15
  %97 = load ptr, ptr %96, align 8, !tbaa !152
  %98 = icmp eq ptr %97, null
  br i1 %98, label %120, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.View3D, ptr %95, i64 0, i32 26
  %101 = load i16, ptr %100, align 4, !tbaa !173
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %120, label %103

103:                                              ; preds = %99
  %104 = call i32 @BKE_scene_camera_switch_update(ptr noundef %9) #8
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !74
  %109 = load ptr, ptr %10, align 8, !tbaa !117
  %110 = getelementptr inbounds %struct.View3D, ptr %109, i64 0, i32 15
  store ptr %108, ptr %110, align 8, !tbaa !152
  br label %111

111:                                              ; preds = %106, %103
  %112 = load ptr, ptr %10, align 8, !tbaa !117
  %113 = getelementptr inbounds %struct.View3D, ptr %112, i64 0, i32 15
  br label %117

114:                                              ; preds = %86
  %115 = call i32 @BKE_scene_camera_switch_update(ptr noundef %9) #8
  %116 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 2
  br label %117

117:                                              ; preds = %114, %111
  %118 = phi ptr [ %113, %111 ], [ %116, %114 ]
  %119 = load ptr, ptr %118, align 8, !tbaa !100
  br label %120

120:                                              ; preds = %117, %88, %94, %99
  %121 = phi ptr [ null, %99 ], [ null, %94 ], [ null, %88 ], [ %119, %117 ]
  call fastcc void @screen_opengl_render_apply(ptr noundef %7)
  %122 = getelementptr inbounds %struct.OGLRender, ptr %7, i64 0, i32 10
  %123 = load ptr, ptr %122, align 8, !tbaa !121
  %124 = getelementptr inbounds %struct.OGLRender, ptr %7, i64 0, i32 11
  %125 = call ptr @BKE_image_acquire_ibuf(ptr noundef %123, ptr noundef nonnull %124, ptr noundef nonnull %3) #8
  %126 = icmp eq ptr %125, null
  br i1 %126, label %215, label %127

127:                                              ; preds = %120
  br i1 %50, label %128, label %132

128:                                              ; preds = %127
  %129 = load i8, ptr %13, align 8, !tbaa !96
  %130 = call i32 @BKE_imtype_requires_linear_float(i8 noundef zeroext %129) #8
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %128, %127
  %133 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 44
  %134 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 45
  %135 = call ptr @IMB_colormanagement_imbuf_for_write(ptr noundef nonnull %125, i8 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef nonnull %133, ptr noundef nonnull %134, ptr noundef nonnull %13) #8
  br label %136

136:                                              ; preds = %132, %128
  %137 = phi i1 [ false, %132 ], [ true, %128 ]
  %138 = phi ptr [ %135, %132 ], [ %125, %128 ]
  %139 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 0, i32 2
  %140 = load i8, ptr %139, align 2, !tbaa !170
  %141 = icmp eq i8 %140, 8
  br i1 %141, label %142, label %144

142:                                              ; preds = %136
  %143 = call ptr @IMB_dupImBuf(ptr noundef %138) #8
  call void @IMB_color_to_bw(ptr noundef %143) #8
  br i1 %137, label %165, label %163

144:                                              ; preds = %136
  %145 = getelementptr inbounds %struct.ImBuf, ptr %138, i64 0, i32 2
  %146 = load i32, ptr %145, align 8, !tbaa !174
  %147 = getelementptr inbounds %struct.ImBuf, ptr %138, i64 0, i32 3
  %148 = load i32, ptr %147, align 4, !tbaa !175
  %149 = call ptr @IMB_allocImBuf(i32 noundef %146, i32 noundef %148, i8 noundef zeroext %140, i32 noundef 0) #8
  %150 = getelementptr inbounds %struct.ImBuf, ptr %138, i64 0, i32 8
  %151 = load ptr, ptr %150, align 8, !tbaa !164
  %152 = getelementptr inbounds %struct.ImBuf, ptr %149, i64 0, i32 8
  store ptr %151, ptr %152, align 8, !tbaa !164
  %153 = getelementptr inbounds %struct.ImBuf, ptr %138, i64 0, i32 9
  %154 = load ptr, ptr %153, align 8, !tbaa !145
  %155 = getelementptr inbounds %struct.ImBuf, ptr %149, i64 0, i32 9
  store ptr %154, ptr %155, align 8, !tbaa !145
  %156 = getelementptr inbounds %struct.ImBuf, ptr %138, i64 0, i32 17
  %157 = load ptr, ptr %156, align 8, !tbaa !176
  %158 = getelementptr inbounds %struct.ImBuf, ptr %149, i64 0, i32 17
  store ptr %157, ptr %158, align 8, !tbaa !176
  br i1 %137, label %165, label %159

159:                                              ; preds = %144
  %160 = getelementptr inbounds %struct.ImBuf, ptr %138, i64 0, i32 7
  %161 = load i32, ptr %160, align 4, !tbaa !165
  %162 = getelementptr inbounds %struct.ImBuf, ptr %149, i64 0, i32 7
  store i32 %161, ptr %162, align 4, !tbaa !165
  store i32 0, ptr %160, align 4, !tbaa !165
  br label %163

163:                                              ; preds = %142, %159
  %164 = phi ptr [ %149, %159 ], [ %143, %142 ]
  call void @IMB_freeImBuf(ptr noundef %138) #8
  br label %165

165:                                              ; preds = %163, %144, %142
  %166 = phi ptr [ %143, %142 ], [ %149, %144 ], [ %164, %163 ]
  br i1 %50, label %198, label %167

167:                                              ; preds = %165
  %168 = getelementptr inbounds %struct.OGLRender, ptr %7, i64 0, i32 17
  %169 = load ptr, ptr %168, align 8, !tbaa !127
  %170 = getelementptr inbounds %struct.bMovieHandle, ptr %169, i64 0, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !177
  %172 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 13
  %173 = load i16, ptr %172, align 8, !tbaa !130
  %174 = and i16 %173, 1
  %175 = icmp eq i16 %174, 0
  %176 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 9
  %177 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 6
  %178 = select i1 %175, ptr %177, ptr %176
  %179 = load i32, ptr %178, align 4, !tbaa !131
  %180 = load i32, ptr %14, align 8, !tbaa !105
  %181 = getelementptr inbounds %struct.ImBuf, ptr %166, i64 0, i32 8
  %182 = load ptr, ptr %181, align 8, !tbaa !164
  %183 = getelementptr inbounds %struct.OGLRender, ptr %7, i64 0, i32 13
  %184 = load i32, ptr %183, align 8, !tbaa !102
  %185 = getelementptr inbounds %struct.OGLRender, ptr %7, i64 0, i32 14
  %186 = load i32, ptr %185, align 4, !tbaa !103
  %187 = getelementptr inbounds %struct.OGLRender, ptr %7, i64 0, i32 16
  %188 = load ptr, ptr %187, align 8, !tbaa !126
  %189 = call i32 %171(ptr noundef nonnull %13, i32 noundef %179, i32 noundef %180, ptr noundef %182, i32 noundef %184, i32 noundef %186, ptr noundef %188) #8
  %190 = and i32 %189, 255
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %210, label %192

192:                                              ; preds = %167
  %193 = load i32, ptr %14, align 8, !tbaa !105
  %194 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef %193)
  %195 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %196 = load ptr, ptr %195, align 8, !tbaa !73
  %197 = load i32, ptr %14, align 8, !tbaa !105
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %196, i32 noundef 2, ptr noundef nonnull @.str.29, i32 noundef %197) #8
  br label %210

198:                                              ; preds = %165
  %199 = call i32 @BKE_imbuf_write_stamp(ptr noundef %9, ptr noundef %121, ptr noundef %166, ptr noundef nonnull %4, ptr noundef nonnull %13) #8
  %200 = trunc i32 %199 to i8
  %201 = and i32 %199, 255
  %202 = icmp eq i32 %201, 0
  %203 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  br i1 %202, label %204, label %207

204:                                              ; preds = %198
  %205 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, ptr noundef nonnull %4)
  %206 = load ptr, ptr %203, align 8, !tbaa !73
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %206, i32 noundef 32, ptr noundef nonnull @.str.31, ptr noundef nonnull %4) #8
  br label %210

207:                                              ; preds = %198
  %208 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, ptr noundef nonnull %4)
  %209 = load ptr, ptr %203, align 8, !tbaa !73
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %209, i32 noundef 2, ptr noundef nonnull @.str.33, ptr noundef nonnull %4) #8
  br label %210

210:                                              ; preds = %204, %207, %167, %192
  %211 = phi i8 [ 1, %192 ], [ 0, %167 ], [ %200, %204 ], [ %200, %207 ]
  br i1 %137, label %213, label %212

212:                                              ; preds = %210
  call void @IMB_freeImBuf(ptr noundef %166) #8
  br label %213

213:                                              ; preds = %212, %210
  %214 = icmp ne i8 %211, 0
  br label %215

215:                                              ; preds = %213, %120
  %216 = phi i1 [ %214, %213 ], [ false, %120 ]
  %217 = load ptr, ptr %122, align 8, !tbaa !121
  %218 = load ptr, ptr %3, align 8, !tbaa !100
  call void @BKE_image_release_ibuf(ptr noundef %217, ptr noundef %125, ptr noundef %218) #8
  %219 = call i32 @putchar(i32 10)
  br label %220

220:                                              ; preds = %215, %68
  %221 = phi i1 [ %216, %215 ], [ true, %68 ]
  %222 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 26
  %223 = load i32, ptr %222, align 4, !tbaa !178
  %224 = load i32, ptr %16, align 4, !tbaa !132
  %225 = add nsw i32 %224, %223
  store i32 %225, ptr %16, align 4, !tbaa !132
  %226 = load i32, ptr %14, align 8, !tbaa !105
  %227 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 13
  %228 = load i16, ptr %227, align 8, !tbaa !130
  %229 = and i16 %228, 1
  %230 = icmp eq i16 %229, 0
  %231 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 10
  %232 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 7
  %233 = select i1 %230, ptr %232, ptr %231
  %234 = load i32, ptr %233, align 4, !tbaa !131
  %235 = icmp slt i32 %226, %234
  %236 = and i1 %221, %235
  br i1 %236, label %239, label %237

237:                                              ; preds = %220
  %238 = load ptr, ptr %6, align 8, !tbaa !54
  call fastcc void @screen_opengl_render_end(ptr noundef %0, ptr noundef %238)
  br label %239

239:                                              ; preds = %220, %237
  %240 = phi i8 [ 0, %237 ], [ 1, %220 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  ret i8 %240
}

declare ptr @RE_AcquireResultRead(ptr noundef) local_unnamed_addr #2

declare void @BKE_sequencer_new_render_data(ptr dead_on_unwind writable sret(%struct.SeqRenderData) align 8, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BKE_sequencer_give_ibuf(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare ptr @IMB_dupImBuf(ptr noundef) local_unnamed_addr #2

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

declare void @IMB_float_from_rect(ptr noundef) local_unnamed_addr #2

declare void @BKE_sequencer_imbuf_from_sequencer_space(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @GPU_offscreen_bind(ptr noundef) local_unnamed_addr #2

declare void @glClearColor(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glClear(i32 noundef) local_unnamed_addr #2

declare void @wmOrtho2(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @ED_gpencil_draw_ex(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @GPU_offscreen_read_pixels(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @rgba_uchar_to_float(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @GPU_offscreen_unbind(ptr noundef) local_unnamed_addr #2

declare void @ED_view3d_draw_offscreen_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RE_GetCameraWindow(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_view3d_viewplane_get(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @orthographic_m4(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @perspective_m4(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @ED_view3d_draw_offscreen(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @BLI_jitter_init(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @window_translate_m4(ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare ptr @ED_view3d_draw_offscreen_imbuf_simple(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

declare zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef) local_unnamed_addr #2

declare void @IMB_buffer_float_from_byte(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_stamp_buf(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @IMB_color_to_bw(ptr noundef) local_unnamed_addr #2

declare void @BKE_makepicstring(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @BKE_imbuf_write_as(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare i32 @BLI_exists(ptr noundef) local_unnamed_addr #2

declare void @WM_cursor_time(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BKE_scene_camera_switch_update(ptr noundef) local_unnamed_addr #2

declare i32 @BKE_imtype_requires_linear_float(i8 noundef zeroext) local_unnamed_addr #2

declare ptr @IMB_colormanagement_imbuf_for_write(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare i32 @BKE_imbuf_write_stamp(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { cold }

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
!42 = !{!35, !36, i64 24}
!43 = !{!35, !36, i64 8}
!44 = !{!35, !36, i64 48}
!45 = !{!35, !36, i64 32}
!46 = !{!35, !36, i64 64}
!47 = !{!35, !36, i64 56}
!48 = !{!35, !36, i64 72}
!49 = !{!35, !36, i64 88}
!50 = !{!51, !36, i64 112}
!51 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!52 = !{i8 0, i8 2}
!53 = !{i32 0, i32 2}
!54 = !{!51, !36, i64 96}
!55 = !{!56, !57, i64 20}
!56 = !{!"wmEvent", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !57, i64 20, !57, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !41, i64 44, !41, i64 46, !57, i64 48, !57, i64 52, !58, i64 56, !57, i64 64, !57, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 106, !57, i64 108, !36, i64 112}
!57 = !{!"int", !37, i64 0}
!58 = !{!"double", !37, i64 0}
!59 = !{!56, !57, i64 24}
!60 = !{!61, !36, i64 184}
!61 = !{!"OGLRender", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !37, i64 64, !36, i64 72, !36, i64 80, !62, i64 88, !36, i64 128, !57, i64 136, !57, i64 140, !57, i64 144, !36, i64 152, !36, i64 160, !57, i64 168, !57, i64 172, !36, i64 176, !36, i64 184, !36, i64 192}
!62 = !{!"ImageUser", !36, i64 0, !57, i64 8, !57, i64 12, !57, i64 16, !57, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !41, i64 28, !41, i64 30, !41, i64 32, !41, i64 34, !57, i64 36}
!63 = !{!61, !36, i64 176}
!64 = !{!61, !36, i64 192}
!65 = distinct !{!65, !66, !67}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = !{!56, !41, i64 16}
!69 = !{!56, !36, i64 112}
!70 = !{!61, !36, i64 16}
!71 = !{!72, !37, i64 2081}
!72 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !57, i64 2096, !57, i64 2100, !37, i64 2104, !57, i64 2108, !57, i64 2112, !37, i64 2116}
!73 = !{!51, !36, i64 120}
!74 = !{!75, !36, i64 128}
!75 = !{!"Scene", !76, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !57, i64 232, !57, i64 236, !57, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !77, i64 280, !87, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !57, i64 4380, !39, i64 4384, !88, i64 4400, !89, i64 4416, !92, i64 4600, !36, i64 4608, !93, i64 4616, !36, i64 4640, !94, i64 4648, !94, i64 4656, !80, i64 4664, !81, i64 4824, !95, i64 4888, !36, i64 4952}
!76 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !57, i64 100, !57, i64 104, !57, i64 108, !36, i64 112}
!77 = !{!"RenderData", !78, i64 0, !36, i64 248, !36, i64 256, !82, i64 264, !83, i64 328, !57, i64 400, !57, i64 404, !57, i64 408, !79, i64 412, !57, i64 416, !57, i64 420, !57, i64 424, !57, i64 428, !41, i64 432, !41, i64 434, !79, i64 436, !79, i64 440, !79, i64 444, !79, i64 448, !79, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !57, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !57, i64 484, !57, i64 488, !41, i64 492, !41, i64 494, !57, i64 496, !57, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !57, i64 516, !57, i64 520, !57, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !84, i64 544, !84, i64 560, !85, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !79, i64 612, !79, i64 616, !79, i64 620, !79, i64 624, !57, i64 628, !79, i64 632, !79, i64 636, !79, i64 640, !79, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !79, i64 660, !79, i64 664, !41, i64 668, !41, i64 670, !79, i64 672, !79, i64 676, !37, i64 680, !57, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !57, i64 2520, !41, i64 2524, !41, i64 2526, !79, i64 2528, !79, i64 2532, !41, i64 2536, !41, i64 2538, !79, i64 2540, !41, i64 2544, !41, i64 2546, !57, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !79, i64 2560, !79, i64 2564, !36, i64 2568, !57, i64 2576, !79, i64 2580, !37, i64 2584, !86, i64 2616, !57, i64 3976, !57, i64 3980}
!78 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !79, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !80, i64 24, !81, i64 184}
!79 = !{!"float", !37, i64 0}
!80 = !{!"ColorManagedViewSettings", !57, i64 0, !57, i64 4, !37, i64 8, !37, i64 72, !79, i64 136, !79, i64 140, !36, i64 144, !36, i64 152}
!81 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!82 = !{!"QuicktimeCodecSettings", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12, !57, i64 16, !57, i64 20, !57, i64 24, !57, i64 28, !57, i64 32, !57, i64 36, !57, i64 40, !57, i64 44, !41, i64 48, !41, i64 50, !57, i64 52, !57, i64 56, !57, i64 60}
!83 = !{!"FFMpegCodecData", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12, !57, i64 16, !57, i64 20, !57, i64 24, !57, i64 28, !79, i64 32, !57, i64 36, !57, i64 40, !57, i64 44, !57, i64 48, !57, i64 52, !57, i64 56, !57, i64 60, !36, i64 64}
!84 = !{!"rctf", !79, i64 0, !79, i64 4, !79, i64 8, !79, i64 12}
!85 = !{!"rcti", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12}
!86 = !{!"BakeData", !78, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !79, i64 1280, !79, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!87 = !{!"AudioData", !57, i64 0, !79, i64 4, !79, i64 8, !79, i64 12, !57, i64 16, !41, i64 20, !41, i64 22, !79, i64 24, !79, i64 28}
!88 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!89 = !{!"GameData", !88, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !90, i64 40, !41, i64 64, !41, i64 66, !79, i64 68, !91, i64 72, !79, i64 128, !79, i64 132, !57, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !79, i64 164, !79, i64 168, !79, i64 172, !79, i64 176, !79, i64 180}
!90 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !79, i64 8, !79, i64 12, !36, i64 16}
!91 = !{!"RecastData", !79, i64 0, !79, i64 4, !79, i64 8, !79, i64 12, !79, i64 16, !79, i64 20, !79, i64 24, !79, i64 28, !79, i64 32, !79, i64 36, !57, i64 40, !79, i64 44, !79, i64 48, !41, i64 52, !41, i64 54}
!92 = !{!"UnitSettings", !79, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!93 = !{!"PhysicsSettings", !37, i64 0, !57, i64 12, !57, i64 16, !57, i64 20}
!94 = !{!"long", !37, i64 0}
!95 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!96 = !{!75, !37, i64 280}
!97 = !{!75, !41, i64 758}
!98 = !{!75, !57, i64 764}
!99 = !{!75, !57, i64 768}
!100 = !{!36, !36, i64 0}
!101 = !{!61, !36, i64 128}
!102 = !{!61, !57, i64 136}
!103 = !{!61, !57, i64 140}
!104 = !{!61, !36, i64 0}
!105 = !{!75, !57, i64 680}
!106 = !{!61, !57, i64 168}
!107 = !{!61, !57, i64 144}
!108 = !{!61, !37, i64 64}
!109 = !{!61, !36, i64 72}
!110 = !{!61, !36, i64 48}
!111 = !{!61, !36, i64 56}
!112 = !{!61, !36, i64 40}
!113 = !{!114, !36, i64 376}
!114 = !{!"ARegion", !36, i64 0, !36, i64 8, !115, i64 16, !85, i64 176, !85, i64 192, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !79, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!115 = !{!"View2D", !84, i64 0, !84, i64 16, !85, i64 32, !85, i64 48, !85, i64 64, !37, i64 80, !37, i64 88, !79, i64 96, !79, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !57, i64 136, !57, i64 140, !36, i64 144, !36, i64 152}
!116 = !{!61, !36, i64 32}
!117 = !{!61, !36, i64 24}
!118 = !{!75, !94, i64 4656}
!119 = !{!75, !94, i64 4648}
!120 = !{!61, !36, i64 8}
!121 = !{!61, !36, i64 80}
!122 = !{!61, !36, i64 88}
!123 = !{!61, !37, i64 114}
!124 = !{!125, !36, i64 40}
!125 = !{!"RenderResult", !36, i64 0, !36, i64 8, !57, i64 16, !57, i64 20, !41, i64 24, !41, i64 26, !36, i64 32, !36, i64 40, !36, i64 48, !85, i64 56, !57, i64 72, !57, i64 76, !39, i64 80, !85, i64 96, !36, i64 112, !57, i64 120, !57, i64 124, !57, i64 128, !36, i64 136}
!126 = !{!61, !36, i64 152}
!127 = !{!61, !36, i64 160}
!128 = !{!129, !36, i64 0}
!129 = !{!"bMovieHandle", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!130 = !{!75, !41, i64 712}
!131 = !{!57, !57, i64 0}
!132 = !{!61, !57, i64 172}
!133 = !{!129, !36, i64 16}
!134 = !{!135, !36, i64 1888}
!135 = !{!"Main", !36, i64 0, !36, i64 8, !37, i64 16, !41, i64 1040, !41, i64 1042, !41, i64 1044, !41, i64 1046, !94, i64 1048, !37, i64 1056, !41, i64 1072, !36, i64 1080, !39, i64 1088, !39, i64 1104, !39, i64 1120, !39, i64 1136, !39, i64 1152, !39, i64 1168, !39, i64 1184, !39, i64 1200, !39, i64 1216, !39, i64 1232, !39, i64 1248, !39, i64 1264, !39, i64 1280, !39, i64 1296, !39, i64 1312, !39, i64 1328, !39, i64 1344, !39, i64 1360, !39, i64 1376, !39, i64 1392, !39, i64 1408, !39, i64 1424, !39, i64 1440, !39, i64 1456, !39, i64 1472, !39, i64 1488, !39, i64 1504, !39, i64 1520, !39, i64 1536, !39, i64 1552, !39, i64 1568, !39, i64 1584, !39, i64 1600, !39, i64 1616, !37, i64 1632, !36, i64 1888, !36, i64 1896}
!136 = !{!75, !57, i64 232}
!137 = !{!138, !57, i64 224}
!138 = !{!"View3D", !36, i64 0, !36, i64 8, !39, i64 16, !57, i64 32, !79, i64 36, !37, i64 40, !37, i64 56, !79, i64 72, !79, i64 76, !37, i64 80, !37, i64 81, !57, i64 84, !57, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !36, i64 104, !84, i64 112, !39, i64 128, !36, i64 144, !36, i64 152, !37, i64 160, !57, i64 224, !57, i64 228, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !41, i64 240, !41, i64 242, !79, i64 244, !79, i64 248, !79, i64 252, !79, i64 256, !37, i64 260, !37, i64 272, !41, i64 284, !41, i64 286, !41, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !39, i64 296, !39, i64 312, !39, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !36, i64 352, !36, i64 360, !36, i64 368}
!139 = !{!75, !41, i64 816}
!140 = !{!141, !41, i64 228}
!141 = !{!"SpaceSeq", !36, i64 0, !36, i64 8, !39, i64 16, !57, i64 32, !79, i64 36, !37, i64 40, !115, i64 56, !79, i64 216, !79, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !57, i64 232, !79, i64 236, !57, i64 240, !57, i64 244, !36, i64 248, !142, i64 256}
!142 = !{!"SequencerScopes", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40}
!143 = !{!141, !57, i64 232}
!144 = !{!141, !36, i64 248}
!145 = !{!146, !36, i64 48}
!146 = !{!"ImBuf", !36, i64 0, !36, i64 8, !57, i64 16, !57, i64 20, !37, i64 24, !57, i64 28, !57, i64 32, !57, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !57, i64 72, !57, i64 76, !57, i64 80, !57, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !79, i64 112, !37, i64 120, !57, i64 280, !57, i64 284, !57, i64 288, !57, i64 292, !36, i64 296, !36, i64 304, !57, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !57, i64 2376, !36, i64 2384, !57, i64 2392, !57, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !57, i64 2432, !85, i64 2436, !147, i64 2456}
!147 = !{!"DDSData", !57, i64 0, !57, i64 4, !36, i64 8, !57, i64 16}
!148 = !{!79, !79, i64 0}
!149 = distinct !{!149, !66, !67}
!150 = !{!151, !37, i64 809}
!151 = !{!"RegionView3D", !37, i64 0, !37, i64 64, !37, i64 128, !37, i64 192, !37, i64 256, !37, i64 320, !37, i64 384, !37, i64 448, !37, i64 544, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !37, i64 696, !37, i64 760, !79, i64 776, !79, i64 780, !79, i64 784, !79, i64 788, !37, i64 792, !79, i64 804, !37, i64 808, !37, i64 809, !37, i64 810, !37, i64 811, !37, i64 812, !37, i64 813, !37, i64 816, !41, i64 824, !41, i64 826, !37, i64 828, !41, i64 844, !41, i64 846, !79, i64 848, !37, i64 852, !79, i64 864, !37, i64 868}
!152 = !{!138, !36, i64 96}
!153 = !{!84, !79, i64 0}
!154 = !{!84, !79, i64 4}
!155 = !{!84, !79, i64 8}
!156 = !{!84, !79, i64 12}
!157 = !{!75, !57, i64 800}
!158 = !{!75, !41, i64 818}
!159 = !{!37, !37, i64 0}
!160 = distinct !{!160, !66, !67}
!161 = distinct !{!161, !66, !67}
!162 = distinct !{!162, !66, !67}
!163 = distinct !{!163, !66, !67}
!164 = !{!146, !36, i64 40}
!165 = !{!146, !57, i64 36}
!166 = !{!75, !57, i64 1984}
!167 = !{!125, !57, i64 16}
!168 = !{!125, !57, i64 20}
!169 = !{!146, !57, i64 292}
!170 = !{!75, !37, i64 282}
!171 = !{!75, !57, i64 796}
!172 = distinct !{!172, !66, !67}
!173 = !{!138, !41, i64 236}
!174 = !{!146, !57, i64 16}
!175 = !{!146, !57, i64 20}
!176 = !{!146, !36, i64 104}
!177 = !{!129, !36, i64 8}
!178 = !{!75, !57, i64 748}
