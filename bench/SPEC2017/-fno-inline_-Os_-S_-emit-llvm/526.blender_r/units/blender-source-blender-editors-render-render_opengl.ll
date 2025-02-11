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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RENDER_OT_opengl(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @screen_opengl_render_invoke, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @screen_opengl_render_exec, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @screen_opengl_render_modal, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @screen_opengl_render_cancel, ptr %7, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive, ptr %8, align 8, !tbaa !19
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !20
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #10
  tail call void @RNA_def_property_flag(ptr noundef %11, i32 noundef 268435456) #10
  %12 = load ptr, ptr %9, align 8, !tbaa !20
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #10
  tail call void @RNA_def_property_flag(ptr noundef %13, i32 noundef 268435456) #10
  %14 = load ptr, ptr %9, align 8, !tbaa !20
  %15 = tail call ptr @RNA_def_boolean(ptr noundef %14, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #10
  tail call void @RNA_def_property_flag(ptr noundef %15, i32 noundef 268435456) #10
  %16 = load ptr, ptr %9, align 8, !tbaa !20
  %17 = tail call ptr @RNA_def_boolean(ptr noundef %16, ptr noundef nonnull @.str.12, i32 noundef 1, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #10
  tail call void @RNA_def_property_flag(ptr noundef %17, i32 noundef 268435456) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @screen_opengl_render_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !21
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %5, ptr noundef nonnull @.str.3) #10
  %7 = tail call fastcc zeroext i8 @screen_opengl_render_init(ptr noundef %0, ptr noundef %1) #11, !range !23
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %31, label %9

9:                                                ; preds = %3
  %10 = and i32 %6, 255
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = tail call fastcc i32 @screen_opengl_render_anim_initialize(ptr noundef %0, ptr noundef nonnull %1) #11, !range !24
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %12, %9
  %16 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !25
  %18 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %19 = load i32, ptr %18, align 4, !tbaa !26
  %20 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !30
  %22 = tail call ptr @render_view_open(ptr noundef %0, i32 noundef %19, i32 noundef %21) #10
  %23 = tail call ptr @CTX_wm_window(ptr noundef %0) #10
  %24 = getelementptr inbounds %struct.OGLRender, ptr %17, i64 0, i32 21
  store ptr %23, ptr %24, align 8, !tbaa !31
  %25 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef nonnull %1) #10
  %26 = getelementptr inbounds %struct.OGLRender, ptr %17, i64 0, i32 20
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = load ptr, ptr %24, align 8, !tbaa !31
  %29 = tail call ptr @WM_event_add_timer(ptr noundef %27, ptr noundef %28, i32 noundef 272, double noundef 0x3F847AE140000000) #10
  %30 = getelementptr inbounds %struct.OGLRender, ptr %17, i64 0, i32 22
  store ptr %29, ptr %30, align 8, !tbaa !35
  br label %31

31:                                               ; preds = %12, %3, %15
  %32 = phi i32 [ 1, %15 ], [ 2, %3 ], [ 2, %12 ]
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @screen_opengl_render_exec(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !21
  %5 = tail call i32 @RNA_boolean_get(ptr noundef %4, ptr noundef nonnull @.str.3) #10
  %6 = tail call fastcc zeroext i8 @screen_opengl_render_init(ptr noundef %0, ptr noundef %1) #11, !range !23
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %2
  %9 = and i32 %5, 255
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !25
  tail call fastcc void @screen_opengl_render_apply(ptr noundef %13) #11
  %14 = load ptr, ptr %12, align 8, !tbaa !25
  tail call fastcc void @screen_opengl_render_end(ptr noundef %0, ptr noundef %14) #11
  br label %23

15:                                               ; preds = %8
  %16 = tail call fastcc i32 @screen_opengl_render_anim_initialize(ptr noundef %0, ptr noundef nonnull %1) #11, !range !24
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %15, %18
  %19 = tail call fastcc zeroext i8 @screen_opengl_render_anim_step(ptr noundef %0, ptr noundef %1) #11, !range !23
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %18, !llvm.loop !36

21:                                               ; preds = %18
  %22 = tail call ptr @CTX_data_scene(ptr noundef %0) #10
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67895296, ptr noundef %22) #10
  br label %23

23:                                               ; preds = %15, %2, %21, %11
  %24 = phi i32 [ 4, %21 ], [ 4, %11 ], [ 2, %2 ], [ 2, %15 ]
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @screen_opengl_render_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !25
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !21
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.3) #10
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !38
  switch i16 %10, label %31 [
    i16 218, label %11
    i16 272, label %13
  ]

11:                                               ; preds = %3
  %12 = load ptr, ptr %4, align 8, !tbaa !25
  tail call fastcc void @screen_opengl_render_end(ptr noundef %0, ptr noundef %12) #11
  br label %31

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.OGLRender, ptr %5, i64 0, i32 22
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %17 = load ptr, ptr %16, align 8, !tbaa !39
  %18 = icmp eq ptr %15, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.OGLRender, ptr %5, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !40
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67895296, ptr noundef %21) #10
  %22 = and i32 %8, 255
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load ptr, ptr %4, align 8, !tbaa !25
  tail call fastcc void @screen_opengl_render_apply(ptr noundef %25) #11
  %26 = load ptr, ptr %4, align 8, !tbaa !25
  tail call fastcc void @screen_opengl_render_end(ptr noundef %0, ptr noundef %26) #11
  br label %31

27:                                               ; preds = %19
  %28 = tail call fastcc zeroext i8 @screen_opengl_render_anim_step(ptr noundef %0, ptr noundef nonnull %1) #11, !range !23
  %29 = icmp eq i8 %28, 0
  %30 = select i1 %29, i32 4, i32 1
  br label %31

31:                                               ; preds = %27, %3, %13, %24, %11
  %32 = phi i32 [ 4, %24 ], [ 4, %11 ], [ 1, %13 ], [ 1, %3 ], [ %30, %27 ]
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @screen_opengl_render_cancel(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !25
  tail call fastcc void @screen_opengl_render_end(ptr noundef %0, ptr noundef %4) #11
  ret void
}

; Function Attrs: optsize
declare i32 @ED_operator_screenactive(ptr noundef) #2

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @screen_opengl_render_init(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca [256 x i8], align 16
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #10
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #10
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #10
  %7 = tail call ptr @CTX_wm_area(ptr noundef %0) #10
  %8 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !21
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.12) #10
  %12 = load ptr, ptr %9, align 8, !tbaa !21
  %13 = tail call i32 @RNA_boolean_get(ptr noundef %12, ptr noundef nonnull @.str.3) #10
  %14 = load ptr, ptr %9, align 8, !tbaa !21
  %15 = tail call i32 @RNA_boolean_get(ptr noundef %14, ptr noundef nonnull @.str.6) #10
  %16 = trunc i32 %15 to i8
  %17 = load ptr, ptr %9, align 8, !tbaa !21
  %18 = tail call i32 @RNA_boolean_get(ptr noundef %17, ptr noundef nonnull @.str.9) #10
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %3, ptr noundef nonnull align 16 dereferenceable(256) @__const.screen_opengl_render_apply.err_out, i64 256, i1 false)
  %19 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !41
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !43
  tail call void @BKE_report(ptr noundef %23, i32 noundef 32, ptr noundef nonnull @.str.15) #10
  br label %143

24:                                               ; preds = %2
  %25 = tail call zeroext i8 @WM_jobs_test(ptr noundef %4, ptr noundef %6, i32 noundef 2) #10
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %143

27:                                               ; preds = %24
  %28 = icmp eq i8 %16, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %27
  %30 = tail call zeroext i8 @ED_view3d_context_activate(ptr noundef %0) #10
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load ptr, ptr %9, align 8, !tbaa !21
  tail call void @RNA_boolean_set(ptr noundef %33, ptr noundef nonnull @.str.12, i32 noundef 0) #10
  br label %37

34:                                               ; preds = %29
  %35 = and i32 %11, 255
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32, %34
  %38 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !44
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %43 = load ptr, ptr %42, align 8, !tbaa !43
  tail call void @BKE_report(ptr noundef %43, i32 noundef 32, ptr noundef nonnull @.str.16) #10
  br label %143

44:                                               ; preds = %27, %34, %37
  %45 = phi i1 [ false, %34 ], [ true, %37 ], [ true, %27 ]
  %46 = and i32 %13, 255
  %47 = icmp eq i32 %46, 0
  %48 = and i32 %18, 255
  %49 = icmp ne i32 %48, 0
  %50 = select i1 %47, i1 %49, i1 false
  br i1 %50, label %51, label %59

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22
  %53 = load i8, ptr %52, align 8, !tbaa !66
  %54 = tail call zeroext i8 @BKE_imtype_is_movie(i8 noundef zeroext %53) #10
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %58 = load ptr, ptr %57, align 8, !tbaa !43
  tail call void @BKE_report(ptr noundef %58, i32 noundef 32, ptr noundef nonnull @.str.17) #10
  br label %143

59:                                               ; preds = %51, %44
  %60 = tail call ptr @CTX_wm_screen(ptr noundef %0) #10
  tail call void @WM_jobs_kill_all_except(ptr noundef %4, ptr noundef %60) #10
  %61 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22
  %62 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 30
  %63 = load i16, ptr %62, align 2, !tbaa !67
  %64 = sext i16 %63 to i32
  %65 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 33
  %66 = load i32, ptr %65, align 4, !tbaa !68
  %67 = mul nsw i32 %66, %64
  %68 = sdiv i32 %67, 100
  %69 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 34
  %70 = load i32, ptr %69, align 8, !tbaa !69
  %71 = mul nsw i32 %70, %64
  %72 = sdiv i32 %71, 100
  %73 = call ptr @GPU_offscreen_create(i32 noundef %68, i32 noundef %72, ptr noundef nonnull %3) #10
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %59
  %76 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %77 = load ptr, ptr %76, align 8, !tbaa !43
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %77, i32 noundef 32, ptr noundef nonnull @.str.18, ptr noundef nonnull %3) #10
  br label %143

78:                                               ; preds = %59
  %79 = load ptr, ptr @MEM_callocN, align 8, !tbaa !70
  %80 = call ptr %79(i64 noundef 200, ptr noundef nonnull @.str.19) #10
  %81 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %80, ptr %81, align 8, !tbaa !25
  %82 = getelementptr inbounds %struct.OGLRender, ptr %80, i64 0, i32 12
  store ptr %73, ptr %82, align 8, !tbaa !71
  %83 = getelementptr inbounds %struct.OGLRender, ptr %80, i64 0, i32 13
  store i32 %68, ptr %83, align 8, !tbaa !72
  %84 = getelementptr inbounds %struct.OGLRender, ptr %80, i64 0, i32 14
  store i32 %72, ptr %84, align 4, !tbaa !73
  %85 = call ptr @CTX_data_main(ptr noundef %0) #10
  store ptr %85, ptr %80, align 8, !tbaa !74
  %86 = getelementptr inbounds %struct.OGLRender, ptr %80, i64 0, i32 2
  store ptr %6, ptr %86, align 8, !tbaa !40
  %87 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 5
  %88 = load i32, ptr %87, align 8, !tbaa !75
  %89 = getelementptr inbounds %struct.OGLRender, ptr %80, i64 0, i32 18
  store i32 %88, ptr %89, align 8, !tbaa !76
  %90 = and i1 %47, %49
  %91 = zext i1 %90 to i32
  %92 = getelementptr inbounds %struct.OGLRender, ptr %80, i64 0, i32 15
  store i32 %91, ptr %92, align 8, !tbaa !77
  %93 = getelementptr inbounds %struct.OGLRender, ptr %80, i64 0, i32 8
  store i8 %16, ptr %93, align 8, !tbaa !78
  br i1 %28, label %97, label %94

94:                                               ; preds = %78
  %95 = call ptr @CTX_wm_space_seq(ptr noundef %0) #10
  %96 = getelementptr inbounds %struct.OGLRender, ptr %80, i64 0, i32 9
  store ptr %95, ptr %96, align 8, !tbaa !79
  br label %97

97:                                               ; preds = %94, %78
  %98 = getelementptr inbounds %struct.OGLRender, ptr %80, i64 0, i32 6
  store ptr %7, ptr %98, align 8, !tbaa !80
  %99 = getelementptr inbounds %struct.OGLRender, ptr %80, i64 0, i32 7
  store ptr %8, ptr %99, align 8, !tbaa !81
  br i1 %45, label %116, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.OGLRender, ptr %80, i64 0, i32 3
  %102 = getelementptr inbounds %struct.OGLRender, ptr %80, i64 0, i32 5
  %103 = call zeroext i8 @ED_view3d_context_user_region(ptr noundef %0, ptr noundef nonnull %101, ptr noundef nonnull %102) #10
  %104 = load ptr, ptr %102, align 8, !tbaa !82
  %105 = getelementptr inbounds %struct.ARegion, ptr %104, i64 0, i32 30
  %106 = load ptr, ptr %105, align 8, !tbaa !83
  %107 = getelementptr inbounds %struct.OGLRender, ptr %80, i64 0, i32 4
  store ptr %106, ptr %107, align 8, !tbaa !86
  %108 = load ptr, ptr %86, align 8, !tbaa !40
  %109 = load ptr, ptr %101, align 8, !tbaa !87
  %110 = call i64 @ED_view3d_datamask(ptr noundef %108, ptr noundef %109) #10
  %111 = load ptr, ptr %86, align 8, !tbaa !40
  %112 = getelementptr inbounds %struct.Scene, ptr %111, i64 0, i32 43
  store i64 %110, ptr %112, align 8, !tbaa !88
  %113 = getelementptr inbounds %struct.Scene, ptr %111, i64 0, i32 42
  %114 = load i64, ptr %113, align 8, !tbaa !89
  %115 = or i64 %114, %110
  store i64 %115, ptr %113, align 8, !tbaa !89
  br label %116

116:                                              ; preds = %100, %97
  %117 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 4
  %118 = call ptr @RE_NewRender(ptr noundef nonnull %117) #10
  %119 = getelementptr inbounds %struct.OGLRender, ptr %80, i64 0, i32 1
  store ptr %118, ptr %119, align 8, !tbaa !90
  %120 = call ptr @BKE_image_verify_viewer(i32 noundef 4, ptr noundef nonnull @.str.20) #10
  %121 = getelementptr inbounds %struct.OGLRender, ptr %80, i64 0, i32 10
  store ptr %120, ptr %121, align 8, !tbaa !91
  call void @BKE_image_signal(ptr noundef %120, ptr noundef null, i32 noundef 1) #10
  %122 = load ptr, ptr %86, align 8, !tbaa !40
  %123 = load ptr, ptr %121, align 8, !tbaa !91
  call void @BKE_image_backup_render(ptr noundef %122, ptr noundef %123) #10
  %124 = getelementptr inbounds %struct.OGLRender, ptr %80, i64 0, i32 11
  store ptr %6, ptr %124, align 8, !tbaa !92
  %125 = getelementptr inbounds %struct.OGLRender, ptr %80, i64 0, i32 11, i32 7
  store i8 1, ptr %125, align 2, !tbaa !93
  %126 = load ptr, ptr %119, align 8, !tbaa !90
  call void @RE_InitState(ptr noundef %126, ptr noundef null, ptr noundef nonnull %61, ptr noundef null, i32 noundef %68, i32 noundef %72, ptr noundef null) #10
  %127 = load ptr, ptr %119, align 8, !tbaa !90
  %128 = call ptr @RE_AcquireResultWrite(ptr noundef %127) #10
  %129 = getelementptr inbounds %struct.RenderResult, ptr %128, i64 0, i32 7
  %130 = load ptr, ptr %129, align 8, !tbaa !94
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %139

132:                                              ; preds = %116
  %133 = load ptr, ptr @MEM_callocN, align 8, !tbaa !70
  %134 = sext i32 %68 to i64
  %135 = shl nsw i64 %134, 4
  %136 = sext i32 %72 to i64
  %137 = mul nsw i64 %135, %136
  %138 = call ptr %133(i64 noundef %137, ptr noundef nonnull @.str.21) #10
  store ptr %138, ptr %129, align 8, !tbaa !94
  br label %139

139:                                              ; preds = %132, %116
  %140 = load ptr, ptr %119, align 8, !tbaa !90
  call void @RE_ReleaseResult(ptr noundef %140) #10
  %141 = getelementptr inbounds %struct.OGLRender, ptr %80, i64 0, i32 20
  store ptr %4, ptr %141, align 8, !tbaa !34
  %142 = getelementptr inbounds %struct.OGLRender, ptr %80, i64 0, i32 21
  store ptr %5, ptr %142, align 8, !tbaa !31
  br label %143

143:                                              ; preds = %24, %139, %75, %56, %41, %21
  %144 = phi i8 [ 0, %21 ], [ 0, %56 ], [ 1, %139 ], [ 0, %75 ], [ 0, %41 ], [ 0, %24 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #12
  ret i8 %144
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @screen_opengl_render_anim_initialize(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !25
  %5 = getelementptr inbounds %struct.OGLRender, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = getelementptr inbounds %struct.OGLRender, ptr %4, i64 0, i32 16
  store ptr %8, ptr %9, align 8, !tbaa !96
  %10 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22
  %11 = load i8, ptr %10, align 8, !tbaa !66
  %12 = tail call ptr @BKE_movie_handle_get(i8 noundef zeroext %11) #10
  %13 = getelementptr inbounds %struct.OGLRender, ptr %4, i64 0, i32 17
  store ptr %12, ptr %13, align 8, !tbaa !97
  %14 = load i8, ptr %10, align 8, !tbaa !66
  %15 = tail call zeroext i8 @BKE_imtype_is_movie(i8 noundef zeroext %14) #10
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %2
  %18 = load ptr, ptr %13, align 8, !tbaa !97
  %19 = load ptr, ptr %18, align 8, !tbaa !98
  %20 = getelementptr inbounds %struct.OGLRender, ptr %4, i64 0, i32 13
  %21 = load i32, ptr %20, align 8, !tbaa !72
  %22 = getelementptr inbounds %struct.OGLRender, ptr %4, i64 0, i32 14
  %23 = load i32, ptr %22, align 4, !tbaa !73
  %24 = load ptr, ptr %9, align 8, !tbaa !96
  %25 = tail call i32 %19(ptr noundef nonnull %6, ptr noundef nonnull %10, i32 noundef %21, i32 noundef %23, ptr noundef %24) #10
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  tail call fastcc void @screen_opengl_render_end(ptr noundef %0, ptr noundef nonnull %4) #11
  br label %41

28:                                               ; preds = %17, %2
  %29 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 5
  %30 = load i32, ptr %29, align 8, !tbaa !75
  %31 = getelementptr inbounds %struct.OGLRender, ptr %4, i64 0, i32 18
  store i32 %30, ptr %31, align 8, !tbaa !76
  %32 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 13
  %33 = load i16, ptr %32, align 8, !tbaa !100
  %34 = and i16 %33, 1
  %35 = icmp eq i16 %34, 0
  %36 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 9
  %37 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 6
  %38 = select i1 %35, ptr %37, ptr %36
  %39 = load i32, ptr %38, align 4, !tbaa !101
  %40 = getelementptr inbounds %struct.OGLRender, ptr %4, i64 0, i32 19
  store i32 %39, ptr %40, align 4, !tbaa !102
  store i32 %39, ptr %29, align 8, !tbaa !75
  br label %41

41:                                               ; preds = %28, %27
  %42 = phi i32 [ 1, %28 ], [ 0, %27 ]
  ret i32 %42
}

; Function Attrs: optsize
declare ptr @render_view_open(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_event_add_timer(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @WM_jobs_test(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_view3d_context_activate(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_imtype_is_movie(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_jobs_kill_all_except(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GPU_offscreen_create(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_space_seq(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_view3d_context_user_region(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @ED_view3d_datamask(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RE_NewRender(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_image_verify_viewer(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_image_signal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_image_backup_render(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RE_InitState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RE_AcquireResultWrite(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RE_ReleaseResult(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_movie_handle_get(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @screen_opengl_render_end(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.OGLRender, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = getelementptr inbounds %struct.OGLRender, ptr %1, i64 0, i32 17
  %7 = load ptr, ptr %6, align 8, !tbaa !97
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22
  %11 = load i8, ptr %10, align 8, !tbaa !66
  %12 = tail call zeroext i8 @BKE_imtype_is_movie(i8 noundef zeroext %11) #10
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr %6, align 8, !tbaa !97
  %16 = getelementptr inbounds %struct.bMovieHandle, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !103
  tail call void %17() #10
  br label %18

18:                                               ; preds = %9, %14, %2
  %19 = getelementptr inbounds %struct.OGLRender, ptr %1, i64 0, i32 22
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  %21 = icmp eq ptr %20, null
  br i1 %21, label %34, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.OGLRender, ptr %1, i64 0, i32 18
  %24 = load i32, ptr %23, align 8, !tbaa !76
  %25 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 5
  store i32 %24, ptr %25, align 8, !tbaa !75
  %26 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 46
  %27 = load ptr, ptr %26, align 8, !tbaa !104
  %28 = tail call fastcc i32 @screen_opengl_layers(ptr noundef nonnull %1) #11
  tail call void @BKE_scene_update_for_newframe(ptr noundef %27, ptr noundef %3, ptr noundef %5, i32 noundef %28) #10
  %29 = getelementptr inbounds %struct.OGLRender, ptr %1, i64 0, i32 20
  %30 = load ptr, ptr %29, align 8, !tbaa !34
  %31 = getelementptr inbounds %struct.OGLRender, ptr %1, i64 0, i32 21
  %32 = load ptr, ptr %31, align 8, !tbaa !31
  %33 = load ptr, ptr %19, align 8, !tbaa !35
  tail call void @WM_event_remove_timer(ptr noundef %30, ptr noundef %32, ptr noundef %33) #10
  br label %34

34:                                               ; preds = %22, %18
  %35 = getelementptr inbounds %struct.OGLRender, ptr %1, i64 0, i32 21
  %36 = load ptr, ptr %35, align 8, !tbaa !31
  tail call void @WM_cursor_modal_restore(ptr noundef %36) #10
  %37 = load ptr, ptr %4, align 8, !tbaa !40
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67895296, ptr noundef %37) #10
  %38 = getelementptr inbounds %struct.OGLRender, ptr %1, i64 0, i32 12
  %39 = load ptr, ptr %38, align 8, !tbaa !71
  tail call void @GPU_offscreen_free(ptr noundef %39) #10
  %40 = load ptr, ptr %4, align 8, !tbaa !40
  %41 = getelementptr inbounds %struct.Scene, ptr %40, i64 0, i32 43
  store i64 0, ptr %41, align 8, !tbaa !88
  %42 = getelementptr inbounds %struct.OGLRender, ptr %1, i64 0, i32 6
  %43 = load ptr, ptr %42, align 8, !tbaa !80
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef %43) #10
  %44 = getelementptr inbounds %struct.OGLRender, ptr %1, i64 0, i32 7
  %45 = load ptr, ptr %44, align 8, !tbaa !81
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef %45) #10
  %46 = load ptr, ptr @MEM_freeN, align 8, !tbaa !70
  tail call void %46(ptr noundef nonnull %1) #10
  ret void
}

; Function Attrs: optsize
declare void @BKE_scene_update_for_newframe(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @screen_opengl_layers(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.OGLRender, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !87
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.OGLRender, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 12
  %8 = load i32, ptr %7, align 8, !tbaa !106
  br i1 %4, label %13, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 22
  %11 = load i32, ptr %10, align 8, !tbaa !107
  %12 = or i32 %11, %8
  br label %13

13:                                               ; preds = %1, %9
  %14 = phi i32 [ %12, %9 ], [ %8, %1 ]
  ret i32 %14
}

; Function Attrs: optsize
declare void @WM_event_remove_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_cursor_modal_restore(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_offscreen_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CTX_wm_area_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CTX_wm_region_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
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
  %13 = load ptr, ptr %12, align 8, !tbaa !40
  %14 = getelementptr inbounds %struct.OGLRender, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !82
  %16 = getelementptr inbounds %struct.OGLRender, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !87
  %18 = getelementptr inbounds %struct.OGLRender, ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  %20 = getelementptr inbounds %struct.OGLRender, ptr %0, i64 0, i32 13
  %21 = load i32, ptr %20, align 8, !tbaa !72
  %22 = getelementptr inbounds %struct.OGLRender, ptr %0, i64 0, i32 14
  %23 = load i32, ptr %22, align 4, !tbaa !73
  %24 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 22
  %25 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 22, i32 53
  %26 = load i16, ptr %25, align 8, !tbaa !109
  %27 = icmp eq i16 %26, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.OGLRender, ptr %0, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !90
  %31 = tail call ptr @RE_AcquireResultRead(ptr noundef %30) #10
  %32 = getelementptr inbounds %struct.OGLRender, ptr %0, i64 0, i32 8
  %33 = load i8, ptr %32, align 8, !tbaa !78
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %114, label %35

35:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #12
  %36 = getelementptr inbounds %struct.OGLRender, ptr %0, i64 0, i32 9
  %37 = load ptr, ptr %36, align 8, !tbaa !79
  %38 = icmp eq ptr %37, null
  br i1 %38, label %50, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.SpaceSeq, ptr %37, i64 0, i32 11
  %41 = load i16, ptr %40, align 4, !tbaa !110
  %42 = sext i16 %41 to i32
  %43 = getelementptr inbounds %struct.SpaceSeq, ptr %37, i64 0, i32 13
  %44 = load i32, ptr %43, align 8, !tbaa !113
  %45 = and i32 %44, 16
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.SpaceSeq, ptr %37, i64 0, i32 17
  %49 = load ptr, ptr %48, align 8, !tbaa !114
  br label %50

50:                                               ; preds = %35, %39, %47
  %51 = phi i32 [ %42, %47 ], [ %42, %39 ], [ 0, %35 ]
  %52 = phi ptr [ %49, %47 ], [ null, %39 ], [ null, %35 ]
  %53 = load ptr, ptr %0, align 8, !tbaa !74
  %54 = getelementptr inbounds %struct.Main, ptr %53, i64 0, i32 46
  %55 = load ptr, ptr %54, align 8, !tbaa !104
  %56 = load i32, ptr %20, align 8, !tbaa !72
  %57 = load i32, ptr %22, align 4, !tbaa !73
  call void @BKE_sequencer_new_render_data(ptr dead_on_unwind nonnull writable sret(%struct.SeqRenderData) align 8 %4, ptr noundef %55, ptr noundef %53, ptr noundef nonnull %13, i32 noundef %56, i32 noundef %57, i32 noundef 100) #10
  %58 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 22, i32 5
  %59 = load i32, ptr %58, align 8, !tbaa !75
  %60 = sitofp i32 %59 to float
  %61 = call ptr @BKE_sequencer_give_ibuf(ptr noundef nonnull %4, float noundef %60, i32 noundef %51) #10
  %62 = icmp eq ptr %61, null
  br i1 %62, label %80, label %63

63:                                               ; preds = %50
  %64 = call ptr @IMB_dupImBuf(ptr noundef nonnull %61) #10
  call void @IMB_freeImBuf(ptr noundef nonnull %61) #10
  %65 = getelementptr inbounds %struct.ImBuf, ptr %64, i64 0, i32 9
  %66 = load ptr, ptr %65, align 8, !tbaa !115
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  call void @IMB_float_from_rect(ptr noundef nonnull %64) #10
  br label %70

69:                                               ; preds = %63
  call void @BKE_sequencer_imbuf_from_sequencer_space(ptr noundef nonnull %13, ptr noundef nonnull %64) #10
  br label %70

70:                                               ; preds = %69, %68
  %71 = getelementptr inbounds %struct.RenderResult, ptr %31, i64 0, i32 7
  %72 = load ptr, ptr %71, align 8, !tbaa !94
  %73 = load ptr, ptr %65, align 8, !tbaa !115
  %74 = load i32, ptr %20, align 8, !tbaa !72
  %75 = sext i32 %74 to i64
  %76 = shl nsw i64 %75, 4
  %77 = load i32, ptr %22, align 4, !tbaa !73
  %78 = sext i32 %77 to i64
  %79 = mul i64 %76, %78
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %72, ptr align 4 %73, i64 %79, i1 false)
  call void @IMB_freeImBuf(ptr noundef nonnull %64) #10
  br label %80

80:                                               ; preds = %70, %50
  %81 = icmp eq ptr %52, null
  br i1 %81, label %113, label %82

82:                                               ; preds = %80
  %83 = getelementptr inbounds %struct.OGLRender, ptr %0, i64 0, i32 12
  %84 = load ptr, ptr %83, align 8, !tbaa !71
  call void @GPU_offscreen_bind(ptr noundef %84) #10
  call void @glClearColor(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #10
  call void @glClear(i32 noundef 16640) #10
  %85 = sitofp i32 %21 to float
  %86 = sitofp i32 %23 to float
  call void @wmOrtho2(float noundef 0.000000e+00, float noundef %85, float noundef 0.000000e+00, float noundef %86) #10
  %87 = sdiv i32 %21, 2
  %88 = sitofp i32 %87 to float
  %89 = sdiv i32 %23, 2
  %90 = sitofp i32 %89 to float
  call void @glTranslatef(float noundef %88, float noundef %90, float noundef 0.000000e+00) #10
  %91 = load i32, ptr %58, align 8, !tbaa !75
  call void @ED_gpencil_draw_ex(ptr noundef nonnull %52, i32 noundef %21, i32 noundef %23, i32 noundef %91) #10
  %92 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !70
  %93 = mul nsw i32 %23, %21
  %94 = sext i32 %93 to i64
  %95 = shl nsw i64 %94, 2
  %96 = call ptr %92(i64 noundef %95, ptr noundef nonnull @.str.22) #10
  %97 = load ptr, ptr %83, align 8, !tbaa !71
  call void @GPU_offscreen_read_pixels(ptr noundef %97, i32 noundef 5121, ptr noundef %96) #10
  %98 = icmp sgt i32 %93, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %82
  %100 = shl nsw i32 %93, 2
  %101 = getelementptr inbounds %struct.RenderResult, ptr %31, i64 0, i32 7
  %102 = zext nneg i32 %100 to i64
  br label %103

103:                                              ; preds = %99, %103
  %104 = phi i64 [ 0, %99 ], [ %108, %103 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  %105 = getelementptr inbounds i8, ptr %96, i64 %104
  call void @rgba_uchar_to_float(ptr noundef nonnull %5, ptr noundef %105) #10
  %106 = load ptr, ptr %101, align 8, !tbaa !94
  %107 = getelementptr inbounds float, ptr %106, i64 %104
  call fastcc void @blend_color_mix_float(ptr noundef %107, ptr noundef %107, ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  %108 = add nuw nsw i64 %104, 4
  %109 = icmp ult i64 %108, %102
  br i1 %109, label %103, label %110, !llvm.loop !118

110:                                              ; preds = %103, %82
  %111 = load ptr, ptr %83, align 8, !tbaa !71
  call void @GPU_offscreen_unbind(ptr noundef %111) #10
  %112 = load ptr, ptr @MEM_freeN, align 8, !tbaa !70
  call void %112(ptr noundef %96) #10
  br label %113

113:                                              ; preds = %80, %110
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #12
  br label %268

114:                                              ; preds = %1
  %115 = icmp eq ptr %17, null
  br i1 %115, label %235, label %116

116:                                              ; preds = %114
  tail call void @ED_view3d_draw_offscreen_init(ptr noundef nonnull %13, ptr noundef nonnull %17) #10
  %117 = getelementptr inbounds %struct.OGLRender, ptr %0, i64 0, i32 12
  %118 = load ptr, ptr %117, align 8, !tbaa !71
  tail call void @GPU_offscreen_bind(ptr noundef %118) #10
  %119 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 25
  %120 = load i8, ptr %119, align 1, !tbaa !119
  %121 = icmp eq i8 %120, 2
  br i1 %121, label %122, label %130

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.View3D, ptr %17, i64 0, i32 15
  %124 = load ptr, ptr %123, align 8, !tbaa !121
  %125 = icmp eq ptr %124, null
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  %127 = load ptr, ptr %29, align 8, !tbaa !90
  %128 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 22, i32 5
  %129 = load i32, ptr %128, align 8, !tbaa !75
  call void @RE_GetCameraWindow(ptr noundef %127, ptr noundef nonnull %124, i32 noundef %129, ptr noundef nonnull %3) #10
  br label %147

130:                                              ; preds = %122, %116
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  %131 = call zeroext i8 @ED_view3d_viewplane_get(ptr noundef nonnull %17, ptr noundef nonnull %19, i32 noundef %21, i32 noundef %23, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef null) #10
  %132 = icmp eq i8 %131, 0
  %133 = load float, ptr %6, align 4, !tbaa !122
  %134 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 1
  %135 = load float, ptr %134, align 4, !tbaa !123
  %136 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 2
  %137 = load float, ptr %136, align 4, !tbaa !124
  %138 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 3
  %139 = load float, ptr %138, align 4, !tbaa !125
  br i1 %132, label %143, label %140

140:                                              ; preds = %130
  %141 = load float, ptr %8, align 4, !tbaa !126
  %142 = fneg float %141
  call void @orthographic_m4(ptr noundef nonnull %3, float noundef %133, float noundef %135, float noundef %137, float noundef %139, float noundef %142, float noundef %141) #10
  br label %146

143:                                              ; preds = %130
  %144 = load float, ptr %7, align 4, !tbaa !126
  %145 = load float, ptr %8, align 4, !tbaa !126
  call void @perspective_m4(ptr noundef nonnull %3, float noundef %133, float noundef %135, float noundef %137, float noundef %139, float noundef %144, float noundef %145) #10
  br label %146

146:                                              ; preds = %143, %140
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  br label %147

147:                                              ; preds = %146, %126
  %148 = phi ptr [ %124, %126 ], [ null, %146 ]
  %149 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !70
  %150 = mul nsw i32 %23, %21
  %151 = sext i32 %150 to i64
  %152 = shl nsw i64 %151, 2
  %153 = call ptr %149(i64 noundef %152, ptr noundef nonnull @.str.22) #10
  %154 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 22, i32 47
  %155 = load i32, ptr %154, align 8, !tbaa !127
  %156 = and i32 %155, 1
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %147
  call void @ED_view3d_draw_offscreen(ptr noundef nonnull %13, ptr noundef nonnull %17, ptr noundef %15, i32 noundef %21, i32 noundef %23, ptr noundef null, ptr noundef nonnull %3, i8 noundef zeroext 1, i8 noundef zeroext %28) #10
  %159 = load ptr, ptr %117, align 8, !tbaa !71
  call void @GPU_offscreen_read_pixels(ptr noundef %159, i32 noundef 5121, ptr noundef %153) #10
  br label %233

160:                                              ; preds = %147
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #12
  %161 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !70
  %162 = shl nsw i64 %151, 4
  %163 = call ptr %161(i64 noundef %162, ptr noundef nonnull @.str.23) #10
  %164 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 22, i32 54
  %165 = load i16, ptr %164, align 2, !tbaa !128
  %166 = sext i16 %165 to i32
  call void @BLI_jitter_init(ptr noundef nonnull @screen_opengl_render_apply.jit_ofs, i32 noundef %166) #10
  call void @ED_view3d_draw_offscreen(ptr noundef nonnull %13, ptr noundef nonnull %17, ptr noundef %15, i32 noundef %21, i32 noundef %23, ptr noundef null, ptr noundef nonnull %3, i8 noundef zeroext 1, i8 noundef zeroext %28) #10
  %167 = load ptr, ptr %117, align 8, !tbaa !71
  call void @GPU_offscreen_read_pixels(ptr noundef %167, i32 noundef 5121, ptr noundef %153) #10
  %168 = shl i32 %150, 2
  %169 = icmp sgt i32 %150, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %160
  %171 = call i32 @llvm.smax.i32(i32 %168, i32 1)
  %172 = zext nneg i32 %171 to i64
  br label %182

173:                                              ; preds = %182, %160
  %174 = load i16, ptr %164, align 2, !tbaa !128
  %175 = icmp sgt i16 %174, 1
  br i1 %175, label %176, label %190

176:                                              ; preds = %173
  %177 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 3
  %178 = sitofp i32 %21 to float
  %179 = sitofp i32 %23 to float
  %180 = call i32 @llvm.smax.i32(i32 %168, i32 1)
  %181 = zext nneg i32 %180 to i64
  br label %194

182:                                              ; preds = %170, %182
  %183 = phi i64 [ 0, %170 ], [ %188, %182 ]
  %184 = getelementptr inbounds i8, ptr %153, i64 %183
  %185 = load i8, ptr %184, align 1, !tbaa !129
  %186 = zext i8 %185 to i32
  %187 = getelementptr inbounds i32, ptr %163, i64 %183
  store i32 %186, ptr %187, align 4, !tbaa !101
  %188 = add nuw nsw i64 %183, 1
  %189 = icmp eq i64 %188, %172
  br i1 %189, label %173, label %182, !llvm.loop !130

190:                                              ; preds = %215, %173
  br i1 %169, label %191, label %231

191:                                              ; preds = %190
  %192 = call i32 @llvm.smax.i32(i32 %168, i32 1)
  %193 = zext nneg i32 %192 to i64
  br label %220

194:                                              ; preds = %176, %215
  %195 = phi i64 [ 1, %176 ], [ %216, %215 ]
  call void @copy_m4_m4(ptr noundef nonnull %9, ptr noundef nonnull %3) #10
  %196 = getelementptr inbounds [32 x [2 x float]], ptr @screen_opengl_render_apply.jit_ofs, i64 0, i64 %195
  %197 = load float, ptr %196, align 8, !tbaa !126
  %198 = fmul float %197, 2.000000e+00
  %199 = fdiv float %198, %178
  %200 = getelementptr inbounds [32 x [2 x float]], ptr @screen_opengl_render_apply.jit_ofs, i64 0, i64 %195, i64 1
  %201 = load float, ptr %200, align 4, !tbaa !126
  %202 = fmul float %201, 2.000000e+00
  %203 = fdiv float %202, %179
  call void @window_translate_m4(ptr noundef nonnull %9, ptr noundef nonnull %177, float noundef %199, float noundef %203) #10
  call void @ED_view3d_draw_offscreen(ptr noundef nonnull %13, ptr noundef nonnull %17, ptr noundef %15, i32 noundef %21, i32 noundef %23, ptr noundef null, ptr noundef nonnull %9, i8 noundef zeroext 1, i8 noundef zeroext %28) #10
  %204 = load ptr, ptr %117, align 8, !tbaa !71
  call void @GPU_offscreen_read_pixels(ptr noundef %204, i32 noundef 5121, ptr noundef %153) #10
  br i1 %169, label %205, label %215

205:                                              ; preds = %194, %205
  %206 = phi i64 [ %213, %205 ], [ 0, %194 ]
  %207 = getelementptr inbounds i8, ptr %153, i64 %206
  %208 = load i8, ptr %207, align 1, !tbaa !129
  %209 = zext i8 %208 to i32
  %210 = getelementptr inbounds i32, ptr %163, i64 %206
  %211 = load i32, ptr %210, align 4, !tbaa !101
  %212 = add nsw i32 %211, %209
  store i32 %212, ptr %210, align 4, !tbaa !101
  %213 = add nuw nsw i64 %206, 1
  %214 = icmp eq i64 %213, %181
  br i1 %214, label %215, label %205, !llvm.loop !131

215:                                              ; preds = %205, %194
  %216 = add nuw nsw i64 %195, 1
  %217 = load i16, ptr %164, align 2, !tbaa !128
  %218 = sext i16 %217 to i64
  %219 = icmp slt i64 %216, %218
  br i1 %219, label %194, label %190, !llvm.loop !132

220:                                              ; preds = %191, %220
  %221 = phi i64 [ 0, %191 ], [ %229, %220 ]
  %222 = getelementptr inbounds i32, ptr %163, i64 %221
  %223 = load i32, ptr %222, align 4, !tbaa !101
  %224 = load i16, ptr %164, align 2, !tbaa !128
  %225 = sext i16 %224 to i32
  %226 = sdiv i32 %223, %225
  %227 = trunc i32 %226 to i8
  %228 = getelementptr inbounds i8, ptr %153, i64 %221
  store i8 %227, ptr %228, align 1, !tbaa !129
  %229 = add nuw nsw i64 %221, 1
  %230 = icmp eq i64 %229, %193
  br i1 %230, label %231, label %220, !llvm.loop !133

231:                                              ; preds = %220, %190
  %232 = load ptr, ptr @MEM_freeN, align 8, !tbaa !70
  call void %232(ptr noundef %163) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #12
  br label %233

233:                                              ; preds = %231, %158
  %234 = load ptr, ptr %117, align 8, !tbaa !71
  call void @GPU_offscreen_unbind(ptr noundef %234) #10
  br label %256

235:                                              ; preds = %114
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %10) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %10, ptr noundef nonnull align 16 dereferenceable(256) @__const.screen_opengl_render_apply.err_out, i64 256, i1 false)
  %236 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 2
  %237 = load ptr, ptr %236, align 8, !tbaa !44
  %238 = load i32, ptr %20, align 8, !tbaa !72
  %239 = load i32, ptr %22, align 4, !tbaa !73
  %240 = xor i1 %27, true
  %241 = zext i1 %240 to i32
  %242 = call ptr @ED_view3d_draw_offscreen_imbuf_simple(ptr noundef nonnull %13, ptr noundef %237, i32 noundef %238, i32 noundef %239, i32 noundef 1, i32 noundef 3, i8 noundef zeroext 0, i8 noundef zeroext 1, i32 noundef %241, ptr noundef nonnull %10) #10
  %243 = load ptr, ptr %236, align 8, !tbaa !44
  %244 = icmp eq ptr %242, null
  br i1 %244, label %251, label %245

245:                                              ; preds = %235
  %246 = getelementptr inbounds %struct.ImBuf, ptr %242, i64 0, i32 8
  %247 = load ptr, ptr %246, align 8, !tbaa !134
  %248 = getelementptr inbounds %struct.ImBuf, ptr %242, i64 0, i32 7
  %249 = load i32, ptr %248, align 4, !tbaa !135
  %250 = and i32 %249, -2
  store i32 %250, ptr %248, align 4, !tbaa !135
  call void @IMB_freeImBuf(ptr noundef nonnull %242) #10
  br label %254

251:                                              ; preds = %235
  %252 = load ptr, ptr @stderr, align 8, !tbaa !70
  %253 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %252, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.screen_opengl_render_apply, ptr noundef nonnull %10) #13
  br label %254

254:                                              ; preds = %251, %245
  %255 = phi ptr [ %247, %245 ], [ null, %251 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %10) #12
  br label %256

256:                                              ; preds = %233, %254
  %257 = phi ptr [ %153, %233 ], [ %255, %254 ]
  %258 = phi ptr [ %148, %233 ], [ %243, %254 ]
  %259 = icmp eq ptr %257, null
  br i1 %259, label %268, label %260

260:                                              ; preds = %256
  %261 = call zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef nonnull %13) #10
  %262 = icmp eq i8 %261, 0
  %263 = select i1 %262, i32 2, i32 1
  %264 = getelementptr inbounds %struct.RenderResult, ptr %31, i64 0, i32 7
  %265 = load ptr, ptr %264, align 8, !tbaa !94
  %266 = load i32, ptr %20, align 8, !tbaa !72
  %267 = load i32, ptr %22, align 4, !tbaa !73
  call void @IMB_buffer_float_from_byte(ptr noundef %265, ptr noundef nonnull %257, i32 noundef %263, i32 noundef 2, i8 noundef zeroext 1, i32 noundef %266, i32 noundef %267, i32 noundef %266, i32 noundef %266) #10
  br label %268

268:                                              ; preds = %113, %260, %256
  %269 = phi i1 [ true, %113 ], [ false, %260 ], [ true, %256 ]
  %270 = phi ptr [ null, %113 ], [ %258, %260 ], [ %258, %256 ]
  %271 = phi ptr [ null, %113 ], [ %257, %260 ], [ null, %256 ]
  %272 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 22, i32 85
  %273 = load i32, ptr %272, align 8, !tbaa !136
  %274 = and i32 %273, 4031
  %275 = icmp eq i32 %274, 0
  %276 = and i32 %273, 64
  %277 = icmp eq i32 %276, 0
  %278 = or i1 %275, %277
  br i1 %278, label %286, label %279

279:                                              ; preds = %268
  %280 = getelementptr inbounds %struct.RenderResult, ptr %31, i64 0, i32 7
  %281 = load ptr, ptr %280, align 8, !tbaa !94
  %282 = getelementptr inbounds %struct.RenderResult, ptr %31, i64 0, i32 2
  %283 = load i32, ptr %282, align 8, !tbaa !137
  %284 = getelementptr inbounds %struct.RenderResult, ptr %31, i64 0, i32 3
  %285 = load i32, ptr %284, align 4, !tbaa !138
  call void @BKE_stamp_buf(ptr noundef nonnull %13, ptr noundef %270, ptr noundef %271, ptr noundef %281, i32 noundef %283, i32 noundef %285, i32 noundef 4) #10
  br label %286

286:                                              ; preds = %279, %268
  %287 = load ptr, ptr %29, align 8, !tbaa !90
  call void @RE_ReleaseResult(ptr noundef %287) #10
  %288 = getelementptr inbounds %struct.OGLRender, ptr %0, i64 0, i32 10
  %289 = load ptr, ptr %288, align 8, !tbaa !91
  %290 = getelementptr inbounds %struct.OGLRender, ptr %0, i64 0, i32 11
  %291 = call ptr @BKE_image_acquire_ibuf(ptr noundef %289, ptr noundef nonnull %290, ptr noundef nonnull %2) #10
  %292 = icmp eq ptr %291, null
  br i1 %292, label %320, label %293

293:                                              ; preds = %286
  %294 = getelementptr inbounds %struct.ImBuf, ptr %291, i64 0, i32 23
  %295 = load i32, ptr %294, align 4, !tbaa !139
  %296 = or i32 %295, 16
  store i32 %296, ptr %294, align 4, !tbaa !139
  %297 = getelementptr inbounds %struct.OGLRender, ptr %0, i64 0, i32 15
  %298 = load i32, ptr %297, align 8, !tbaa !77
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %320, label %300

300:                                              ; preds = %293
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %11) #12
  %301 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 22, i32 0, i32 2
  %302 = load i8, ptr %301, align 2, !tbaa !140
  %303 = icmp eq i8 %302, 2
  br i1 %303, label %304, label %305

304:                                              ; preds = %300
  call void @IMB_color_to_bw(ptr noundef nonnull %291) #10
  br label %305

305:                                              ; preds = %304, %300
  %306 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 22, i32 84
  %307 = load ptr, ptr %0, align 8, !tbaa !74
  %308 = getelementptr inbounds %struct.Main, ptr %307, i64 0, i32 2
  %309 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 22, i32 5
  %310 = load i32, ptr %309, align 8, !tbaa !75
  %311 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 22, i32 46
  %312 = load i32, ptr %311, align 4, !tbaa !141
  %313 = trunc i32 %312 to i8
  %314 = lshr i8 %313, 4
  %315 = and i8 %314, 1
  call void @BKE_makepicstring(ptr noundef nonnull %11, ptr noundef nonnull %306, ptr noundef nonnull %308, i32 noundef %310, ptr noundef nonnull %24, i8 noundef zeroext %315, i8 noundef zeroext 0) #10
  %316 = call i32 @BKE_imbuf_write_as(ptr noundef nonnull %291, ptr noundef nonnull %11, ptr noundef nonnull %24, i8 noundef zeroext 1) #10
  %317 = icmp eq i32 %316, 0
  %318 = select i1 %317, ptr @.str.26, ptr @.str.25
  %319 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %318, ptr noundef nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %11) #12
  br label %320

320:                                              ; preds = %293, %305, %286
  %321 = load ptr, ptr %288, align 8, !tbaa !91
  %322 = load ptr, ptr %2, align 8, !tbaa !70
  call void @BKE_image_release_ibuf(ptr noundef %321, ptr noundef %291, ptr noundef %322) #10
  br i1 %269, label %325, label %323

323:                                              ; preds = %320
  %324 = load ptr, ptr @MEM_freeN, align 8, !tbaa !70
  call void %324(ptr noundef nonnull %271) #10
  br label %325

325:                                              ; preds = %323, %320
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @screen_opengl_render_anim_step(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = tail call ptr @CTX_data_main(ptr noundef %0) #10
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !25
  %8 = getelementptr inbounds %struct.OGLRender, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #12
  %10 = getelementptr inbounds %struct.OGLRender, ptr %7, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !87
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22
  %14 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !75
  %16 = getelementptr inbounds %struct.OGLRender, ptr %7, i64 0, i32 19
  %17 = load i32, ptr %16, align 4, !tbaa !102
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = add nsw i32 %15, 1
  store i32 %20, ptr %14, align 8, !tbaa !75
  br label %21

21:                                               ; preds = %19, %2
  %22 = phi i32 [ %20, %19 ], [ %15, %2 ]
  %23 = icmp slt i32 %22, %17
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 46
  br label %26

26:                                               ; preds = %24, %26
  %27 = tail call fastcc i32 @screen_opengl_layers(ptr noundef nonnull %7) #11
  %28 = and i32 %27, -16777216
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 %27, i32 %28
  %31 = load ptr, ptr %25, align 8, !tbaa !104
  tail call void @BKE_scene_update_for_newframe(ptr noundef %31, ptr noundef %5, ptr noundef nonnull %9, i32 noundef %30) #10
  %32 = load i32, ptr %14, align 8, !tbaa !75
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %14, align 8, !tbaa !75
  %34 = load i32, ptr %16, align 4, !tbaa !102
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %26, label %36, !llvm.loop !142

36:                                               ; preds = %26, %21
  %37 = load i8, ptr %13, align 8, !tbaa !66
  %38 = tail call zeroext i8 @BKE_imtype_is_movie(i8 noundef zeroext %37) #10
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 84
  %42 = load ptr, ptr %7, align 8, !tbaa !74
  %43 = getelementptr inbounds %struct.Main, ptr %42, i64 0, i32 2
  %44 = load i32, ptr %14, align 8, !tbaa !75
  %45 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 46
  %46 = load i32, ptr %45, align 4, !tbaa !141
  %47 = trunc i32 %46 to i8
  %48 = lshr i8 %47, 4
  %49 = and i8 %48, 1
  call void @BKE_makepicstring(ptr noundef nonnull %4, ptr noundef nonnull %41, ptr noundef nonnull %43, i32 noundef %44, ptr noundef nonnull %13, i8 noundef zeroext %49, i8 noundef zeroext 1) #10
  %50 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 47
  %51 = load i32, ptr %50, align 8, !tbaa !127
  %52 = and i32 %51, 4194304
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %40
  %55 = call i32 @BLI_exists(ptr noundef nonnull %4) #10
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %59 = load ptr, ptr %58, align 8, !tbaa !43
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %59, i32 noundef 2, ptr noundef nonnull @.str.27, ptr noundef nonnull %4) #10
  br label %193

60:                                               ; preds = %40, %54, %36
  %61 = getelementptr inbounds %struct.OGLRender, ptr %7, i64 0, i32 21
  %62 = load ptr, ptr %61, align 8, !tbaa !31
  %63 = load i32, ptr %14, align 8, !tbaa !75
  call void @WM_cursor_time(ptr noundef %62, i32 noundef %63) #10
  %64 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 46
  %65 = load ptr, ptr %64, align 8, !tbaa !104
  %66 = call fastcc i32 @screen_opengl_layers(ptr noundef nonnull %7) #11
  call void @BKE_scene_update_for_newframe(ptr noundef %65, ptr noundef %5, ptr noundef nonnull %9, i32 noundef %66) #10
  br i1 %12, label %93, label %67

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.OGLRender, ptr %7, i64 0, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !86
  %70 = getelementptr inbounds %struct.RegionView3D, ptr %69, i64 0, i32 25
  %71 = load i8, ptr %70, align 1, !tbaa !119
  %72 = icmp eq i8 %71, 2
  br i1 %72, label %73, label %97

73:                                               ; preds = %67
  %74 = load ptr, ptr %10, align 8, !tbaa !87
  %75 = getelementptr inbounds %struct.View3D, ptr %74, i64 0, i32 15
  %76 = load ptr, ptr %75, align 8, !tbaa !121
  %77 = icmp eq ptr %76, null
  br i1 %77, label %97, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.View3D, ptr %74, i64 0, i32 26
  %80 = load i16, ptr %79, align 4, !tbaa !143
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %97, label %82

82:                                               ; preds = %78
  %83 = call i32 @BKE_scene_camera_switch_update(ptr noundef nonnull %9) #10
  %84 = icmp eq i32 %83, 0
  %85 = load ptr, ptr %10, align 8, !tbaa !87
  br i1 %84, label %86, label %89

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.View3D, ptr %85, i64 0, i32 15
  %88 = load ptr, ptr %87, align 8, !tbaa !121
  br label %97

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !44
  %92 = getelementptr inbounds %struct.View3D, ptr %85, i64 0, i32 15
  store ptr %91, ptr %92, align 8, !tbaa !121
  br label %97

93:                                               ; preds = %60
  %94 = call i32 @BKE_scene_camera_switch_update(ptr noundef nonnull %9) #10
  %95 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !44
  br label %97

97:                                               ; preds = %89, %86, %67, %73, %78, %93
  %98 = phi ptr [ null, %78 ], [ null, %73 ], [ null, %67 ], [ %96, %93 ], [ %88, %86 ], [ %91, %89 ]
  call fastcc void @screen_opengl_render_apply(ptr noundef nonnull %7) #11
  %99 = getelementptr inbounds %struct.OGLRender, ptr %7, i64 0, i32 10
  %100 = load ptr, ptr %99, align 8, !tbaa !91
  %101 = getelementptr inbounds %struct.OGLRender, ptr %7, i64 0, i32 11
  %102 = call ptr @BKE_image_acquire_ibuf(ptr noundef %100, ptr noundef nonnull %101, ptr noundef nonnull %3) #10
  %103 = icmp eq ptr %102, null
  br i1 %103, label %188, label %104

104:                                              ; preds = %97
  br i1 %39, label %105, label %109

105:                                              ; preds = %104
  %106 = load i8, ptr %13, align 8, !tbaa !66
  %107 = call i32 @BKE_imtype_requires_linear_float(i8 noundef zeroext %106) #10
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %105, %104
  %110 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 44
  %111 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 45
  %112 = call ptr @IMB_colormanagement_imbuf_for_write(ptr noundef nonnull %102, i8 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef nonnull %110, ptr noundef nonnull %111, ptr noundef nonnull %13) #10
  br label %113

113:                                              ; preds = %109, %105
  %114 = phi i1 [ false, %109 ], [ true, %105 ]
  %115 = phi ptr [ %112, %109 ], [ %102, %105 ]
  %116 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 0, i32 2
  %117 = load i8, ptr %116, align 2, !tbaa !140
  %118 = icmp eq i8 %117, 8
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = call ptr @IMB_dupImBuf(ptr noundef %115) #10
  call void @IMB_color_to_bw(ptr noundef %120) #10
  br i1 %114, label %138, label %121

121:                                              ; preds = %119
  call void @IMB_freeImBuf(ptr noundef %115) #10
  br label %138

122:                                              ; preds = %113
  %123 = getelementptr inbounds %struct.ImBuf, ptr %115, i64 0, i32 2
  %124 = load i32, ptr %123, align 8, !tbaa !144
  %125 = getelementptr inbounds %struct.ImBuf, ptr %115, i64 0, i32 3
  %126 = load i32, ptr %125, align 4, !tbaa !145
  %127 = call ptr @IMB_allocImBuf(i32 noundef %124, i32 noundef %126, i8 noundef zeroext %117, i32 noundef 0) #10
  %128 = getelementptr inbounds %struct.ImBuf, ptr %115, i64 0, i32 8
  %129 = getelementptr inbounds %struct.ImBuf, ptr %127, i64 0, i32 8
  %130 = load <2 x ptr>, ptr %128, align 8, !tbaa !70
  store <2 x ptr> %130, ptr %129, align 8, !tbaa !70
  %131 = getelementptr inbounds %struct.ImBuf, ptr %115, i64 0, i32 17
  %132 = load ptr, ptr %131, align 8, !tbaa !146
  %133 = getelementptr inbounds %struct.ImBuf, ptr %127, i64 0, i32 17
  store ptr %132, ptr %133, align 8, !tbaa !146
  br i1 %114, label %138, label %134

134:                                              ; preds = %122
  %135 = getelementptr inbounds %struct.ImBuf, ptr %115, i64 0, i32 7
  %136 = load i32, ptr %135, align 4, !tbaa !135
  %137 = getelementptr inbounds %struct.ImBuf, ptr %127, i64 0, i32 7
  store i32 %136, ptr %137, align 4, !tbaa !135
  store i32 0, ptr %135, align 4, !tbaa !135
  call void @IMB_freeImBuf(ptr noundef nonnull %115) #10
  br label %138

138:                                              ; preds = %122, %134, %119, %121
  %139 = phi ptr [ %120, %121 ], [ %120, %119 ], [ %127, %134 ], [ %127, %122 ]
  br i1 %39, label %171, label %140

140:                                              ; preds = %138
  %141 = getelementptr inbounds %struct.OGLRender, ptr %7, i64 0, i32 17
  %142 = load ptr, ptr %141, align 8, !tbaa !97
  %143 = getelementptr inbounds %struct.bMovieHandle, ptr %142, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !147
  %145 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 13
  %146 = load i16, ptr %145, align 8, !tbaa !100
  %147 = and i16 %146, 1
  %148 = icmp eq i16 %147, 0
  %149 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 9
  %150 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 6
  %151 = select i1 %148, ptr %150, ptr %149
  %152 = load i32, ptr %151, align 4, !tbaa !101
  %153 = load i32, ptr %14, align 8, !tbaa !75
  %154 = getelementptr inbounds %struct.ImBuf, ptr %139, i64 0, i32 8
  %155 = load ptr, ptr %154, align 8, !tbaa !134
  %156 = getelementptr inbounds %struct.OGLRender, ptr %7, i64 0, i32 13
  %157 = load i32, ptr %156, align 8, !tbaa !72
  %158 = getelementptr inbounds %struct.OGLRender, ptr %7, i64 0, i32 14
  %159 = load i32, ptr %158, align 4, !tbaa !73
  %160 = getelementptr inbounds %struct.OGLRender, ptr %7, i64 0, i32 16
  %161 = load ptr, ptr %160, align 8, !tbaa !96
  %162 = call i32 %144(ptr noundef nonnull %13, i32 noundef %152, i32 noundef %153, ptr noundef %155, i32 noundef %157, i32 noundef %159, ptr noundef %161) #10
  %163 = and i32 %162, 255
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %183, label %165

165:                                              ; preds = %140
  %166 = load i32, ptr %14, align 8, !tbaa !75
  %167 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef %166) #11
  %168 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %169 = load ptr, ptr %168, align 8, !tbaa !43
  %170 = load i32, ptr %14, align 8, !tbaa !75
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %169, i32 noundef 2, ptr noundef nonnull @.str.29, i32 noundef %170) #10
  br label %183

171:                                              ; preds = %138
  %172 = call i32 @BKE_imbuf_write_stamp(ptr noundef nonnull %9, ptr noundef %98, ptr noundef %139, ptr noundef nonnull %4, ptr noundef nonnull %13) #10
  %173 = trunc i32 %172 to i8
  %174 = and i32 %172, 255
  %175 = icmp eq i32 %174, 0
  %176 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  br i1 %175, label %177, label %180

177:                                              ; preds = %171
  %178 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, ptr noundef nonnull %4) #11
  %179 = load ptr, ptr %176, align 8, !tbaa !43
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %179, i32 noundef 32, ptr noundef nonnull @.str.31, ptr noundef nonnull %4) #10
  br label %183

180:                                              ; preds = %171
  %181 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, ptr noundef nonnull %4) #11
  %182 = load ptr, ptr %176, align 8, !tbaa !43
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %182, i32 noundef 2, ptr noundef nonnull @.str.33, ptr noundef nonnull %4) #10
  br label %183

183:                                              ; preds = %177, %180, %140, %165
  %184 = phi i8 [ 1, %165 ], [ 0, %140 ], [ %173, %177 ], [ %173, %180 ]
  br i1 %114, label %186, label %185

185:                                              ; preds = %183
  call void @IMB_freeImBuf(ptr noundef %139) #10
  br label %186

186:                                              ; preds = %185, %183
  %187 = icmp ne i8 %184, 0
  br label %188

188:                                              ; preds = %186, %97
  %189 = phi i1 [ %187, %186 ], [ false, %97 ]
  %190 = load ptr, ptr %99, align 8, !tbaa !91
  %191 = load ptr, ptr %3, align 8, !tbaa !70
  call void @BKE_image_release_ibuf(ptr noundef %190, ptr noundef %102, ptr noundef %191) #10
  %192 = call i32 @putchar(i32 10)
  br label %193

193:                                              ; preds = %188, %57
  %194 = phi i1 [ %189, %188 ], [ true, %57 ]
  %195 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 26
  %196 = load i32, ptr %195, align 4, !tbaa !148
  %197 = load i32, ptr %16, align 4, !tbaa !102
  %198 = add nsw i32 %197, %196
  store i32 %198, ptr %16, align 4, !tbaa !102
  %199 = load i32, ptr %14, align 8, !tbaa !75
  %200 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 13
  %201 = load i16, ptr %200, align 8, !tbaa !100
  %202 = and i16 %201, 1
  %203 = icmp eq i16 %202, 0
  %204 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 10
  %205 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 7
  %206 = select i1 %203, ptr %205, ptr %204
  %207 = load i32, ptr %206, align 4, !tbaa !101
  %208 = icmp slt i32 %199, %207
  %209 = and i1 %194, %208
  br i1 %209, label %212, label %210

210:                                              ; preds = %193
  %211 = load ptr, ptr %6, align 8, !tbaa !25
  call fastcc void @screen_opengl_render_end(ptr noundef %0, ptr noundef %211) #11
  br label %212

212:                                              ; preds = %193, %210
  %213 = phi i8 [ 0, %210 ], [ 1, %193 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  ret i8 %213
}

; Function Attrs: optsize
declare ptr @RE_AcquireResultRead(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_sequencer_new_render_data(ptr dead_on_unwind writable sret(%struct.SeqRenderData) align 8, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_sequencer_give_ibuf(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IMB_dupImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_float_from_rect(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_sequencer_imbuf_from_sequencer_space(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_offscreen_bind(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glClearColor(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glClear(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @wmOrtho2(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_gpencil_draw_ex(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_offscreen_read_pixels(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @rgba_uchar_to_float(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @blend_color_mix_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !126
  %6 = fcmp une float %5, 0.000000e+00
  br i1 %6, label %7, label %28

7:                                                ; preds = %3
  %8 = fsub float 1.000000e+00, %5
  %9 = load float, ptr %1, align 4, !tbaa !126
  %10 = load float, ptr %2, align 4, !tbaa !126
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %9, float %10)
  store float %11, ptr %0, align 4, !tbaa !126
  %12 = getelementptr inbounds float, ptr %1, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !126
  %14 = getelementptr inbounds float, ptr %2, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !126
  %16 = tail call float @llvm.fmuladd.f32(float %8, float %13, float %15)
  %17 = getelementptr inbounds float, ptr %0, i64 1
  store float %16, ptr %17, align 4, !tbaa !126
  %18 = getelementptr inbounds float, ptr %1, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !126
  %20 = getelementptr inbounds float, ptr %2, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !126
  %22 = tail call float @llvm.fmuladd.f32(float %8, float %19, float %21)
  %23 = getelementptr inbounds float, ptr %0, i64 2
  store float %22, ptr %23, align 4, !tbaa !126
  %24 = getelementptr inbounds float, ptr %1, i64 3
  %25 = load float, ptr %24, align 4, !tbaa !126
  %26 = tail call float @llvm.fmuladd.f32(float %8, float %25, float %5)
  %27 = getelementptr inbounds float, ptr %0, i64 3
  store float %26, ptr %27, align 4, !tbaa !126
  br label %29

28:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4(ptr noundef %0, ptr noundef %1) #11
  br label %29

29:                                               ; preds = %28, %7
  ret void
}

; Function Attrs: optsize
declare void @GPU_offscreen_unbind(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_view3d_draw_offscreen_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RE_GetCameraWindow(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_view3d_viewplane_get(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @orthographic_m4(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @perspective_m4(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_view3d_draw_offscreen(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_jitter_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @window_translate_m4(ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_view3d_draw_offscreen_imbuf_simple(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_buffer_float_from_byte(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_stamp_buf(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_color_to_bw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_makepicstring(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_imbuf_write_as(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 {
  %3 = load float, ptr %1, align 4, !tbaa !126
  store float %3, ptr %0, align 4, !tbaa !126
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !126
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !126
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !126
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !126
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !126
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !126
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_exists(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_cursor_time(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_scene_camera_switch_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_imtype_requires_linear_float(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IMB_colormanagement_imbuf_for_write(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_imbuf_write_stamp(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree nounwind }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind optsize }
attributes #11 = { optsize }
attributes #12 = { nounwind }
attributes #13 = { cold optsize }

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
!16 = !{!6, !7, i64 32}
!17 = !{!6, !7, i64 64}
!18 = !{!6, !7, i64 56}
!19 = !{!6, !7, i64 72}
!20 = !{!6, !7, i64 88}
!21 = !{!22, !7, i64 112}
!22 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!23 = !{i8 0, i8 2}
!24 = !{i32 0, i32 2}
!25 = !{!22, !7, i64 96}
!26 = !{!27, !28, i64 20}
!27 = !{!"wmEvent", !7, i64 0, !7, i64 8, !12, i64 16, !12, i64 18, !28, i64 20, !28, i64 24, !8, i64 28, !8, i64 36, !8, i64 42, !8, i64 43, !12, i64 44, !12, i64 46, !28, i64 48, !28, i64 52, !29, i64 56, !28, i64 64, !28, i64 68, !12, i64 72, !12, i64 74, !12, i64 76, !12, i64 78, !12, i64 80, !12, i64 82, !7, i64 88, !7, i64 96, !12, i64 104, !12, i64 106, !28, i64 108, !7, i64 112}
!28 = !{!"int", !8, i64 0}
!29 = !{!"double", !8, i64 0}
!30 = !{!27, !28, i64 24}
!31 = !{!32, !7, i64 184}
!32 = !{!"OGLRender", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !8, i64 64, !7, i64 72, !7, i64 80, !33, i64 88, !7, i64 128, !28, i64 136, !28, i64 140, !28, i64 144, !7, i64 152, !7, i64 160, !28, i64 168, !28, i64 172, !7, i64 176, !7, i64 184, !7, i64 192}
!33 = !{!"ImageUser", !7, i64 0, !28, i64 8, !28, i64 12, !28, i64 16, !28, i64 20, !8, i64 24, !8, i64 25, !8, i64 26, !8, i64 27, !12, i64 28, !12, i64 30, !12, i64 32, !12, i64 34, !28, i64 36}
!34 = !{!32, !7, i64 176}
!35 = !{!32, !7, i64 192}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!27, !12, i64 16}
!39 = !{!27, !7, i64 112}
!40 = !{!32, !7, i64 16}
!41 = !{!42, !8, i64 2081}
!42 = !{!"Global", !7, i64 0, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 2057, !8, i64 2058, !10, i64 2064, !8, i64 2080, !8, i64 2081, !8, i64 2082, !12, i64 2084, !12, i64 2086, !12, i64 2088, !8, i64 2090, !12, i64 2092, !28, i64 2096, !28, i64 2100, !8, i64 2104, !28, i64 2108, !28, i64 2112, !8, i64 2116}
!43 = !{!22, !7, i64 120}
!44 = !{!45, !7, i64 128}
!45 = !{!"Scene", !46, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !10, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !28, i64 232, !28, i64 236, !28, i64 240, !12, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !47, i64 280, !57, i64 4264, !10, i64 4296, !10, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !12, i64 4376, !12, i64 4378, !28, i64 4380, !10, i64 4384, !58, i64 4400, !59, i64 4416, !62, i64 4600, !7, i64 4608, !63, i64 4616, !7, i64 4640, !64, i64 4648, !64, i64 4656, !50, i64 4664, !51, i64 4824, !65, i64 4888, !7, i64 4952}
!46 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !28, i64 100, !28, i64 104, !28, i64 108, !7, i64 112}
!47 = !{!"RenderData", !48, i64 0, !7, i64 248, !7, i64 256, !52, i64 264, !53, i64 328, !28, i64 400, !28, i64 404, !28, i64 408, !49, i64 412, !28, i64 416, !28, i64 420, !28, i64 424, !28, i64 428, !12, i64 432, !12, i64 434, !49, i64 436, !49, i64 440, !49, i64 444, !49, i64 448, !49, i64 452, !12, i64 456, !12, i64 458, !12, i64 460, !12, i64 462, !12, i64 464, !12, i64 466, !28, i64 468, !12, i64 472, !12, i64 474, !12, i64 476, !12, i64 478, !12, i64 480, !12, i64 482, !28, i64 484, !28, i64 488, !12, i64 492, !12, i64 494, !28, i64 496, !28, i64 500, !12, i64 504, !12, i64 506, !12, i64 508, !12, i64 510, !12, i64 512, !8, i64 514, !8, i64 515, !28, i64 516, !28, i64 520, !28, i64 524, !12, i64 528, !12, i64 530, !12, i64 532, !12, i64 534, !12, i64 536, !12, i64 538, !12, i64 540, !12, i64 542, !54, i64 544, !54, i64 560, !55, i64 576, !10, i64 592, !12, i64 608, !12, i64 610, !49, i64 612, !49, i64 616, !49, i64 620, !49, i64 624, !28, i64 628, !49, i64 632, !49, i64 636, !49, i64 640, !49, i64 644, !12, i64 648, !12, i64 650, !12, i64 652, !12, i64 654, !12, i64 656, !12, i64 658, !49, i64 660, !49, i64 664, !12, i64 668, !12, i64 670, !49, i64 672, !49, i64 676, !8, i64 680, !28, i64 1704, !12, i64 1708, !12, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !28, i64 2520, !12, i64 2524, !12, i64 2526, !49, i64 2528, !49, i64 2532, !12, i64 2536, !12, i64 2538, !49, i64 2540, !12, i64 2544, !12, i64 2546, !28, i64 2548, !12, i64 2552, !12, i64 2554, !12, i64 2556, !12, i64 2558, !49, i64 2560, !49, i64 2564, !7, i64 2568, !28, i64 2576, !49, i64 2580, !8, i64 2584, !56, i64 2616, !28, i64 3976, !28, i64 3980}
!48 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !12, i64 8, !12, i64 10, !49, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !50, i64 24, !51, i64 184}
!49 = !{!"float", !8, i64 0}
!50 = !{!"ColorManagedViewSettings", !28, i64 0, !28, i64 4, !8, i64 8, !8, i64 72, !49, i64 136, !49, i64 140, !7, i64 144, !7, i64 152}
!51 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!52 = !{!"QuicktimeCodecSettings", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !28, i64 16, !28, i64 20, !28, i64 24, !28, i64 28, !28, i64 32, !28, i64 36, !28, i64 40, !28, i64 44, !12, i64 48, !12, i64 50, !28, i64 52, !28, i64 56, !28, i64 60}
!53 = !{!"FFMpegCodecData", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !28, i64 16, !28, i64 20, !28, i64 24, !28, i64 28, !49, i64 32, !28, i64 36, !28, i64 40, !28, i64 44, !28, i64 48, !28, i64 52, !28, i64 56, !28, i64 60, !7, i64 64}
!54 = !{!"rctf", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12}
!55 = !{!"rcti", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12}
!56 = !{!"BakeData", !48, i64 0, !8, i64 248, !12, i64 1272, !12, i64 1274, !12, i64 1276, !12, i64 1278, !49, i64 1280, !49, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!57 = !{!"AudioData", !28, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !28, i64 16, !12, i64 20, !12, i64 22, !49, i64 24, !49, i64 28}
!58 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!59 = !{!"GameData", !58, i64 0, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !12, i64 32, !8, i64 34, !60, i64 40, !12, i64 64, !12, i64 66, !49, i64 68, !61, i64 72, !49, i64 128, !49, i64 132, !28, i64 136, !12, i64 140, !12, i64 142, !12, i64 144, !12, i64 146, !12, i64 148, !12, i64 150, !12, i64 152, !12, i64 154, !12, i64 156, !12, i64 158, !12, i64 160, !12, i64 162, !49, i64 164, !49, i64 168, !49, i64 172, !49, i64 176, !49, i64 180}
!60 = !{!"GameDome", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !49, i64 8, !49, i64 12, !7, i64 16}
!61 = !{!"RecastData", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !49, i64 24, !49, i64 28, !49, i64 32, !49, i64 36, !28, i64 40, !49, i64 44, !49, i64 48, !12, i64 52, !12, i64 54}
!62 = !{!"UnitSettings", !49, i64 0, !8, i64 4, !8, i64 5, !12, i64 6}
!63 = !{!"PhysicsSettings", !8, i64 0, !28, i64 12, !28, i64 16, !28, i64 20}
!64 = !{!"long", !8, i64 0}
!65 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!66 = !{!45, !8, i64 280}
!67 = !{!45, !12, i64 758}
!68 = !{!45, !28, i64 764}
!69 = !{!45, !28, i64 768}
!70 = !{!7, !7, i64 0}
!71 = !{!32, !7, i64 128}
!72 = !{!32, !28, i64 136}
!73 = !{!32, !28, i64 140}
!74 = !{!32, !7, i64 0}
!75 = !{!45, !28, i64 680}
!76 = !{!32, !28, i64 168}
!77 = !{!32, !28, i64 144}
!78 = !{!32, !8, i64 64}
!79 = !{!32, !7, i64 72}
!80 = !{!32, !7, i64 48}
!81 = !{!32, !7, i64 56}
!82 = !{!32, !7, i64 40}
!83 = !{!84, !7, i64 376}
!84 = !{!"ARegion", !7, i64 0, !7, i64 8, !85, i64 16, !55, i64 176, !55, i64 192, !12, i64 208, !12, i64 210, !12, i64 212, !12, i64 214, !12, i64 216, !12, i64 218, !49, i64 220, !12, i64 224, !12, i64 226, !12, i64 228, !12, i64 230, !12, i64 232, !12, i64 234, !12, i64 236, !12, i64 238, !7, i64 240, !10, i64 248, !10, i64 264, !10, i64 280, !10, i64 296, !10, i64 312, !10, i64 328, !10, i64 344, !7, i64 360, !7, i64 368, !7, i64 376}
!85 = !{!"View2D", !54, i64 0, !54, i64 16, !55, i64 32, !55, i64 48, !55, i64 64, !8, i64 80, !8, i64 88, !49, i64 96, !49, i64 100, !12, i64 104, !12, i64 106, !12, i64 108, !12, i64 110, !12, i64 112, !12, i64 114, !12, i64 116, !12, i64 118, !12, i64 120, !12, i64 122, !12, i64 124, !12, i64 126, !7, i64 128, !28, i64 136, !28, i64 140, !7, i64 144, !7, i64 152}
!86 = !{!32, !7, i64 32}
!87 = !{!32, !7, i64 24}
!88 = !{!45, !64, i64 4656}
!89 = !{!45, !64, i64 4648}
!90 = !{!32, !7, i64 8}
!91 = !{!32, !7, i64 80}
!92 = !{!32, !7, i64 88}
!93 = !{!32, !8, i64 114}
!94 = !{!95, !7, i64 40}
!95 = !{!"RenderResult", !7, i64 0, !7, i64 8, !28, i64 16, !28, i64 20, !12, i64 24, !12, i64 26, !7, i64 32, !7, i64 40, !7, i64 48, !55, i64 56, !28, i64 72, !28, i64 76, !10, i64 80, !55, i64 96, !7, i64 112, !28, i64 120, !28, i64 124, !28, i64 128, !7, i64 136}
!96 = !{!32, !7, i64 152}
!97 = !{!32, !7, i64 160}
!98 = !{!99, !7, i64 0}
!99 = !{!"bMovieHandle", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!100 = !{!45, !12, i64 712}
!101 = !{!28, !28, i64 0}
!102 = !{!32, !28, i64 172}
!103 = !{!99, !7, i64 16}
!104 = !{!105, !7, i64 1888}
!105 = !{!"Main", !7, i64 0, !7, i64 8, !8, i64 16, !12, i64 1040, !12, i64 1042, !12, i64 1044, !12, i64 1046, !64, i64 1048, !8, i64 1056, !12, i64 1072, !7, i64 1080, !10, i64 1088, !10, i64 1104, !10, i64 1120, !10, i64 1136, !10, i64 1152, !10, i64 1168, !10, i64 1184, !10, i64 1200, !10, i64 1216, !10, i64 1232, !10, i64 1248, !10, i64 1264, !10, i64 1280, !10, i64 1296, !10, i64 1312, !10, i64 1328, !10, i64 1344, !10, i64 1360, !10, i64 1376, !10, i64 1392, !10, i64 1408, !10, i64 1424, !10, i64 1440, !10, i64 1456, !10, i64 1472, !10, i64 1488, !10, i64 1504, !10, i64 1520, !10, i64 1536, !10, i64 1552, !10, i64 1568, !10, i64 1584, !10, i64 1600, !10, i64 1616, !8, i64 1632, !7, i64 1888, !7, i64 1896}
!106 = !{!45, !28, i64 232}
!107 = !{!108, !28, i64 224}
!108 = !{!"View3D", !7, i64 0, !7, i64 8, !10, i64 16, !28, i64 32, !49, i64 36, !8, i64 40, !8, i64 56, !49, i64 72, !49, i64 76, !8, i64 80, !8, i64 81, !28, i64 84, !28, i64 88, !12, i64 92, !12, i64 94, !7, i64 96, !7, i64 104, !54, i64 112, !10, i64 128, !7, i64 144, !7, i64 152, !8, i64 160, !28, i64 224, !28, i64 228, !12, i64 232, !12, i64 234, !12, i64 236, !12, i64 238, !12, i64 240, !12, i64 242, !49, i64 244, !49, i64 248, !49, i64 252, !49, i64 256, !8, i64 260, !8, i64 272, !12, i64 284, !12, i64 286, !12, i64 288, !8, i64 290, !8, i64 291, !8, i64 292, !8, i64 293, !8, i64 294, !10, i64 296, !10, i64 312, !10, i64 328, !8, i64 344, !8, i64 345, !8, i64 346, !8, i64 347, !7, i64 352, !7, i64 360, !7, i64 368}
!109 = !{!45, !12, i64 816}
!110 = !{!111, !12, i64 228}
!111 = !{!"SpaceSeq", !7, i64 0, !7, i64 8, !10, i64 16, !28, i64 32, !49, i64 36, !8, i64 40, !85, i64 56, !49, i64 216, !49, i64 220, !12, i64 224, !12, i64 226, !12, i64 228, !12, i64 230, !28, i64 232, !49, i64 236, !28, i64 240, !28, i64 244, !7, i64 248, !112, i64 256}
!112 = !{!"SequencerScopes", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40}
!113 = !{!111, !28, i64 232}
!114 = !{!111, !7, i64 248}
!115 = !{!116, !7, i64 48}
!116 = !{!"ImBuf", !7, i64 0, !7, i64 8, !28, i64 16, !28, i64 20, !8, i64 24, !28, i64 28, !28, i64 32, !28, i64 36, !7, i64 40, !7, i64 48, !8, i64 56, !28, i64 72, !28, i64 76, !28, i64 80, !28, i64 84, !7, i64 88, !7, i64 96, !7, i64 104, !49, i64 112, !8, i64 120, !28, i64 280, !28, i64 284, !28, i64 288, !28, i64 292, !7, i64 296, !7, i64 304, !28, i64 312, !8, i64 316, !8, i64 1340, !7, i64 2368, !28, i64 2376, !7, i64 2384, !28, i64 2392, !28, i64 2396, !7, i64 2400, !7, i64 2408, !7, i64 2416, !7, i64 2424, !28, i64 2432, !55, i64 2436, !117, i64 2456}
!117 = !{!"DDSData", !28, i64 0, !28, i64 4, !7, i64 8, !28, i64 16}
!118 = distinct !{!118, !37}
!119 = !{!120, !8, i64 809}
!120 = !{!"RegionView3D", !8, i64 0, !8, i64 64, !8, i64 128, !8, i64 192, !8, i64 256, !8, i64 320, !8, i64 384, !8, i64 448, !8, i64 544, !7, i64 640, !7, i64 648, !7, i64 656, !7, i64 664, !7, i64 672, !7, i64 680, !7, i64 688, !8, i64 696, !8, i64 760, !49, i64 776, !49, i64 780, !49, i64 784, !49, i64 788, !8, i64 792, !49, i64 804, !8, i64 808, !8, i64 809, !8, i64 810, !8, i64 811, !8, i64 812, !8, i64 813, !8, i64 816, !12, i64 824, !12, i64 826, !8, i64 828, !12, i64 844, !12, i64 846, !49, i64 848, !8, i64 852, !49, i64 864, !8, i64 868}
!121 = !{!108, !7, i64 96}
!122 = !{!54, !49, i64 0}
!123 = !{!54, !49, i64 4}
!124 = !{!54, !49, i64 8}
!125 = !{!54, !49, i64 12}
!126 = !{!49, !49, i64 0}
!127 = !{!45, !28, i64 800}
!128 = !{!45, !12, i64 818}
!129 = !{!8, !8, i64 0}
!130 = distinct !{!130, !37}
!131 = distinct !{!131, !37}
!132 = distinct !{!132, !37}
!133 = distinct !{!133, !37}
!134 = !{!116, !7, i64 40}
!135 = !{!116, !28, i64 36}
!136 = !{!45, !28, i64 1984}
!137 = !{!95, !28, i64 16}
!138 = !{!95, !28, i64 20}
!139 = !{!116, !28, i64 292}
!140 = !{!45, !8, i64 282}
!141 = !{!45, !28, i64 796}
!142 = distinct !{!142, !37}
!143 = !{!108, !12, i64 236}
!144 = !{!116, !28, i64 16}
!145 = !{!116, !28, i64 20}
!146 = !{!116, !7, i64 104}
!147 = !{!99, !7, i64 8}
!148 = !{!45, !28, i64 748}
