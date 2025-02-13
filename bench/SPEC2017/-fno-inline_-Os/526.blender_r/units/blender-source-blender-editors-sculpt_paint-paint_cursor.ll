; ModuleID = 'blender/source/blender/editors/sculpt_paint/paint_cursor.c'
source_filename = "blender/source/blender/editors/sculpt_paint/paint_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TexSnapshot = type { i32, i32, i32, i32, float, i8 }
%struct.CursorSnapshot = type { i32, i32, i32 }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ViewContext = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32] }
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
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.Brush = type { %struct.ID, %struct.BrushClone, ptr, %struct.MTex, %struct.MTex, ptr, ptr, ptr, ptr, ptr, [1024 x i8], float, i16, i16, float, i32, i32, i32, float, i32, i32, i32, i32, float, float, [3 x float], float, [3 x float], i32, float, float, i32, i32, i32, i8, i8, i8, i8, float, float, float, float, float, i32, i32, i32, float, float, i32, i32, float, [3 x float], [3 x float], [2 x float], [2 x float], [2 x float], [2 x float] }
%struct.BrushClone = type { ptr, [2 x float], float, float }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.PaintCurve = type { %struct.ID, ptr, i32, i32 }
%struct.PaintCurvePoint = type { %struct.BezTriple, float }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.SculptSession = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, i8, i8, ptr, ptr, ptr, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i8, [3 x float], [3 x float], i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bNodeInstanceKey = type { i32 }

@primary_snap = internal global %struct.TexSnapshot zeroinitializer, align 4
@secondary_snap = internal global %struct.TexSnapshot zeroinitializer, align 4
@cursor_snap = internal global %struct.CursorSnapshot zeroinitializer, align 4
@U = external local_unnamed_addr global %struct.UserDef, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"load_tex\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @paint_cursor_delete_textures() local_unnamed_addr #0 {
  %1 = load i32, ptr @primary_snap, align 4, !tbaa !34
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @glDeleteTextures(i32 noundef 1, ptr noundef nonnull @primary_snap) #14
  br label %4

4:                                                ; preds = %3, %0
  %5 = load i32, ptr @secondary_snap, align 4, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @glDeleteTextures(i32 noundef 1, ptr noundef nonnull @secondary_snap) #14
  br label %8

8:                                                ; preds = %7, %4
  %9 = load i32, ptr @cursor_snap, align 4, !tbaa !40
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @glDeleteTextures(i32 noundef 1, ptr noundef nonnull @cursor_snap) #14
  br label %12

12:                                               ; preds = %11, %8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) @primary_snap, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) @secondary_snap, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) @cursor_snap, i8 0, i64 12, i1 false)
  tail call void @BKE_paint_invalidate_overlay_all() #14
  ret void
}

; Function Attrs: optsize
declare void @glDeleteTextures(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: optsize
declare void @BKE_paint_invalidate_overlay_all() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @paint_cursor_start(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Paint, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = tail call ptr @CTX_wm_manager(ptr noundef %0) #14
  %11 = tail call ptr @WM_paint_cursor_activate(ptr noundef %10, ptr noundef %1, ptr noundef nonnull @paint_draw_cursor, ptr noundef null) #14
  store ptr %11, ptr %6, align 8, !tbaa !42
  br label %12

12:                                               ; preds = %9, %5, %2
  tail call void @BKE_paint_invalidate_overlay_all() #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @BKE_paint_get_active_from_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_paint_cursor_activate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @paint_draw_cursor(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture readnone %3) #0 !PGOFuncName !45 {
  %5 = alloca %struct.ViewContext, align 8
  %6 = alloca [2 x float], align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca i32, align 4
  %11 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %12 = getelementptr inbounds %struct.Scene, ptr %11, i64 0, i32 20
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = getelementptr inbounds %struct.ToolSettings, ptr %13, i64 0, i32 73
  %15 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #14
  %16 = tail call ptr @BKE_paint_brush(ptr noundef %15) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  %17 = getelementptr inbounds %struct.Paint, ptr %15, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !69
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %120, label %21

21:                                               ; preds = %4
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %5) #14
  %22 = call i32 @get_imapaint_zoom(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %8) #14
  %23 = load float, ptr %7, align 4, !tbaa !70
  %24 = load float, ptr %8, align 4, !tbaa !70
  %25 = call fastcc float @max_ff(float noundef %23, float noundef %24) #16
  store float %25, ptr %7, align 4, !tbaa !70
  %26 = call i32 @BKE_paintmode_get_active_from_context(ptr noundef %0) #14
  %27 = getelementptr inbounds %struct.Brush, ptr %16, i64 0, i32 16
  %28 = load i32, ptr %27, align 8, !tbaa !71
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  call fastcc void @paint_draw_curve_cursor(ptr noundef nonnull %16) #16
  br label %120

31:                                               ; preds = %21
  %32 = insertelement <2 x i32> poison, i32 %1, i64 0
  %33 = insertelement <2 x i32> %32, i32 %2, i64 1
  %34 = sitofp <2 x i32> %33 to <2 x float>
  %35 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  store <2 x float> %34, ptr %6, align 8, !tbaa !70
  %36 = getelementptr inbounds %struct.Brush, ptr %16, i64 0, i32 51
  %37 = call i32 @BKE_brush_size_get(ptr noundef nonnull %11, ptr noundef nonnull %16) #14
  %38 = sitofp i32 %37 to float
  %39 = load float, ptr %7, align 4, !tbaa !70
  %40 = fmul float %39, %38
  %41 = getelementptr inbounds %struct.ToolSettings, ptr %13, i64 0, i32 73, i32 15
  %42 = load i32, ptr %41, align 4, !tbaa !75
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %31
  %45 = load i32, ptr %27, align 8, !tbaa !71
  %46 = and i32 %45, 128
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  call void @paint_calculate_rake_rotation(ptr noundef nonnull %14, ptr noundef nonnull %6) #14
  %49 = load float, ptr %7, align 4, !tbaa !70
  br label %50

50:                                               ; preds = %44, %48, %31
  %51 = phi float [ %39, %44 ], [ %49, %48 ], [ %39, %31 ]
  call fastcc void @paint_draw_alpha_overlay(ptr noundef nonnull %14, ptr noundef nonnull %16, ptr noundef nonnull %5, i32 noundef %1, i32 noundef %2, float noundef %51, i32 noundef %26) #16
  %52 = icmp eq i32 %26, 0
  br i1 %52, label %53, label %83

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.ViewContext, ptr %5, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !77
  %56 = getelementptr inbounds %struct.Object, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !79
  %58 = icmp eq ptr %57, null
  br i1 %58, label %83, label %59

59:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #15
  %60 = call fastcc zeroext i8 @sculpt_get_brush_geometry(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %10, ptr noundef nonnull %9) #16, !range !82
  %61 = call i32 @BKE_brush_use_locked_size(ptr noundef nonnull %11, ptr noundef nonnull %16) #14
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = load i32, ptr %10, align 4, !tbaa !83
  call void @BKE_brush_size_set(ptr noundef nonnull %11, ptr noundef nonnull %16, i32 noundef %64) #14
  br label %65

65:                                               ; preds = %63, %59
  %66 = getelementptr inbounds %struct.ToolSettings, ptr %13, i64 0, i32 73, i32 11
  %67 = load i8, ptr %66, align 8, !tbaa !84
  %68 = icmp eq i8 %67, 0
  %69 = load i32, ptr %27, align 8, !tbaa !71
  %70 = and i32 %69, 512
  %71 = icmp eq i32 %70, 0
  %72 = xor i1 %68, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.Brush, ptr %16, i64 0, i32 34
  %75 = load i8, ptr %74, align 8, !tbaa !85
  switch i8 %75, label %78 [
    i8 1, label %76
    i8 4, label %76
    i8 8, label %76
    i8 3, label %76
    i8 16, label %76
  ]

76:                                               ; preds = %73, %73, %73, %73, %73
  %77 = getelementptr inbounds %struct.Brush, ptr %16, i64 0, i32 52
  br label %78

78:                                               ; preds = %73, %76, %65
  %79 = phi ptr [ %77, %76 ], [ %36, %65 ], [ %36, %73 ]
  %80 = icmp eq i8 %60, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  call fastcc void @paint_cursor_on_hit(ptr noundef nonnull %14, ptr noundef nonnull %16, ptr noundef nonnull %5, ptr noundef nonnull %9) #16
  br label %82

82:                                               ; preds = %81, %78
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #15
  br label %83

83:                                               ; preds = %82, %53, %50
  %84 = phi ptr [ %79, %82 ], [ %36, %53 ], [ %36, %50 ]
  %85 = getelementptr inbounds %struct.ToolSettings, ptr %13, i64 0, i32 73, i32 9
  %86 = load i32, ptr %85, align 8, !tbaa !86
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.ToolSettings, ptr %13, i64 0, i32 73, i32 10
  %90 = load i32, ptr %89, align 4, !tbaa !87
  %91 = sitofp i32 %90 to float
  %92 = getelementptr inbounds %struct.ToolSettings, ptr %13, i64 0, i32 73, i32 14
  %93 = load <2 x float>, ptr %92, align 4, !tbaa !70
  store <2 x float> %93, ptr %6, align 8, !tbaa !70
  br label %94

94:                                               ; preds = %88, %83
  %95 = phi float [ %91, %88 ], [ %40, %83 ]
  call void @glEnable(i32 noundef 3042) #14
  call void @glEnable(i32 noundef 2848) #14
  %96 = load float, ptr %84, align 4, !tbaa !70
  %97 = getelementptr inbounds float, ptr %84, i64 1
  %98 = load float, ptr %97, align 4, !tbaa !70
  %99 = getelementptr inbounds float, ptr %84, i64 2
  %100 = load float, ptr %99, align 4, !tbaa !70
  call void @glColor4f(float noundef %96, float noundef %98, float noundef %100, float noundef 5.000000e-01) #14
  %101 = load float, ptr %6, align 8, !tbaa !70
  %102 = load float, ptr %35, align 4, !tbaa !70
  call void @glTranslatef(float noundef %101, float noundef %102, float noundef 0.000000e+00) #14
  %103 = load i32, ptr %41, align 4, !tbaa !75
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %115, label %105

105:                                              ; preds = %94
  %106 = call i32 @BKE_brush_use_size_pressure(ptr noundef nonnull %11, ptr noundef nonnull %16) #14
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.ToolSettings, ptr %13, i64 0, i32 73, i32 16
  %110 = load float, ptr %109, align 8, !tbaa !88
  %111 = fmul float %95, %110
  call void @glutil_draw_lined_arc(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef %111, i32 noundef 40) #14
  %112 = load float, ptr %84, align 4, !tbaa !70
  %113 = load float, ptr %97, align 4, !tbaa !70
  %114 = load float, ptr %99, align 4, !tbaa !70
  call void @glColor4f(float noundef %112, float noundef %113, float noundef %114, float noundef 2.500000e-01) #14
  br label %115

115:                                              ; preds = %108, %105, %94
  call void @glutil_draw_lined_arc(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef %95, i32 noundef 40) #14
  %116 = load float, ptr %6, align 8, !tbaa !70
  %117 = fneg float %116
  %118 = load float, ptr %35, align 4, !tbaa !70
  %119 = fneg float %118
  call void @glTranslatef(float noundef %117, float noundef %119, float noundef 0.000000e+00) #14
  call void @glDisable(i32 noundef 3042) #14
  call void @glDisable(i32 noundef 2848) #14
  br label %120

120:                                              ; preds = %4, %115, %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @paint_cursor_start_explicit(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.Paint, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call ptr @WM_paint_cursor_activate(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @paint_draw_cursor, ptr noundef null) #14
  store ptr %10, ptr %6, align 8, !tbaa !42
  br label %11

11:                                               ; preds = %9, %5, %3
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_paint_brush(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @view3d_set_viewcontext(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @get_imapaint_zoom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #4 !PGOFuncName !89 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: optsize
declare i32 @BKE_paintmode_get_active_from_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @paint_draw_curve_cursor(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !90 {
  %2 = alloca [82 x float], align 16
  %3 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !91
  %5 = icmp eq ptr %4, null
  br i1 %5, label %85, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.PaintCurve, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !92
  %9 = icmp eq ptr %8, null
  br i1 %9, label %85, label %10

10:                                               ; preds = %6
  tail call void @glEnable(i32 noundef 2848) #14
  tail call void @glEnable(i32 noundef 3042) #14
  tail call void @glEnableClientState(i32 noundef 32884) #14
  %11 = getelementptr inbounds %struct.PaintCurve, ptr %4, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !94
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %61

14:                                               ; preds = %10
  %15 = getelementptr inbounds float, ptr %2, i64 1
  br label %16

16:                                               ; preds = %14, %39
  %17 = phi i32 [ %57, %39 ], [ 0, %14 ]
  %18 = phi ptr [ %19, %39 ], [ %8, %14 ]
  %19 = getelementptr inbounds %struct.PaintCurvePoint, ptr %18, i64 1
  call void @llvm.lifetime.start.p0(i64 328, ptr nonnull %2) #15
  call fastcc void @draw_bezier_handle_lines(ptr noundef nonnull %18) #16
  %20 = getelementptr inbounds [3 x [3 x float]], ptr %18, i64 0, i64 1
  %21 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 0, i32 8
  %22 = load i8, ptr %21, align 4, !tbaa !95
  call fastcc void @draw_tri_point(ptr noundef nonnull %20, i8 noundef zeroext %22) #16
  %23 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 0, i32 7
  %24 = load i8, ptr %23, align 1, !tbaa !98
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load i8, ptr %21, align 4, !tbaa !95
  %28 = icmp ne i8 %27, 0
  br label %29

29:                                               ; preds = %26, %16
  %30 = phi i1 [ true, %16 ], [ %28, %26 ]
  %31 = zext i1 %30 to i8
  call fastcc void @draw_rect_point(ptr noundef nonnull %18, i8 noundef zeroext %31) #16
  %32 = getelementptr inbounds [3 x [3 x float]], ptr %18, i64 0, i64 2
  %33 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 0, i32 9
  %34 = load i8, ptr %33, align 1, !tbaa !99
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i8, ptr %21, align 4, !tbaa !95
  %38 = icmp ne i8 %37, 0
  br label %39

39:                                               ; preds = %36, %29
  %40 = phi i1 [ true, %29 ], [ %38, %36 ]
  %41 = zext i1 %40 to i8
  call fastcc void @draw_rect_point(ptr noundef nonnull %32, i8 noundef zeroext %41) #16
  %42 = getelementptr inbounds [3 x [3 x float]], ptr %18, i64 0, i64 1, i64 0
  %43 = load float, ptr %42, align 4, !tbaa !70
  %44 = getelementptr inbounds [3 x [3 x float]], ptr %18, i64 0, i64 2, i64 0
  %45 = load float, ptr %44, align 4, !tbaa !70
  %46 = load float, ptr %19, align 4, !tbaa !70
  %47 = getelementptr inbounds %struct.PaintCurvePoint, ptr %18, i64 1, i32 0, i32 0, i64 1, i64 0
  %48 = load float, ptr %47, align 4, !tbaa !70
  call void @BKE_curve_forward_diff_bezier(float noundef %43, float noundef %45, float noundef %46, float noundef %48, ptr noundef nonnull %2, i32 noundef 40, i32 noundef 8) #14
  %49 = getelementptr inbounds [3 x [3 x float]], ptr %18, i64 0, i64 1, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !70
  %51 = getelementptr inbounds [3 x [3 x float]], ptr %18, i64 0, i64 2, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !70
  %53 = getelementptr inbounds %struct.PaintCurvePoint, ptr %18, i64 1, i32 0, i32 0, i64 0, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !70
  %55 = getelementptr inbounds %struct.PaintCurvePoint, ptr %18, i64 1, i32 0, i32 0, i64 1, i64 1
  %56 = load float, ptr %55, align 4, !tbaa !70
  call void @BKE_curve_forward_diff_bezier(float noundef %50, float noundef %52, float noundef %54, float noundef %56, ptr noundef nonnull %15, i32 noundef 40, i32 noundef 8) #14
  call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef nonnull %2) #14
  call void @glLineWidth(float noundef 3.000000e+00) #14
  call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 5.000000e-01) #14
  call void @glDrawArrays(i32 noundef 3, i32 noundef 0, i32 noundef 41) #14
  call void @glLineWidth(float noundef 1.000000e+00) #14
  call void @glColor4f(float noundef 0x3FECCCCCC0000000, float noundef 0x3FECCCCCC0000000, float noundef 1.000000e+00, float noundef 5.000000e-01) #14
  call void @glDrawArrays(i32 noundef 3, i32 noundef 0, i32 noundef 41) #14
  call void @llvm.lifetime.end.p0(i64 328, ptr nonnull %2) #15
  %57 = add nuw nsw i32 %17, 1
  %58 = load i32, ptr %11, align 8, !tbaa !94
  %59 = add nsw i32 %58, -1
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %16, label %61, !llvm.loop !100

61:                                               ; preds = %39, %10
  %62 = phi ptr [ %8, %10 ], [ %19, %39 ]
  call fastcc void @draw_bezier_handle_lines(ptr noundef nonnull %62) #16
  %63 = getelementptr inbounds [3 x [3 x float]], ptr %62, i64 0, i64 1
  %64 = getelementptr inbounds %struct.BezTriple, ptr %62, i64 0, i32 8
  %65 = load i8, ptr %64, align 4, !tbaa !95
  call fastcc void @draw_tri_point(ptr noundef nonnull %63, i8 noundef zeroext %65) #16
  %66 = getelementptr inbounds %struct.BezTriple, ptr %62, i64 0, i32 7
  %67 = load i8, ptr %66, align 1, !tbaa !98
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %61
  %70 = load i8, ptr %64, align 4, !tbaa !95
  %71 = icmp ne i8 %70, 0
  %72 = zext i1 %71 to i8
  br label %73

73:                                               ; preds = %69, %61
  %74 = phi i8 [ 1, %61 ], [ %72, %69 ]
  call fastcc void @draw_rect_point(ptr noundef nonnull %62, i8 noundef zeroext %74) #16
  %75 = getelementptr inbounds [3 x [3 x float]], ptr %62, i64 0, i64 2
  %76 = getelementptr inbounds %struct.BezTriple, ptr %62, i64 0, i32 9
  %77 = load i8, ptr %76, align 1, !tbaa !99
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load i8, ptr %64, align 4, !tbaa !95
  %81 = icmp ne i8 %80, 0
  %82 = zext i1 %81 to i8
  br label %83

83:                                               ; preds = %79, %73
  %84 = phi i8 [ 1, %73 ], [ %82, %79 ]
  call fastcc void @draw_rect_point(ptr noundef nonnull %75, i8 noundef zeroext %84) #16
  call void @glLineWidth(float noundef 1.000000e+00) #14
  call void @glDisable(i32 noundef 3042) #14
  call void @glDisable(i32 noundef 2848) #14
  call void @glDisableClientState(i32 noundef 32884) #14
  br label %85

85:                                               ; preds = %83, %6, %1
  ret void
}

; Function Attrs: optsize
declare i32 @BKE_brush_size_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @paint_calculate_rake_rotation(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @paint_draw_alpha_overlay(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, float noundef %5, i32 noundef %6) unnamed_addr #0 !PGOFuncName !102 {
  %8 = tail call i32 @BKE_paint_get_overlay_flags() #14
  tail call void @glPushAttrib(i32 noundef 294157) #14
  switch i32 %6, label %20 [
    i32 4, label %9
    i32 3, label %9
    i32 1, label %9
  ]

9:                                                ; preds = %7, %7, %7
  %10 = and i32 %8, 32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  tail call fastcc void @paint_draw_tex_overlay(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, i8 noundef zeroext 1, i8 noundef zeroext 1) #16
  br label %13

13:                                               ; preds = %12, %9
  %14 = and i32 %8, 64
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  tail call fastcc void @paint_draw_tex_overlay(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  br label %17

17:                                               ; preds = %16, %13
  %18 = and i32 %8, 16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %28

20:                                               ; preds = %7
  %21 = and i32 %8, 32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  tail call fastcc void @paint_draw_tex_overlay(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, i8 noundef zeroext 0, i8 noundef zeroext 1) #16
  br label %24

24:                                               ; preds = %23, %20
  %25 = and i32 %8, 16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %17
  tail call fastcc void @paint_draw_cursor_overlay(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5) #16
  br label %28

28:                                               ; preds = %27, %24, %17
  tail call void @glPopAttrib() #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @sculpt_get_brush_geometry(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !103 {
  %7 = alloca [2 x float], align 8
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %9 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  %10 = insertelement <2 x i32> poison, i32 %2, i64 0
  %11 = insertelement <2 x i32> %10, i32 %3, i64 1
  %12 = sitofp <2 x i32> %11 to <2 x float>
  store <2 x float> %12, ptr %7, align 8, !tbaa !70
  %13 = getelementptr inbounds %struct.ViewContext, ptr %1, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !77
  %15 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !79
  %17 = icmp eq ptr %16, null
  br i1 %17, label %35, label %18

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.SculptSession, ptr %16, i64 0, i32 15
  %20 = load ptr, ptr %19, align 8, !tbaa !104
  %21 = icmp eq ptr %20, null
  br i1 %21, label %35, label %22

22:                                               ; preds = %18
  %23 = call zeroext i8 @sculpt_stroke_get_location(ptr noundef %0, ptr noundef %5, ptr noundef nonnull %7) #14
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %22
  %26 = call ptr @BKE_paint_brush(ptr noundef %9) #14
  %27 = call float @BKE_brush_unprojected_radius_get(ptr noundef %8, ptr noundef %26) #14
  %28 = call fastcc i32 @project_brush_radius(ptr noundef nonnull %1, float noundef %27, ptr noundef %5) #16
  store i32 %28, ptr %4, align 4, !tbaa !83
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = call i32 @BKE_brush_size_get(ptr noundef %8, ptr noundef %26) #14
  store i32 %31, ptr %4, align 4, !tbaa !83
  br label %32

32:                                               ; preds = %30, %25
  %33 = load ptr, ptr %13, align 8, !tbaa !77
  %34 = getelementptr inbounds %struct.Object, ptr %33, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %34, ptr noundef %5) #14
  br label %41

35:                                               ; preds = %22, %18, %6
  %36 = call ptr @CTX_data_tool_settings(ptr noundef %0) #14
  %37 = getelementptr inbounds %struct.ToolSettings, ptr %36, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !106
  %39 = call ptr @BKE_paint_brush(ptr noundef %38) #14
  %40 = call i32 @BKE_brush_size_get(ptr noundef %8, ptr noundef %39) #14
  store i32 %40, ptr %4, align 4, !tbaa !83
  br label %41

41:                                               ; preds = %35, %32
  %42 = phi i8 [ 1, %32 ], [ 0, %35 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  ret i8 %42
}

; Function Attrs: optsize
declare i32 @BKE_brush_use_locked_size(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_brush_size_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @paint_cursor_on_hit(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !111 {
  %5 = load ptr, ptr %2, align 8, !tbaa !112
  %6 = tail call i32 @BKE_brush_use_locked_size(ptr noundef %5, ptr noundef %1) #14
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %42

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !86
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 10
  %14 = load i32, ptr %13, align 4, !tbaa !87
  %15 = sitofp i32 %14 to float
  br label %25

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 16
  %18 = load i32, ptr %17, align 8, !tbaa !71
  %19 = and i32 %18, 256
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load ptr, ptr %2, align 8, !tbaa !112
  %23 = tail call i32 @BKE_brush_size_get(ptr noundef %22, ptr noundef nonnull %1) #14
  %24 = sitofp i32 %23 to float
  br label %25

25:                                               ; preds = %16, %21, %12
  %26 = phi float [ %15, %12 ], [ %24, %21 ], [ 8.000000e+00, %16 ]
  %27 = tail call float @paint_calc_object_space_radius(ptr noundef nonnull %2, ptr noundef %3, float noundef %26) #14
  %28 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 15
  %29 = load i32, ptr %28, align 4, !tbaa !75
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr %2, align 8, !tbaa !112
  %33 = tail call i32 @BKE_brush_use_size_pressure(ptr noundef %32, ptr noundef %1) #14
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 16
  %37 = load float, ptr %36, align 8, !tbaa !88
  %38 = fmul float %27, %37
  br label %39

39:                                               ; preds = %35, %31, %25
  %40 = phi float [ %38, %35 ], [ %27, %31 ], [ %27, %25 ]
  %41 = load ptr, ptr %2, align 8, !tbaa !112
  tail call void @BKE_brush_unprojected_radius_set(ptr noundef %41, ptr noundef %1, float noundef %40) #14
  br label %42

42:                                               ; preds = %39, %4
  ret void
}

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BKE_brush_use_size_pressure(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glutil_draw_lined_arc(float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glEnableClientState(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_bezier_handle_lines(ptr noundef %0) unnamed_addr #0 !PGOFuncName !113 {
  %2 = alloca [2 x i16], align 4
  %3 = alloca [2 x i16], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store i32 65536, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 131073, ptr %3, align 4
  tail call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 12, ptr noundef %0) #14
  tail call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 5.000000e-01) #14
  tail call void @glLineWidth(float noundef 3.000000e+00) #14
  tail call void @glDrawArrays(i32 noundef 3, i32 noundef 0, i32 noundef 3) #14
  tail call void @glLineWidth(float noundef 1.000000e+00) #14
  %4 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 7
  %5 = load i8, ptr %4, align 1, !tbaa !114
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 8
  %9 = load i8, ptr %8, align 4, !tbaa !115
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7, %1
  tail call void @UI_ThemeColor4(i32 noundef 34) #14
  br label %13

12:                                               ; preds = %7
  tail call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 5.000000e-01) #14
  br label %13

13:                                               ; preds = %12, %11
  call void @glDrawElements(i32 noundef 1, i32 noundef 2, i32 noundef 5123, ptr noundef nonnull %2) #14
  %14 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 9
  %15 = load i8, ptr %14, align 1, !tbaa !116
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 8
  %19 = load i8, ptr %18, align 4, !tbaa !115
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17, %13
  call void @UI_ThemeColor4(i32 noundef 34) #14
  br label %23

22:                                               ; preds = %17
  call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 5.000000e-01) #14
  br label %23

23:                                               ; preds = %22, %21
  call void @glDrawElements(i32 noundef 1, i32 noundef 2, i32 noundef 5123, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_tri_point(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 !PGOFuncName !117 {
  %3 = icmp eq i8 %1, 0
  %4 = select i1 %3, i32 157, i32 34
  tail call void @UI_ThemeColor4(i32 noundef %4) #14
  tail call void @glLineWidth(float noundef 3.000000e+00) #14
  tail call void @glBegin(i32 noundef 2) #14
  %5 = load float, ptr %0, align 4, !tbaa !70
  %6 = getelementptr inbounds float, ptr %0, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !70
  %8 = fadd float %7, 5.000000e+00
  tail call void @glVertex2f(float noundef %5, float noundef %8) #14
  %9 = load float, ptr %0, align 4, !tbaa !70
  %10 = fadd float %9, -5.000000e+00
  %11 = load float, ptr %6, align 4, !tbaa !70
  %12 = fadd float %11, -5.000000e+00
  tail call void @glVertex2f(float noundef %10, float noundef %12) #14
  %13 = load float, ptr %0, align 4, !tbaa !70
  %14 = fadd float %13, 5.000000e+00
  %15 = load float, ptr %6, align 4, !tbaa !70
  %16 = fadd float %15, -5.000000e+00
  tail call void @glVertex2f(float noundef %14, float noundef %16) #14
  tail call void @glEnd() #14
  tail call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 5.000000e-01) #14
  tail call void @glLineWidth(float noundef 1.000000e+00) #14
  tail call void @glBegin(i32 noundef 2) #14
  %17 = load float, ptr %0, align 4, !tbaa !70
  %18 = load float, ptr %6, align 4, !tbaa !70
  %19 = fadd float %18, 5.000000e+00
  tail call void @glVertex2f(float noundef %17, float noundef %19) #14
  %20 = load float, ptr %0, align 4, !tbaa !70
  %21 = fadd float %20, -5.000000e+00
  %22 = load float, ptr %6, align 4, !tbaa !70
  %23 = fadd float %22, -5.000000e+00
  tail call void @glVertex2f(float noundef %21, float noundef %23) #14
  %24 = load float, ptr %0, align 4, !tbaa !70
  %25 = fadd float %24, 5.000000e+00
  %26 = load float, ptr %6, align 4, !tbaa !70
  %27 = fadd float %26, -5.000000e+00
  tail call void @glVertex2f(float noundef %25, float noundef %27) #14
  tail call void @glEnd() #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_rect_point(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 !PGOFuncName !118 {
  %3 = icmp eq i8 %1, 0
  %4 = select i1 %3, i32 156, i32 34
  tail call void @UI_ThemeColor4(i32 noundef %4) #14
  tail call void @glLineWidth(float noundef 3.000000e+00) #14
  tail call void @glBegin(i32 noundef 2) #14
  %5 = load float, ptr %0, align 4, !tbaa !70
  %6 = fadd float %5, 4.000000e+00
  %7 = getelementptr inbounds float, ptr %0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !70
  %9 = fadd float %8, 4.000000e+00
  tail call void @glVertex2f(float noundef %6, float noundef %9) #14
  %10 = load float, ptr %0, align 4, !tbaa !70
  %11 = fadd float %10, -4.000000e+00
  %12 = load float, ptr %7, align 4, !tbaa !70
  %13 = fadd float %12, 4.000000e+00
  tail call void @glVertex2f(float noundef %11, float noundef %13) #14
  %14 = load float, ptr %0, align 4, !tbaa !70
  %15 = fadd float %14, -4.000000e+00
  %16 = load float, ptr %7, align 4, !tbaa !70
  %17 = fadd float %16, -4.000000e+00
  tail call void @glVertex2f(float noundef %15, float noundef %17) #14
  %18 = load float, ptr %0, align 4, !tbaa !70
  %19 = fadd float %18, 4.000000e+00
  %20 = load float, ptr %7, align 4, !tbaa !70
  %21 = fadd float %20, -4.000000e+00
  tail call void @glVertex2f(float noundef %19, float noundef %21) #14
  tail call void @glEnd() #14
  tail call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 5.000000e-01) #14
  tail call void @glLineWidth(float noundef 1.000000e+00) #14
  tail call void @glBegin(i32 noundef 2) #14
  %22 = load float, ptr %0, align 4, !tbaa !70
  %23 = fadd float %22, 4.000000e+00
  %24 = load float, ptr %7, align 4, !tbaa !70
  %25 = fadd float %24, 4.000000e+00
  tail call void @glVertex2f(float noundef %23, float noundef %25) #14
  %26 = load float, ptr %0, align 4, !tbaa !70
  %27 = fadd float %26, -4.000000e+00
  %28 = load float, ptr %7, align 4, !tbaa !70
  %29 = fadd float %28, 4.000000e+00
  tail call void @glVertex2f(float noundef %27, float noundef %29) #14
  %30 = load float, ptr %0, align 4, !tbaa !70
  %31 = fadd float %30, -4.000000e+00
  %32 = load float, ptr %7, align 4, !tbaa !70
  %33 = fadd float %32, -4.000000e+00
  tail call void @glVertex2f(float noundef %31, float noundef %33) #14
  %34 = load float, ptr %0, align 4, !tbaa !70
  %35 = fadd float %34, 4.000000e+00
  %36 = load float, ptr %7, align 4, !tbaa !70
  %37 = fadd float %36, -4.000000e+00
  tail call void @glVertex2f(float noundef %35, float noundef %37) #14
  tail call void @glEnd() #14
  ret void
}

; Function Attrs: optsize
declare void @BKE_curve_forward_diff_bezier(float noundef, float noundef, float noundef, float noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glVertexPointer(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glLineWidth(float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glDrawArrays(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glDisableClientState(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @UI_ThemeColor4(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glDrawElements(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BKE_paint_get_overlay_flags() local_unnamed_addr #1

; Function Attrs: optsize
declare void @glPushAttrib(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @paint_draw_tex_overlay(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, float noundef %5, i8 noundef zeroext %6, i8 noundef zeroext %7) unnamed_addr #0 !PGOFuncName !119 {
  %9 = icmp eq i8 %7, 0
  %10 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 3
  %11 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 4
  %12 = select i1 %9, ptr %11, ptr %10
  %13 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 20
  %14 = load i32, ptr %13, align 8, !tbaa !120
  %15 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 43
  %16 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 44
  %17 = select i1 %9, ptr %16, ptr %15
  %18 = load i32, ptr %17, align 4, !tbaa !83
  %19 = getelementptr inbounds %struct.MTex, ptr %12, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !121
  %21 = icmp eq ptr %20, null
  br i1 %21, label %135, label %22

22:                                               ; preds = %8
  %23 = getelementptr inbounds %struct.MTex, ptr %12, i64 0, i32 20
  %24 = load i8, ptr %23, align 4, !tbaa !122
  %25 = icmp eq i8 %24, 5
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = select i1 %9, i32 4, i32 2
  %28 = and i32 %14, %27
  %29 = icmp ne i32 %28, 0
  %30 = icmp ult i8 %24, 2
  %31 = and i1 %29, %30
  br i1 %31, label %32, label %135

32:                                               ; preds = %26, %22
  tail call fastcc void @load_tex(ptr noundef nonnull %1, ptr noundef %2, float noundef %5, i8 noundef zeroext %6, i8 noundef zeroext %7) #16
  tail call void @glEnable(i32 noundef 3042) #14
  tail call void @glColorMask(i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #14
  tail call void @glDepthMask(i8 noundef zeroext 0) #14
  tail call void @glDepthFunc(i32 noundef 519) #14
  tail call void @glMatrixMode(i32 noundef 5890) #14
  tail call void @glPushMatrix() #14
  tail call void @glLoadIdentity() #14
  %33 = load i8, ptr %23, align 4, !tbaa !122
  switch i8 %33, label %88 [
    i8 0, label %34
    i8 1, label %80
  ]

34:                                               ; preds = %32
  tail call void @glTranslatef(float noundef 5.000000e-01, float noundef 5.000000e-01, float noundef 0.000000e+00) #14
  %35 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 8
  %36 = load float, ptr %35, align 4, !tbaa !123
  %37 = fmul float %36, 0x404CA5DC20000000
  tail call void @glRotatef(float noundef %37, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #14
  tail call void @glTranslatef(float noundef -5.000000e-01, float noundef -5.000000e-01, float noundef 0.000000e+00) #14
  br i1 %9, label %50, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 15
  %40 = load i32, ptr %39, align 4, !tbaa !75
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %2, align 8, !tbaa !112
  %44 = tail call i32 @BKE_brush_use_size_pressure(ptr noundef %43, ptr noundef nonnull %1) #14
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  tail call void @glTranslatef(float noundef 5.000000e-01, float noundef 5.000000e-01, float noundef 0.000000e+00) #14
  %47 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 16
  %48 = load float, ptr %47, align 8, !tbaa !88
  %49 = fdiv float 1.000000e+00, %48
  tail call void @glScalef(float noundef %49, float noundef %49, float noundef 1.000000e+00) #14
  tail call void @glTranslatef(float noundef -5.000000e-01, float noundef -5.000000e-01, float noundef 0.000000e+00) #14
  br label %50

50:                                               ; preds = %46, %42, %38, %34
  %51 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 9
  %52 = load i32, ptr %51, align 8, !tbaa !86
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 14
  %56 = load float, ptr %55, align 4, !tbaa !70
  %57 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 10
  %58 = load i32, ptr %57, align 4, !tbaa !87
  %59 = sitofp i32 %58 to float
  %60 = fsub float %56, %59
  %61 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 14, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !70
  %63 = fsub float %62, %59
  %64 = fadd float %56, %59
  %65 = fadd float %62, %59
  br label %116

66:                                               ; preds = %50
  %67 = load ptr, ptr %2, align 8, !tbaa !112
  %68 = tail call i32 @BKE_brush_size_get(ptr noundef %67, ptr noundef nonnull %1) #14
  %69 = sitofp i32 %68 to float
  %70 = fmul float %69, %5
  %71 = fptosi float %70 to i32
  %72 = sub nsw i32 %3, %71
  %73 = sitofp i32 %72 to float
  %74 = sub nsw i32 %4, %71
  %75 = sitofp i32 %74 to float
  %76 = add nsw i32 %71, %3
  %77 = sitofp i32 %76 to float
  %78 = add nsw i32 %71, %4
  %79 = sitofp i32 %78 to float
  br label %116

80:                                               ; preds = %32
  %81 = getelementptr inbounds %struct.ViewContext, ptr %2, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !124
  %83 = getelementptr inbounds %struct.ARegion, ptr %82, i64 0, i32 3
  %84 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %83) #16
  %85 = sitofp i32 %84 to float
  %86 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %83) #16
  %87 = sitofp i32 %86 to float
  br label %116

88:                                               ; preds = %32
  br i1 %9, label %94, label %89

89:                                               ; preds = %88
  %90 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 54
  %91 = load float, ptr %90, align 8, !tbaa !70
  %92 = fneg float %91
  %93 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 54, i64 1
  br label %99

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 56
  %96 = load float, ptr %95, align 8, !tbaa !70
  %97 = fneg float %96
  %98 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 56, i64 1
  br label %99

99:                                               ; preds = %94, %89
  %100 = phi ptr [ %98, %94 ], [ %93, %89 ]
  %101 = phi float [ %97, %94 ], [ %92, %89 ]
  %102 = phi float [ %96, %94 ], [ %91, %89 ]
  %103 = load float, ptr %100, align 4, !tbaa !70
  %104 = fneg float %103
  tail call void @glMatrixMode(i32 noundef 5888) #14
  tail call void @glPushMatrix() #14
  %105 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 55
  %106 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 55, i64 1
  %107 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 53
  %108 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 53, i64 1
  %109 = select i1 %9, ptr %106, ptr %108
  %110 = select i1 %9, ptr %105, ptr %107
  %111 = load float, ptr %110, align 8, !tbaa !70
  %112 = load float, ptr %109, align 4, !tbaa !70
  tail call void @glTranslatef(float noundef %111, float noundef %112, float noundef 0.000000e+00) #14
  %113 = getelementptr inbounds %struct.MTex, ptr %12, i64 0, i32 13
  %114 = load float, ptr %113, align 4, !tbaa !125
  %115 = fmul float %114, 0x404CA5DC20000000
  tail call void @glRotatef(float noundef %115, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #14
  tail call void @glMatrixMode(i32 noundef 5890) #14
  br label %116

116:                                              ; preds = %80, %99, %54, %66
  %117 = phi float [ %60, %54 ], [ %73, %66 ], [ 0.000000e+00, %80 ], [ %101, %99 ]
  %118 = phi float [ %64, %54 ], [ %77, %66 ], [ %85, %80 ], [ %102, %99 ]
  %119 = phi float [ %63, %54 ], [ %75, %66 ], [ 0.000000e+00, %80 ], [ %104, %99 ]
  %120 = phi float [ %65, %54 ], [ %79, %66 ], [ %87, %80 ], [ %103, %99 ]
  %121 = icmp eq i8 %6, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %116
  %123 = sitofp i32 %18 to float
  %124 = fdiv float %123, 1.000000e+02
  tail call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef %124) #14
  br label %131

125:                                              ; preds = %116
  %126 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 96), align 8, !tbaa !70
  %127 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 96, i64 1), align 4, !tbaa !70
  %128 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 96, i64 2), align 8, !tbaa !70
  %129 = sitofp i32 %18 to float
  %130 = fdiv float %129, 1.000000e+02
  tail call void @glColor4f(float noundef %126, float noundef %127, float noundef %128, float noundef %130) #14
  br label %131

131:                                              ; preds = %125, %122
  tail call void @glBegin(i32 noundef 7) #14
  tail call void @glTexCoord2f(float noundef 0.000000e+00, float noundef 0.000000e+00) #14
  tail call void @glVertex2f(float noundef %117, float noundef %119) #14
  tail call void @glTexCoord2f(float noundef 1.000000e+00, float noundef 0.000000e+00) #14
  tail call void @glVertex2f(float noundef %118, float noundef %119) #14
  tail call void @glTexCoord2f(float noundef 1.000000e+00, float noundef 1.000000e+00) #14
  tail call void @glVertex2f(float noundef %118, float noundef %120) #14
  tail call void @glTexCoord2f(float noundef 0.000000e+00, float noundef 1.000000e+00) #14
  tail call void @glVertex2f(float noundef %117, float noundef %120) #14
  tail call void @glEnd() #14
  tail call void @glPopMatrix() #14
  %132 = load i8, ptr %23, align 4, !tbaa !122
  %133 = icmp eq i8 %132, 5
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  tail call void @glMatrixMode(i32 noundef 5888) #14
  tail call void @glPopMatrix() #14
  br label %135

135:                                              ; preds = %134, %131, %8, %26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @paint_draw_cursor_overlay(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, float noundef %5) unnamed_addr #0 !PGOFuncName !126 {
  %7 = alloca [2 x float], align 8
  %8 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 20
  %9 = load i32, ptr %8, align 8, !tbaa !120
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %78, label %12

12:                                               ; preds = %6
  tail call fastcc void @load_tex_cursor(ptr noundef nonnull %1, ptr noundef %2, float noundef %5) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  tail call void @glEnable(i32 noundef 3042) #14
  tail call void @glColorMask(i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #14
  tail call void @glDepthMask(i8 noundef zeroext 0) #14
  tail call void @glDepthFunc(i32 noundef 519) #14
  %13 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !86
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 14
  call fastcc void @copy_v2_v2(ptr noundef nonnull %7, ptr noundef nonnull %17) #16
  %18 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 10
  %19 = load i32, ptr %18, align 4, !tbaa !87
  %20 = sitofp i32 %19 to float
  %21 = load <2 x float>, ptr %17, align 4, !tbaa !70
  %22 = shufflevector <2 x float> %21, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %23 = insertelement <4 x float> poison, float %20, i64 0
  %24 = shufflevector <4 x float> %23, <4 x float> poison, <4 x i32> zeroinitializer
  %25 = fadd <4 x float> %22, %24
  %26 = fsub <4 x float> %22, %24
  %27 = shufflevector <4 x float> %25, <4 x float> %26, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %46

28:                                               ; preds = %12
  %29 = load ptr, ptr %2, align 8, !tbaa !112
  %30 = tail call i32 @BKE_brush_size_get(ptr noundef %29, ptr noundef nonnull %1) #14
  %31 = sitofp i32 %30 to float
  %32 = fmul float %31, %5
  %33 = fptosi float %32 to i32
  %34 = insertelement <2 x i32> poison, i32 %3, i64 0
  %35 = insertelement <2 x i32> %34, i32 %4, i64 1
  %36 = sitofp <2 x i32> %35 to <2 x float>
  store <2 x float> %36, ptr %7, align 8, !tbaa !70
  %37 = insertelement <4 x i32> poison, i32 %3, i64 0
  %38 = insertelement <4 x i32> %37, i32 %4, i64 1
  %39 = shufflevector <4 x i32> %38, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %40 = insertelement <4 x i32> poison, i32 %33, i64 0
  %41 = shufflevector <4 x i32> %40, <4 x i32> poison, <4 x i32> zeroinitializer
  %42 = add nsw <4 x i32> %39, %41
  %43 = sub nsw <4 x i32> %39, %41
  %44 = shufflevector <4 x i32> %42, <4 x i32> %43, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %45 = sitofp <4 x i32> %44 to <4 x float>
  br label %46

46:                                               ; preds = %28, %16
  %47 = phi <4 x float> [ %27, %16 ], [ %45, %28 ]
  %48 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 15
  %49 = load i32, ptr %48, align 4, !tbaa !75
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %63, label %51

51:                                               ; preds = %46
  %52 = load ptr, ptr %2, align 8, !tbaa !112
  %53 = tail call i32 @BKE_brush_use_size_pressure(ptr noundef %52, ptr noundef nonnull %1) #14
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %51
  tail call void @glPushMatrix() #14
  tail call void @glLoadIdentity() #14
  %56 = load float, ptr %7, align 8, !tbaa !70
  %57 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !70
  tail call void @glTranslatef(float noundef %56, float noundef %58, float noundef 0.000000e+00) #14
  %59 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 16
  %60 = load float, ptr %59, align 8, !tbaa !88
  tail call void @glScalef(float noundef %60, float noundef %60, float noundef 1.000000e+00) #14
  %61 = fneg float %56
  %62 = fneg float %58
  tail call void @glTranslatef(float noundef %61, float noundef %62, float noundef 0.000000e+00) #14
  br label %63

63:                                               ; preds = %55, %51, %46
  %64 = phi i1 [ false, %55 ], [ true, %51 ], [ true, %46 ]
  %65 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 96), align 8, !tbaa !70
  %66 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 96, i64 1), align 4, !tbaa !70
  %67 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 96, i64 2), align 8, !tbaa !70
  %68 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 45
  %69 = load i32, ptr %68, align 8, !tbaa !127
  %70 = sitofp i32 %69 to float
  %71 = fdiv float %70, 1.000000e+02
  tail call void @glColor4f(float noundef %65, float noundef %66, float noundef %67, float noundef %71) #14
  tail call void @glBegin(i32 noundef 7) #14
  tail call void @glTexCoord2f(float noundef 0.000000e+00, float noundef 0.000000e+00) #14
  %72 = extractelement <4 x float> %47, i64 2
  %73 = extractelement <4 x float> %47, i64 3
  tail call void @glVertex2f(float noundef %72, float noundef %73) #14
  tail call void @glTexCoord2f(float noundef 1.000000e+00, float noundef 0.000000e+00) #14
  %74 = extractelement <4 x float> %47, i64 0
  tail call void @glVertex2f(float noundef %74, float noundef %73) #14
  tail call void @glTexCoord2f(float noundef 1.000000e+00, float noundef 1.000000e+00) #14
  %75 = extractelement <4 x float> %47, i64 1
  tail call void @glVertex2f(float noundef %74, float noundef %75) #14
  tail call void @glTexCoord2f(float noundef 0.000000e+00, float noundef 1.000000e+00) #14
  tail call void @glVertex2f(float noundef %72, float noundef %75) #14
  tail call void @glEnd() #14
  br i1 %64, label %77, label %76

76:                                               ; preds = %63
  tail call void @glPopMatrix() #14
  br label %77

77:                                               ; preds = %76, %63
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  br label %78

78:                                               ; preds = %6, %77
  ret void
}

; Function Attrs: optsize
declare void @glPopAttrib() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @load_tex(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 !PGOFuncName !128 {
  %6 = alloca [4 x float], align 16
  %7 = icmp eq i8 %4, 0
  %8 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 4
  %10 = select i1 %7, ptr %9, ptr %8
  %11 = tail call i32 @BKE_paint_get_overlay_flags() #14
  %12 = icmp eq i8 %3, 0
  %13 = select i1 %12, i32 6406, i32 6408
  %14 = select i1 %7, i32 4, i32 1
  %15 = and i32 %11, %14
  %16 = select i1 %7, ptr @secondary_snap, ptr @primary_snap
  %17 = load i32, ptr %16, align 4, !tbaa !34
  %18 = icmp eq i32 %17, 0
  %19 = icmp ne i32 %15, 0
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = icmp ne i32 %17, 0
  %23 = zext i1 %22 to i8
  br label %27

24:                                               ; preds = %5
  %25 = tail call fastcc i32 @same_tex_snap(ptr noundef nonnull %16, ptr noundef nonnull %10, ptr noundef %1, i8 noundef zeroext %3, float noundef %2) #16, !range !129
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %282

27:                                               ; preds = %21, %24
  %28 = phi i8 [ %23, %21 ], [ 1, %24 ]
  %29 = getelementptr inbounds %struct.MTex, ptr %10, i64 0, i32 20
  %30 = load i8, ptr %29, align 4, !tbaa !122
  %31 = icmp eq i8 %30, 5
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.MTex, ptr %10, i64 0, i32 13
  %34 = load float, ptr %33, align 4, !tbaa !125
  %35 = fneg float %34
  br label %36

36:                                               ; preds = %27, %32
  %37 = phi float [ %35, %32 ], [ 0.000000e+00, %27 ]
  %38 = load ptr, ptr %1, align 8, !tbaa !112
  %39 = tail call i32 @BKE_brush_size_get(ptr noundef %38, ptr noundef %0) #14
  %40 = sitofp i32 %39 to float
  %41 = fmul float %40, %2
  tail call fastcc void @make_tex_snap(ptr noundef nonnull %16, ptr noundef nonnull %1, float noundef %2) #16
  %42 = load i8, ptr %29, align 4, !tbaa !122
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %36
  %45 = load ptr, ptr %1, align 8, !tbaa !112
  %46 = tail call i32 @BKE_brush_size_get(ptr noundef %45, ptr noundef %0) #14
  %47 = ashr i32 %46, 1
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44, %49
  %50 = phi i32 [ %52, %49 ], [ 1, %44 ]
  %51 = phi i32 [ %53, %49 ], [ %47, %44 ]
  %52 = add nuw nsw i32 %50, 1
  %53 = lshr i32 %51, 1
  %54 = icmp ult i32 %51, 2
  br i1 %54, label %55, label %49, !llvm.loop !130

55:                                               ; preds = %49, %44
  %56 = phi i32 [ 1, %44 ], [ %52, %49 ]
  %57 = shl nuw i32 1, %56
  %58 = load i32, ptr getelementptr inbounds (%struct.TexSnapshot, ptr @secondary_snap, i64 0, i32 3), align 4
  %59 = load i32, ptr getelementptr inbounds (%struct.TexSnapshot, ptr @primary_snap, i64 0, i32 3), align 4
  %60 = select i1 %7, i32 %58, i32 %59
  %61 = tail call i32 @llvm.smax.i32(i32 %57, i32 %60)
  %62 = tail call i32 @llvm.smax.i32(i32 %61, i32 256)
  br label %63

63:                                               ; preds = %36, %55
  %64 = phi i32 [ %62, %55 ], [ 512, %36 ]
  %65 = select i1 %7, ptr getelementptr inbounds (%struct.TexSnapshot, ptr @secondary_snap, i64 0, i32 3), ptr getelementptr inbounds (%struct.TexSnapshot, ptr @primary_snap, i64 0, i32 3)
  %66 = load i32, ptr %65, align 4, !tbaa !131
  %67 = icmp eq i32 %66, %64
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = load i32, ptr %16, align 4, !tbaa !34
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  tail call void @glDeleteTextures(i32 noundef 1, ptr noundef nonnull %16) #14
  store i32 0, ptr %16, align 4, !tbaa !34
  br label %72

72:                                               ; preds = %71, %68
  store i32 %64, ptr %65, align 4, !tbaa !131
  br label %73

73:                                               ; preds = %72, %63
  %74 = phi i8 [ 0, %72 ], [ %28, %63 ]
  %75 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !132
  %76 = zext nneg i32 %64 to i64
  %77 = shl nuw nsw i64 %76, 2
  %78 = select i1 %12, i64 %76, i64 %77
  %79 = mul nuw i64 %78, %76
  %80 = tail call ptr %75(i64 noundef %79, ptr noundef nonnull @.str) #14
  %81 = tail call ptr @BKE_image_pool_new() #14
  %82 = getelementptr inbounds %struct.MTex, ptr %10, i64 0, i32 5
  %83 = load ptr, ptr %82, align 8, !tbaa !121
  %84 = icmp eq ptr %83, null
  br i1 %84, label %91, label %85

85:                                               ; preds = %73
  %86 = getelementptr inbounds %struct.Tex, ptr %83, i64 0, i32 52
  %87 = load ptr, ptr %86, align 8, !tbaa !133
  %88 = icmp eq ptr %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %85
  %90 = tail call ptr @ntreeTexBeginExecTree(ptr noundef nonnull %87) #14
  br label %91

91:                                               ; preds = %89, %85, %73
  %92 = sitofp i32 %64 to float
  %93 = getelementptr inbounds %struct.ViewContext, ptr %1, i64 0, i32 3
  %94 = fcmp ule float %37, 0x3F50624DE0000000
  %95 = fcmp uge float %37, 0xBF50624DE0000000
  %96 = and i1 %94, %95
  %97 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 1
  %98 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 2
  %99 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 3
  %100 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 42
  %101 = zext nneg i32 %64 to i64
  %102 = insertelement <2 x float> poison, float %41, i64 0
  %103 = shufflevector <2 x float> %102, <2 x float> poison, <2 x i32> zeroinitializer
  br label %104

104:                                              ; preds = %91, %261
  %105 = phi i64 [ 0, %91 ], [ %262, %261 ]
  %106 = phi i8 [ 0, %91 ], [ %135, %261 ]
  %107 = phi ptr [ undef, %91 ], [ %134, %261 ]
  %108 = load ptr, ptr %82, align 8, !tbaa !121
  %109 = getelementptr inbounds %struct.Tex, ptr %108, i64 0, i32 32
  %110 = load i16, ptr %109, align 8, !tbaa !136
  %111 = icmp eq i16 %110, 8
  br i1 %111, label %112, label %133

112:                                              ; preds = %104
  %113 = getelementptr inbounds %struct.Tex, ptr %108, i64 0, i32 54
  %114 = load ptr, ptr %113, align 8, !tbaa !137
  %115 = icmp eq ptr %114, null
  br i1 %115, label %133, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.Tex, ptr %108, i64 0, i32 51
  %118 = call ptr @BKE_image_pool_acquire_ibuf(ptr noundef nonnull %114, ptr noundef nonnull %117, ptr noundef %81) #14
  %119 = icmp eq ptr %118, null
  br i1 %119, label %127, label %120

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.ImBuf, ptr %118, i64 0, i32 9
  %122 = load ptr, ptr %121, align 8, !tbaa !138
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.ImBuf, ptr %118, i64 0, i32 34
  %126 = load ptr, ptr %125, align 8, !tbaa !141
  br label %127

127:                                              ; preds = %124, %120, %116
  %128 = phi ptr [ %126, %124 ], [ %107, %120 ], [ %107, %116 ]
  %129 = phi i8 [ 1, %124 ], [ %106, %120 ], [ %106, %116 ]
  %130 = load ptr, ptr %82, align 8, !tbaa !121
  %131 = getelementptr inbounds %struct.Tex, ptr %130, i64 0, i32 54
  %132 = load ptr, ptr %131, align 8, !tbaa !137
  call void @BKE_image_pool_release_ibuf(ptr noundef %132, ptr noundef %118, ptr noundef %81) #14
  br label %133

133:                                              ; preds = %127, %112, %104
  %134 = phi ptr [ %128, %127 ], [ %107, %112 ], [ %107, %104 ]
  %135 = phi i8 [ %129, %127 ], [ %106, %112 ], [ %106, %104 ]
  %136 = trunc i64 %105 to i32
  %137 = sitofp i32 %136 to float
  %138 = fdiv float %137, %92
  %139 = fadd float %138, -5.000000e-01
  %140 = fmul float %139, 2.000000e+00
  %141 = trunc i64 %105 to i32
  %142 = mul i32 %64, %141
  %143 = zext i32 %142 to i64
  %144 = fmul float %140, %140
  br label %145

145:                                              ; preds = %133, %258
  %146 = phi i64 [ 0, %133 ], [ %259, %258 ]
  %147 = add nuw nsw i64 %146, %143
  %148 = trunc i64 %146 to i32
  %149 = sitofp i32 %148 to float
  %150 = fdiv float %149, %92
  %151 = load i8, ptr %29, align 4, !tbaa !122
  %152 = icmp eq i8 %151, 1
  br i1 %152, label %153, label %167

153:                                              ; preds = %145
  %154 = load ptr, ptr %93, align 8, !tbaa !124
  %155 = getelementptr inbounds %struct.ARegion, ptr %154, i64 0, i32 5
  %156 = load <2 x i16>, ptr %155, align 8, !tbaa !142
  %157 = sitofp <2 x i16> %156 to <2 x float>
  %158 = fdiv <2 x float> %157, %103
  %159 = insertelement <2 x float> poison, float %150, i64 0
  %160 = insertelement <2 x float> %159, float %138, i64 1
  %161 = fmul <2 x float> %160, %158
  %162 = fmul <2 x float> %161, %161
  %163 = extractelement <2 x float> %162, i64 1
  %164 = extractelement <2 x float> %161, i64 0
  %165 = call float @llvm.fmuladd.f32(float %164, float %164, float %163)
  %166 = call float @llvm.sqrt.f32(float %165)
  br label %177

167:                                              ; preds = %145
  %168 = fadd float %150, -5.000000e-01
  %169 = fmul float %168, 2.000000e+00
  %170 = call float @llvm.fmuladd.f32(float %169, float %169, float %144)
  %171 = call float @llvm.sqrt.f32(float %170)
  %172 = icmp eq i8 %151, 5
  %173 = fcmp ole float %171, 1.000000e+00
  %174 = select i1 %172, i1 true, i1 %173
  %175 = insertelement <2 x float> poison, float %169, i64 0
  %176 = insertelement <2 x float> %175, float %140, i64 1
  br i1 %174, label %177, label %241

177:                                              ; preds = %153, %167
  %178 = phi float [ %166, %153 ], [ %171, %167 ]
  %179 = phi <2 x float> [ %161, %153 ], [ %176, %167 ]
  %180 = load ptr, ptr %82, align 8, !tbaa !121
  %181 = icmp eq ptr %180, null
  %182 = select i1 %181, i1 true, i1 %96
  br i1 %182, label %195, label %183

183:                                              ; preds = %177
  %184 = extractelement <2 x float> %179, i64 0
  %185 = extractelement <2 x float> %179, i64 1
  %186 = call float @atan2f(float noundef %185, float noundef %184) #14
  %187 = fadd float %37, %186
  %188 = call float @cosf(float noundef %187) #14
  %189 = call float @sinf(float noundef %187) #14
  %190 = insertelement <2 x float> poison, float %178, i64 0
  %191 = shufflevector <2 x float> %190, <2 x float> poison, <2 x i32> zeroinitializer
  %192 = insertelement <2 x float> poison, float %188, i64 0
  %193 = insertelement <2 x float> %192, float %189, i64 1
  %194 = fmul <2 x float> %191, %193
  br label %195

195:                                              ; preds = %177, %183
  %196 = phi <2 x float> [ %194, %183 ], [ %179, %177 ]
  br i1 %12, label %225, label %197

197:                                              ; preds = %195
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  %198 = extractelement <2 x float> %196, i64 0
  %199 = extractelement <2 x float> %196, i64 1
  call void @paint_get_tex_pixel_col(ptr noundef nonnull %10, float noundef %198, float noundef %199, ptr noundef nonnull %6, ptr noundef %81, i32 noundef 0, i8 noundef zeroext %135, ptr noundef %134) #14
  %200 = load float, ptr %6, align 16, !tbaa !70
  %201 = fmul float %200, 2.550000e+02
  %202 = fptoui float %201 to i8
  %203 = trunc i64 %147 to i32
  %204 = shl nsw i32 %203, 2
  %205 = zext nneg i32 %204 to i64
  %206 = getelementptr inbounds i8, ptr %80, i64 %205
  store i8 %202, ptr %206, align 1, !tbaa !143
  %207 = load float, ptr %97, align 4, !tbaa !70
  %208 = fmul float %207, 2.550000e+02
  %209 = fptoui float %208 to i8
  %210 = or disjoint i32 %204, 1
  %211 = zext nneg i32 %210 to i64
  %212 = getelementptr inbounds i8, ptr %80, i64 %211
  store i8 %209, ptr %212, align 1, !tbaa !143
  %213 = load float, ptr %98, align 8, !tbaa !70
  %214 = fmul float %213, 2.550000e+02
  %215 = fptoui float %214 to i8
  %216 = or disjoint i32 %204, 2
  %217 = zext nneg i32 %216 to i64
  %218 = getelementptr inbounds i8, ptr %80, i64 %217
  store i8 %215, ptr %218, align 1, !tbaa !143
  %219 = load float, ptr %99, align 4, !tbaa !70
  %220 = fmul float %219, 2.550000e+02
  %221 = fptoui float %220 to i8
  %222 = or disjoint i32 %204, 3
  %223 = zext nneg i32 %222 to i64
  %224 = getelementptr inbounds i8, ptr %80, i64 %223
  store i8 %221, ptr %224, align 1, !tbaa !143
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  br label %258

225:                                              ; preds = %195
  %226 = extractelement <2 x float> %196, i64 0
  %227 = extractelement <2 x float> %196, i64 1
  %228 = call float @paint_get_tex_pixel(ptr noundef nonnull %10, float noundef %226, float noundef %227, ptr noundef %81, i32 noundef 0) #14
  %229 = load float, ptr %100, align 4, !tbaa !144
  %230 = fadd float %228, %229
  %231 = fcmp olt float %230, 0.000000e+00
  br i1 %231, label %235, label %232

232:                                              ; preds = %225
  %233 = fcmp ogt float %230, 1.000000e+00
  br i1 %233, label %234, label %235

234:                                              ; preds = %232
  br label %235

235:                                              ; preds = %225, %232, %234
  %236 = phi float [ 1.000000e+00, %234 ], [ %230, %232 ], [ 0.000000e+00, %225 ]
  %237 = fmul float %236, 2.550000e+02
  %238 = fptoui float %237 to i8
  %239 = xor i8 %238, -1
  %240 = getelementptr inbounds i8, ptr %80, i64 %147
  store i8 %239, ptr %240, align 1, !tbaa !143
  br label %258

241:                                              ; preds = %167
  br i1 %12, label %256, label %242

242:                                              ; preds = %241
  %243 = trunc i64 %147 to i32
  %244 = shl nsw i32 %243, 2
  %245 = zext nneg i32 %244 to i64
  %246 = getelementptr inbounds i8, ptr %80, i64 %245
  store i8 0, ptr %246, align 1, !tbaa !143
  %247 = or disjoint i32 %244, 1
  %248 = zext nneg i32 %247 to i64
  %249 = getelementptr inbounds i8, ptr %80, i64 %248
  store i8 0, ptr %249, align 1, !tbaa !143
  %250 = or disjoint i32 %244, 2
  %251 = zext nneg i32 %250 to i64
  %252 = getelementptr inbounds i8, ptr %80, i64 %251
  store i8 0, ptr %252, align 1, !tbaa !143
  %253 = or disjoint i32 %244, 3
  %254 = zext nneg i32 %253 to i64
  %255 = getelementptr inbounds i8, ptr %80, i64 %254
  store i8 0, ptr %255, align 1, !tbaa !143
  br label %258

256:                                              ; preds = %241
  %257 = getelementptr inbounds i8, ptr %80, i64 %147
  store i8 0, ptr %257, align 1, !tbaa !143
  br label %258

258:                                              ; preds = %242, %256, %197, %235
  %259 = add nuw nsw i64 %146, 1
  %260 = icmp eq i64 %259, %101
  br i1 %260, label %261, label %145, !llvm.loop !145

261:                                              ; preds = %258
  %262 = add nuw nsw i64 %105, 1
  %263 = icmp eq i64 %262, %101
  br i1 %263, label %264, label %104, !llvm.loop !146

264:                                              ; preds = %261
  %265 = load ptr, ptr %82, align 8, !tbaa !121
  %266 = icmp eq ptr %265, null
  br i1 %266, label %274, label %267

267:                                              ; preds = %264
  %268 = getelementptr inbounds %struct.Tex, ptr %265, i64 0, i32 52
  %269 = load ptr, ptr %268, align 8, !tbaa !133
  %270 = icmp eq ptr %269, null
  br i1 %270, label %274, label %271

271:                                              ; preds = %267
  %272 = getelementptr inbounds %struct.bNodeTree, ptr %269, i64 0, i32 27
  %273 = load ptr, ptr %272, align 8, !tbaa !147
  call void @ntreeTexEndExecTree(ptr noundef %273) #14
  br label %274

274:                                              ; preds = %271, %267, %264
  %275 = icmp eq ptr %81, null
  br i1 %275, label %277, label %276

276:                                              ; preds = %274
  call void @BKE_image_pool_free(ptr noundef nonnull %81) #14
  br label %277

277:                                              ; preds = %276, %274
  %278 = load i32, ptr %16, align 4, !tbaa !34
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %277
  call void @glGenTextures(i32 noundef 1, ptr noundef nonnull %16) #14
  %281 = load i32, ptr %16, align 4, !tbaa !34
  br label %283

282:                                              ; preds = %24
  tail call void @glBindTexture(i32 noundef 3553, i32 noundef %17) #14
  br label %296

283:                                              ; preds = %277, %280
  %284 = phi i32 [ %281, %280 ], [ %278, %277 ]
  call void @glBindTexture(i32 noundef 3553, i32 noundef %284) #14
  %285 = icmp eq i8 %74, 0
  br i1 %285, label %291, label %286

286:                                              ; preds = %283
  %287 = load i8, ptr getelementptr inbounds (%struct.TexSnapshot, ptr @secondary_snap, i64 0, i32 5), align 4
  %288 = load i8, ptr getelementptr inbounds (%struct.TexSnapshot, ptr @primary_snap, i64 0, i32 5), align 4
  %289 = select i1 %7, i8 %287, i8 %288
  %290 = icmp eq i8 %289, %3
  br i1 %290, label %292, label %291

291:                                              ; preds = %286, %283
  call void @glTexImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef %13, i32 noundef %64, i32 noundef %64, i32 noundef 0, i32 noundef %13, i32 noundef 5121, ptr noundef nonnull %80) #14
  br label %293

292:                                              ; preds = %286
  call void @glTexSubImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %64, i32 noundef %64, i32 noundef %13, i32 noundef 5121, ptr noundef nonnull %80) #14
  br label %293

293:                                              ; preds = %292, %291
  %294 = load ptr, ptr @MEM_freeN, align 8, !tbaa !132
  call void %294(ptr noundef nonnull %80) #14
  %295 = select i1 %7, ptr getelementptr inbounds (%struct.TexSnapshot, ptr @secondary_snap, i64 0, i32 5), ptr getelementptr inbounds (%struct.TexSnapshot, ptr @primary_snap, i64 0, i32 5)
  store i8 %3, ptr %295, align 4, !tbaa !150
  br label %296

296:                                              ; preds = %282, %293
  call void @glEnable(i32 noundef 3553) #14
  call void @glTexEnvf(i32 noundef 8960, i32 noundef 8704, float noundef 8.448000e+03) #14
  call void @glTexParameteri(i32 noundef 3553, i32 noundef 10241, i32 noundef 9729) #14
  call void @glTexParameteri(i32 noundef 3553, i32 noundef 10240, i32 noundef 9729) #14
  %297 = getelementptr inbounds %struct.MTex, ptr %10, i64 0, i32 20
  %298 = load i8, ptr %297, align 4, !tbaa !122
  %299 = icmp eq i8 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %296
  call void @glTexParameteri(i32 noundef 3553, i32 noundef 10242, i32 noundef 33069) #14
  call void @glTexParameteri(i32 noundef 3553, i32 noundef 10243, i32 noundef 33069) #14
  br label %301

301:                                              ; preds = %300, %296
  call void @BKE_paint_reset_overlay_invalid(i32 noundef %15) #14
  ret void
}

; Function Attrs: optsize
declare void @glColorMask(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glDepthMask(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glDepthFunc(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glMatrixMode(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glPushMatrix() local_unnamed_addr #1

; Function Attrs: optsize
declare void @glLoadIdentity() local_unnamed_addr #1

; Function Attrs: optsize
declare void @glRotatef(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glScalef(float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !151 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !152
  %4 = load i32, ptr %0, align 4, !tbaa !153
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !154 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !155
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !156
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: optsize
declare void @glTexCoord2f(float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glPopMatrix() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @same_tex_snap(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3, float noundef %4) unnamed_addr #6 !PGOFuncName !157 {
  %6 = getelementptr inbounds %struct.MTex, ptr %1, i64 0, i32 20
  %7 = load i8, ptr %6, align 4, !tbaa !122
  switch i8 %7, label %24 [
    i8 1, label %8
    i8 5, label %28
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.ViewContext, ptr %2, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !124
  %11 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 5
  %12 = load i16, ptr %11, align 8, !tbaa !158
  %13 = sext i16 %12 to i32
  %14 = getelementptr inbounds %struct.TexSnapshot, ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !161
  %16 = icmp eq i32 %15, %13
  br i1 %16, label %17, label %33

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 6
  %19 = load i16, ptr %18, align 2, !tbaa !162
  %20 = sext i16 %19 to i32
  %21 = getelementptr inbounds %struct.TexSnapshot, ptr %0, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !163
  %23 = icmp eq i32 %22, %20
  br i1 %23, label %24, label %33

24:                                               ; preds = %5, %17
  %25 = getelementptr inbounds %struct.TexSnapshot, ptr %0, i64 0, i32 4
  %26 = load float, ptr %25, align 4, !tbaa !164
  %27 = fcmp oeq float %26, %4
  br i1 %27, label %28, label %33

28:                                               ; preds = %5, %24
  %29 = getelementptr inbounds %struct.TexSnapshot, ptr %0, i64 0, i32 5
  %30 = load i8, ptr %29, align 4, !tbaa !150
  %31 = icmp eq i8 %30, %3
  %32 = zext i1 %31 to i32
  br label %33

33:                                               ; preds = %28, %24, %17, %8
  %34 = phi i32 [ 0, %24 ], [ 0, %17 ], [ 0, %8 ], [ %32, %28 ]
  ret i32 %34
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @make_tex_snap(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #7 !PGOFuncName !165 {
  %4 = getelementptr inbounds %struct.TexSnapshot, ptr %0, i64 0, i32 4
  store float %2, ptr %4, align 4, !tbaa !164
  %5 = getelementptr inbounds %struct.ViewContext, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !124
  %7 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 5
  %8 = load i16, ptr %7, align 8, !tbaa !158
  %9 = sext i16 %8 to i32
  %10 = getelementptr inbounds %struct.TexSnapshot, ptr %0, i64 0, i32 1
  store i32 %9, ptr %10, align 4, !tbaa !161
  %11 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 6
  %12 = load i16, ptr %11, align 2, !tbaa !162
  %13 = sext i16 %12 to i32
  %14 = getelementptr inbounds %struct.TexSnapshot, ptr %0, i64 0, i32 2
  store i32 %13, ptr %14, align 4, !tbaa !163
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_image_pool_new() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ntreeTexBeginExecTree(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_image_pool_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_image_pool_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @paint_get_tex_pixel_col(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @paint_get_tex_pixel(ptr noundef, float noundef, float noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ntreeTexEndExecTree(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_image_pool_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glGenTextures(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glBindTexture(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glTexImage2D(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glTexSubImage2D(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glTexEnvf(i32 noundef, i32 noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glTexParameteri(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_paint_reset_overlay_invalid(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @load_tex_cursor(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #0 !PGOFuncName !166 {
  %4 = tail call i32 @BKE_paint_get_overlay_flags() #14
  %5 = load i32, ptr @cursor_snap, align 4, !tbaa !40
  %6 = icmp ne i32 %5, 0
  %7 = and i32 %4, 8
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i32, ptr getelementptr inbounds (%struct.CursorSnapshot, ptr @cursor_snap, i64 0, i32 2), align 4, !tbaa !167
  %12 = sitofp i32 %11 to float
  %13 = fcmp une float %12, %2
  br i1 %13, label %14, label %88

14:                                               ; preds = %3, %10
  %15 = zext i1 %6 to i8
  %16 = fptosi float %2 to i32
  store i32 %16, ptr getelementptr inbounds (%struct.CursorSnapshot, ptr @cursor_snap, i64 0, i32 2), align 4, !tbaa !167
  %17 = load ptr, ptr %1, align 8, !tbaa !112
  %18 = tail call i32 @BKE_brush_size_get(ptr noundef %17, ptr noundef %0) #14
  %19 = ashr i32 %18, 1
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %14, %21
  %22 = phi i32 [ %25, %21 ], [ %19, %14 ]
  %23 = phi i32 [ %24, %21 ], [ 1, %14 ]
  %24 = add nuw nsw i32 %23, 1
  %25 = lshr i32 %22, 1
  %26 = icmp ult i32 %22, 2
  br i1 %26, label %27, label %21, !llvm.loop !168

27:                                               ; preds = %21, %14
  %28 = phi i32 [ 1, %14 ], [ %24, %21 ]
  %29 = shl nuw i32 1, %28
  %30 = load i32, ptr getelementptr inbounds (%struct.CursorSnapshot, ptr @cursor_snap, i64 0, i32 1), align 4, !tbaa !169
  %31 = tail call i32 @llvm.smax.i32(i32 %29, i32 %30)
  %32 = tail call i32 @llvm.smax.i32(i32 %31, i32 256)
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %27
  %35 = load i32, ptr @cursor_snap, align 4, !tbaa !40
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  tail call void @glDeleteTextures(i32 noundef 1, ptr noundef nonnull @cursor_snap) #14
  store i32 0, ptr @cursor_snap, align 4, !tbaa !40
  br label %38

38:                                               ; preds = %37, %34
  store i32 %32, ptr getelementptr inbounds (%struct.CursorSnapshot, ptr @cursor_snap, i64 0, i32 1), align 4, !tbaa !169
  br label %39

39:                                               ; preds = %38, %27
  %40 = phi i8 [ 0, %38 ], [ %15, %27 ]
  %41 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !132
  %42 = zext nneg i32 %32 to i64
  %43 = mul nuw nsw i64 %42, %42
  %44 = tail call ptr %41(i64 noundef %43, ptr noundef nonnull @.str) #14
  %45 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !170
  tail call void @curvemapping_initialize(ptr noundef %46) #14
  %47 = sitofp i32 %32 to float
  br label %48

48:                                               ; preds = %39, %80
  %49 = phi i64 [ 0, %39 ], [ %81, %80 ]
  %50 = trunc i64 %49 to i32
  %51 = sitofp i32 %50 to float
  %52 = fdiv float %51, %47
  %53 = fadd float %52, -5.000000e-01
  %54 = fmul float %53, 2.000000e+00
  %55 = fmul float %54, %54
  %56 = trunc i64 %49 to i32
  %57 = mul i32 %32, %56
  %58 = zext i32 %57 to i64
  %59 = getelementptr i8, ptr %44, i64 %58
  br label %60

60:                                               ; preds = %48, %75
  %61 = phi i64 [ 0, %48 ], [ %78, %75 ]
  %62 = trunc i64 %61 to i32
  %63 = sitofp i32 %62 to float
  %64 = fdiv float %63, %47
  %65 = fadd float %64, -5.000000e-01
  %66 = fmul float %65, 2.000000e+00
  %67 = tail call float @llvm.fmuladd.f32(float %66, float %66, float %55)
  %68 = tail call float @llvm.sqrt.f32(float %67)
  %69 = fcmp ugt float %68, 1.000000e+00
  br i1 %69, label %75, label %70

70:                                               ; preds = %60
  %71 = tail call float @BKE_brush_curve_strength_clamp(ptr noundef %0, float noundef %68, float noundef 1.000000e+00) #14
  %72 = fmul float %71, 2.550000e+02
  %73 = fptoui float %72 to i8
  %74 = xor i8 %73, -1
  br label %75

75:                                               ; preds = %60, %70
  %76 = phi i8 [ %74, %70 ], [ 0, %60 ]
  %77 = getelementptr i8, ptr %59, i64 %61
  store i8 %76, ptr %77, align 1
  %78 = add nuw nsw i64 %61, 1
  %79 = icmp eq i64 %78, %42
  br i1 %79, label %80, label %60, !llvm.loop !171

80:                                               ; preds = %75
  %81 = add nuw nsw i64 %49, 1
  %82 = icmp eq i64 %81, %42
  br i1 %82, label %83, label %48, !llvm.loop !172

83:                                               ; preds = %80
  %84 = load i32, ptr @cursor_snap, align 4, !tbaa !40
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  tail call void @glGenTextures(i32 noundef 1, ptr noundef nonnull @cursor_snap) #14
  %87 = load i32, ptr @cursor_snap, align 4, !tbaa !40
  br label %89

88:                                               ; preds = %10
  tail call void @glBindTexture(i32 noundef 3553, i32 noundef %5) #14
  br label %96

89:                                               ; preds = %83, %86
  %90 = phi i32 [ %87, %86 ], [ %84, %83 ]
  tail call void @glBindTexture(i32 noundef 3553, i32 noundef %90) #14
  %91 = icmp eq i8 %40, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  tail call void @glTexImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef 6406, i32 noundef %32, i32 noundef %32, i32 noundef 0, i32 noundef 6406, i32 noundef 5121, ptr noundef nonnull %44) #14
  br label %94

93:                                               ; preds = %89
  tail call void @glTexSubImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %32, i32 noundef %32, i32 noundef 6406, i32 noundef 5121, ptr noundef nonnull %44) #14
  br label %94

94:                                               ; preds = %92, %93
  %95 = load ptr, ptr @MEM_freeN, align 8, !tbaa !132
  tail call void %95(ptr noundef nonnull %44) #14
  br label %96

96:                                               ; preds = %88, %94
  tail call void @glEnable(i32 noundef 3553) #14
  tail call void @glTexEnvf(i32 noundef 8960, i32 noundef 8704, float noundef 8.448000e+03) #14
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10241, i32 noundef 9729) #14
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10240, i32 noundef 9729) #14
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10242, i32 noundef 33069) #14
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10243, i32 noundef 33069) #14
  tail call void @BKE_paint_reset_overlay_invalid(i32 noundef 8) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !173 {
  %3 = load float, ptr %1, align 4, !tbaa !70
  store float %3, ptr %0, align 4, !tbaa !70
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !70
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !70
  ret void
}

; Function Attrs: optsize
declare void @curvemapping_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BKE_brush_curve_strength_clamp(ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @sculpt_stroke_get_location(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @project_brush_radius(ptr nocapture noundef readonly %0, float noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !174 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #15
  %10 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !175
  call void @ED_view3d_global_to_vector(ptr noundef %11, ptr noundef %2, ptr noundef nonnull %4) #14
  %12 = load float, ptr %4, align 4, !tbaa !70
  %13 = call float @llvm.fabs.f32(float %12)
  %14 = fcmp olt float %13, 0x3FB99999A0000000
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = fadd float %12, 1.000000e+00
  store float %16, ptr %5, align 4, !tbaa !70
  %17 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %18 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %19 = load <2 x float>, ptr %17, align 4, !tbaa !70
  store <2 x float> %19, ptr %18, align 4, !tbaa !70
  br label %36

20:                                               ; preds = %3
  %21 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !70
  %23 = call float @llvm.fabs.f32(float %22)
  %24 = fcmp olt float %23, 0x3FB99999A0000000
  store float %12, ptr %5, align 4, !tbaa !70
  %25 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  br i1 %24, label %26, label %31

26:                                               ; preds = %20
  %27 = fadd float %22, 1.000000e+00
  %28 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  store float %27, ptr %28, align 4, !tbaa !70
  %29 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !70
  store float %30, ptr %25, align 4, !tbaa !70
  br label %36

31:                                               ; preds = %20
  %32 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  store float %22, ptr %32, align 4, !tbaa !70
  %33 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !70
  %35 = fadd float %34, 1.000000e+00
  store float %35, ptr %25, align 4, !tbaa !70
  br label %36

36:                                               ; preds = %26, %31, %15
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %4) #16
  call fastcc void @normalize_v3(ptr noundef nonnull %6) #16
  call fastcc void @mul_v3_fl(ptr noundef nonnull %6, float noundef %1) #16
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %7, ptr noundef %2, ptr noundef nonnull %6) #16
  %37 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !124
  %39 = call i32 @ED_view3d_project_float_global(ptr noundef %38, ptr noundef %2, ptr noundef nonnull %8, i32 noundef 0) #14
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load ptr, ptr %37, align 8, !tbaa !124
  %43 = call i32 @ED_view3d_project_float_global(ptr noundef %42, ptr noundef nonnull %7, ptr noundef nonnull %9, i32 noundef 0) #14
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = call fastcc float @len_v2v2(ptr noundef nonnull %8, ptr noundef nonnull %9) #16
  %47 = fptosi float %46 to i32
  br label %48

48:                                               ; preds = %36, %41, %45
  %49 = phi i32 [ %47, %45 ], [ 0, %41 ], [ 0, %36 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #15
  ret i32 %49
}

; Function Attrs: optsize
declare float @BKE_brush_unprojected_radius_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_tool_settings(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_view3d_global_to_vector(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #10 !PGOFuncName !176 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !70
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !70
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !70
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !70
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !70
  %15 = load float, ptr %8, align 4, !tbaa !70
  %16 = load float, ptr %2, align 4, !tbaa !70
  %17 = load float, ptr %1, align 4, !tbaa !70
  %18 = load float, ptr %6, align 4, !tbaa !70
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !70
  %23 = load float, ptr %1, align 4, !tbaa !70
  %24 = load float, ptr %10, align 4, !tbaa !70
  %25 = load float, ptr %4, align 4, !tbaa !70
  %26 = load float, ptr %2, align 4, !tbaa !70
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !70
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #11 !PGOFuncName !177 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #10 !PGOFuncName !178 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !70
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !70
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !70
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !70
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #10 !PGOFuncName !179 {
  %4 = load float, ptr %1, align 4, !tbaa !70
  %5 = load float, ptr %2, align 4, !tbaa !70
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !70
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !70
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !70
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !70
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !70
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !70
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !70
  ret void
}

; Function Attrs: optsize
declare i32 @ED_view3d_project_float_global(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !180 {
  %3 = load float, ptr %0, align 4, !tbaa !70
  %4 = load float, ptr %1, align 4, !tbaa !70
  %5 = fsub float %3, %4
  %6 = getelementptr inbounds float, ptr %0, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !70
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !70
  %10 = fsub float %7, %9
  %11 = fmul float %10, %10
  %12 = tail call float @llvm.fmuladd.f32(float %5, float %5, float %11)
  %13 = tail call float @llvm.sqrt.f32(float %12)
  ret float %13
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !PGOFuncName !181 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #16
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #14
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #16
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #16
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !182 {
  %3 = load float, ptr %0, align 4, !tbaa !70
  %4 = load float, ptr %1, align 4, !tbaa !70
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !70
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !70
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !70
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !70
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #10 !PGOFuncName !183 {
  %4 = load float, ptr %1, align 4, !tbaa !70
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !70
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !70
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !70
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !70
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !70
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #12 !PGOFuncName !184 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !70
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !70
  ret void
}

; Function Attrs: optsize
declare float @paint_calc_object_space_radius(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_brush_unprojected_radius_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #13

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind optsize }
attributes #15 = { nounwind }
attributes #16 = { optsize }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"TexSnapshot", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !39, i64 16, !37, i64 20}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"float", !37, i64 0}
!40 = !{!41, !36, i64 0}
!41 = !{!"CursorSnapshot", !36, i64 0, !36, i64 4, !36, i64 8}
!42 = !{!43, !44, i64 16}
!43 = !{!"Paint", !44, i64 0, !44, i64 8, !44, i64 16, !37, i64 24, !36, i64 28, !36, i64 32, !36, i64 36}
!44 = !{!"any pointer", !37, i64 0}
!45 = !{!"paint_cursor.c:paint_draw_cursor"}
!46 = !{!47, !44, i64 264}
!47 = !{!"Scene", !48, i64 0, !44, i64 120, !44, i64 128, !44, i64 136, !44, i64 144, !50, i64 152, !44, i64 168, !44, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !36, i64 232, !36, i64 236, !36, i64 240, !49, i64 244, !37, i64 246, !37, i64 247, !44, i64 248, !44, i64 256, !44, i64 264, !44, i64 272, !51, i64 280, !60, i64 4264, !50, i64 4296, !50, i64 4312, !44, i64 4328, !44, i64 4336, !44, i64 4344, !44, i64 4352, !44, i64 4360, !44, i64 4368, !49, i64 4376, !49, i64 4378, !36, i64 4380, !50, i64 4384, !61, i64 4400, !62, i64 4416, !65, i64 4600, !44, i64 4608, !66, i64 4616, !44, i64 4640, !67, i64 4648, !67, i64 4656, !53, i64 4664, !54, i64 4824, !68, i64 4888, !44, i64 4952}
!48 = !{!"ID", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !37, i64 32, !49, i64 98, !36, i64 100, !36, i64 104, !36, i64 108, !44, i64 112}
!49 = !{!"short", !37, i64 0}
!50 = !{!"ListBase", !44, i64 0, !44, i64 8}
!51 = !{!"RenderData", !52, i64 0, !44, i64 248, !44, i64 256, !55, i64 264, !56, i64 328, !36, i64 400, !36, i64 404, !36, i64 408, !39, i64 412, !36, i64 416, !36, i64 420, !36, i64 424, !36, i64 428, !49, i64 432, !49, i64 434, !39, i64 436, !39, i64 440, !39, i64 444, !39, i64 448, !39, i64 452, !49, i64 456, !49, i64 458, !49, i64 460, !49, i64 462, !49, i64 464, !49, i64 466, !36, i64 468, !49, i64 472, !49, i64 474, !49, i64 476, !49, i64 478, !49, i64 480, !49, i64 482, !36, i64 484, !36, i64 488, !49, i64 492, !49, i64 494, !36, i64 496, !36, i64 500, !49, i64 504, !49, i64 506, !49, i64 508, !49, i64 510, !49, i64 512, !37, i64 514, !37, i64 515, !36, i64 516, !36, i64 520, !36, i64 524, !49, i64 528, !49, i64 530, !49, i64 532, !49, i64 534, !49, i64 536, !49, i64 538, !49, i64 540, !49, i64 542, !57, i64 544, !57, i64 560, !58, i64 576, !50, i64 592, !49, i64 608, !49, i64 610, !39, i64 612, !39, i64 616, !39, i64 620, !39, i64 624, !36, i64 628, !39, i64 632, !39, i64 636, !39, i64 640, !39, i64 644, !49, i64 648, !49, i64 650, !49, i64 652, !49, i64 654, !49, i64 656, !49, i64 658, !39, i64 660, !39, i64 664, !49, i64 668, !49, i64 670, !39, i64 672, !39, i64 676, !37, i64 680, !36, i64 1704, !49, i64 1708, !49, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !36, i64 2520, !49, i64 2524, !49, i64 2526, !39, i64 2528, !39, i64 2532, !49, i64 2536, !49, i64 2538, !39, i64 2540, !49, i64 2544, !49, i64 2546, !36, i64 2548, !49, i64 2552, !49, i64 2554, !49, i64 2556, !49, i64 2558, !39, i64 2560, !39, i64 2564, !44, i64 2568, !36, i64 2576, !39, i64 2580, !37, i64 2584, !59, i64 2616, !36, i64 3976, !36, i64 3980}
!52 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !49, i64 8, !49, i64 10, !39, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !53, i64 24, !54, i64 184}
!53 = !{!"ColorManagedViewSettings", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 72, !39, i64 136, !39, i64 140, !44, i64 144, !44, i64 152}
!54 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!55 = !{!"QuicktimeCodecSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !49, i64 48, !49, i64 50, !36, i64 52, !36, i64 56, !36, i64 60}
!56 = !{!"FFMpegCodecData", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !39, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !44, i64 64}
!57 = !{!"rctf", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!58 = !{!"rcti", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!59 = !{!"BakeData", !52, i64 0, !37, i64 248, !49, i64 1272, !49, i64 1274, !49, i64 1276, !49, i64 1278, !39, i64 1280, !39, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!60 = !{!"AudioData", !36, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !36, i64 16, !49, i64 20, !49, i64 22, !39, i64 24, !39, i64 28}
!61 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!62 = !{!"GameData", !61, i64 0, !49, i64 16, !49, i64 18, !49, i64 20, !49, i64 22, !49, i64 24, !49, i64 26, !49, i64 28, !49, i64 30, !49, i64 32, !37, i64 34, !63, i64 40, !49, i64 64, !49, i64 66, !39, i64 68, !64, i64 72, !39, i64 128, !39, i64 132, !36, i64 136, !49, i64 140, !49, i64 142, !49, i64 144, !49, i64 146, !49, i64 148, !49, i64 150, !49, i64 152, !49, i64 154, !49, i64 156, !49, i64 158, !49, i64 160, !49, i64 162, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180}
!63 = !{!"GameDome", !49, i64 0, !49, i64 2, !49, i64 4, !49, i64 6, !39, i64 8, !39, i64 12, !44, i64 16}
!64 = !{!"RecastData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !36, i64 40, !39, i64 44, !39, i64 48, !49, i64 52, !49, i64 54}
!65 = !{!"UnitSettings", !39, i64 0, !37, i64 4, !37, i64 5, !49, i64 6}
!66 = !{!"PhysicsSettings", !37, i64 0, !36, i64 12, !36, i64 16, !36, i64 20}
!67 = !{!"long", !37, i64 0}
!68 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!69 = !{!43, !36, i64 28}
!70 = !{!39, !39, i64 0}
!71 = !{!72, !36, i64 1856}
!72 = !{!"Brush", !48, i64 0, !73, i64 120, !44, i64 144, !74, i64 152, !74, i64 464, !44, i64 776, !44, i64 784, !44, i64 792, !44, i64 800, !44, i64 808, !37, i64 816, !39, i64 1840, !49, i64 1844, !49, i64 1846, !39, i64 1848, !36, i64 1852, !36, i64 1856, !36, i64 1860, !39, i64 1864, !36, i64 1868, !36, i64 1872, !36, i64 1876, !36, i64 1880, !39, i64 1884, !39, i64 1888, !37, i64 1892, !39, i64 1904, !37, i64 1908, !36, i64 1920, !39, i64 1924, !39, i64 1928, !36, i64 1932, !36, i64 1936, !36, i64 1940, !37, i64 1944, !37, i64 1945, !37, i64 1946, !37, i64 1947, !39, i64 1948, !39, i64 1952, !39, i64 1956, !39, i64 1960, !39, i64 1964, !36, i64 1968, !36, i64 1972, !36, i64 1976, !39, i64 1980, !39, i64 1984, !36, i64 1988, !36, i64 1992, !39, i64 1996, !37, i64 2000, !37, i64 2012, !37, i64 2024, !37, i64 2032, !37, i64 2040, !37, i64 2048}
!73 = !{!"BrushClone", !44, i64 0, !37, i64 8, !39, i64 16, !39, i64 20}
!74 = !{!"MTex", !49, i64 0, !49, i64 2, !49, i64 4, !49, i64 6, !44, i64 8, !44, i64 16, !37, i64 24, !37, i64 88, !37, i64 89, !37, i64 90, !37, i64 91, !37, i64 92, !37, i64 104, !39, i64 116, !49, i64 120, !49, i64 122, !49, i64 124, !49, i64 126, !49, i64 128, !49, i64 130, !37, i64 132, !37, i64 133, !39, i64 140, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !39, i64 248, !39, i64 252, !39, i64 256, !39, i64 260, !39, i64 264, !39, i64 268, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !39, i64 300, !39, i64 304, !39, i64 308}
!75 = !{!76, !36, i64 84}
!76 = !{!"UnifiedPaintSettings", !36, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !37, i64 16, !37, i64 28, !36, i64 40, !37, i64 44, !39, i64 52, !36, i64 56, !36, i64 60, !37, i64 64, !37, i64 65, !39, i64 72, !37, i64 76, !36, i64 84, !39, i64 88, !37, i64 92, !37, i64 100, !36, i64 108, !44, i64 112, !39, i64 120, !36, i64 124}
!77 = !{!78, !44, i64 8}
!78 = !{!"ViewContext", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !44, i64 40, !44, i64 48, !37, i64 56}
!79 = !{!80, !44, i64 128}
!80 = !{!"Object", !48, i64 0, !44, i64 120, !44, i64 128, !49, i64 136, !49, i64 138, !36, i64 140, !36, i64 144, !36, i64 148, !37, i64 152, !44, i64 216, !44, i64 224, !44, i64 232, !44, i64 240, !44, i64 248, !44, i64 256, !44, i64 264, !44, i64 272, !44, i64 280, !44, i64 288, !44, i64 296, !44, i64 304, !81, i64 312, !44, i64 360, !50, i64 368, !50, i64 384, !50, i64 400, !50, i64 416, !36, i64 432, !36, i64 436, !44, i64 440, !44, i64 448, !36, i64 456, !36, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !39, i64 616, !39, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !36, i64 944, !49, i64 948, !49, i64 950, !49, i64 952, !49, i64 954, !49, i64 956, !49, i64 958, !49, i64 960, !49, i64 962, !49, i64 964, !37, i64 966, !37, i64 967, !36, i64 968, !36, i64 972, !36, i64 976, !36, i64 980, !36, i64 984, !39, i64 988, !39, i64 992, !39, i64 996, !39, i64 1000, !39, i64 1004, !39, i64 1008, !39, i64 1012, !39, i64 1016, !39, i64 1020, !39, i64 1024, !39, i64 1028, !39, i64 1032, !49, i64 1036, !49, i64 1038, !49, i64 1040, !37, i64 1042, !37, i64 1043, !49, i64 1044, !37, i64 1046, !37, i64 1047, !39, i64 1048, !39, i64 1052, !50, i64 1056, !50, i64 1072, !50, i64 1088, !50, i64 1104, !39, i64 1120, !49, i64 1124, !49, i64 1126, !37, i64 1128, !36, i64 1144, !36, i64 1148, !44, i64 1152, !37, i64 1160, !37, i64 1161, !49, i64 1162, !37, i64 1164, !50, i64 1176, !50, i64 1192, !50, i64 1208, !50, i64 1224, !44, i64 1240, !44, i64 1248, !44, i64 1256, !37, i64 1264, !37, i64 1265, !49, i64 1266, !39, i64 1268, !44, i64 1272, !44, i64 1280, !44, i64 1288, !44, i64 1296, !67, i64 1304, !67, i64 1312, !36, i64 1320, !36, i64 1324, !50, i64 1328, !50, i64 1344, !44, i64 1360, !44, i64 1368, !44, i64 1376, !37, i64 1384, !44, i64 1392, !50, i64 1400, !44, i64 1416}
!81 = !{!"bAnimVizSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !49, i64 16, !49, i64 18, !49, i64 20, !49, i64 22, !49, i64 24, !49, i64 26, !49, i64 28, !49, i64 30, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44}
!82 = !{i8 0, i8 2}
!83 = !{!36, !36, i64 0}
!84 = !{!76, !37, i64 64}
!85 = !{!72, !37, i64 1944}
!86 = !{!76, !36, i64 56}
!87 = !{!76, !36, i64 60}
!88 = !{!76, !39, i64 88}
!89 = !{!"paint_cursor.c:max_ff"}
!90 = !{!"paint_cursor.c:paint_draw_curve_cursor"}
!91 = !{!72, !44, i64 808}
!92 = !{!93, !44, i64 120}
!93 = !{!"PaintCurve", !48, i64 0, !44, i64 120, !36, i64 128, !36, i64 132}
!94 = !{!93, !36, i64 128}
!95 = !{!96, !37, i64 52}
!96 = !{!"PaintCurvePoint", !97, i64 0, !39, i64 72}
!97 = !{!"BezTriple", !37, i64 0, !39, i64 36, !39, i64 40, !39, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !39, i64 56, !39, i64 60, !39, i64 64, !37, i64 68}
!98 = !{!96, !37, i64 51}
!99 = !{!96, !37, i64 53}
!100 = distinct !{!100, !101}
!101 = !{!"llvm.loop.mustprogress"}
!102 = !{!"paint_cursor.c:paint_draw_alpha_overlay"}
!103 = !{!"paint_cursor.c:sculpt_get_brush_geometry"}
!104 = !{!105, !44, i64 104}
!105 = !{!"SculptSession", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !36, i64 32, !36, i64 36, !44, i64 40, !44, i64 48, !44, i64 56, !44, i64 64, !44, i64 72, !36, i64 80, !36, i64 84, !37, i64 88, !44, i64 96, !44, i64 104, !37, i64 112, !37, i64 113, !44, i64 120, !44, i64 128, !44, i64 136, !37, i64 144, !36, i64 148, !44, i64 152, !36, i64 160, !44, i64 168, !44, i64 176, !44, i64 184, !44, i64 192, !37, i64 200, !37, i64 204, !37, i64 216, !36, i64 228}
!106 = !{!107, !44, i64 16}
!107 = !{!"ToolSettings", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !39, i64 32, !39, i64 36, !39, i64 40, !49, i64 44, !49, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !39, i64 52, !49, i64 56, !37, i64 58, !37, i64 59, !108, i64 64, !109, i64 168, !39, i64 336, !39, i64 340, !49, i64 344, !49, i64 346, !37, i64 348, !37, i64 349, !49, i64 350, !39, i64 352, !39, i64 356, !39, i64 360, !39, i64 364, !39, i64 368, !39, i64 372, !39, i64 376, !39, i64 380, !39, i64 384, !39, i64 388, !49, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !44, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !49, i64 434, !49, i64 436, !49, i64 438, !49, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !36, i64 448, !36, i64 452, !36, i64 456, !36, i64 460, !49, i64 464, !49, i64 466, !36, i64 468, !39, i64 472, !39, i64 476, !76, i64 480, !110, i64 608}
!108 = !{!"ImagePaintSettings", !43, i64 0, !49, i64 40, !49, i64 42, !49, i64 44, !49, i64 46, !37, i64 48, !36, i64 52, !44, i64 56, !44, i64 64, !44, i64 72, !44, i64 80, !37, i64 88, !39, i64 100}
!109 = !{!"ParticleEditSettings", !49, i64 0, !49, i64 2, !49, i64 4, !49, i64 6, !37, i64 8, !44, i64 120, !39, i64 128, !39, i64 132, !36, i64 136, !36, i64 140, !36, i64 144, !36, i64 148, !44, i64 152, !44, i64 160}
!110 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !37, i64 20, !37, i64 21, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36}
!111 = !{!"paint_cursor.c:paint_cursor_on_hit"}
!112 = !{!78, !44, i64 0}
!113 = !{!"paint_cursor.c:draw_bezier_handle_lines"}
!114 = !{!97, !37, i64 51}
!115 = !{!97, !37, i64 52}
!116 = !{!97, !37, i64 53}
!117 = !{!"paint_cursor.c:draw_tri_point"}
!118 = !{!"paint_cursor.c:draw_rect_point"}
!119 = !{!"paint_cursor.c:paint_draw_tex_overlay"}
!120 = !{!72, !36, i64 1872}
!121 = !{!74, !44, i64 16}
!122 = !{!74, !37, i64 132}
!123 = !{!76, !39, i64 52}
!124 = !{!78, !44, i64 24}
!125 = !{!74, !39, i64 116}
!126 = !{!"paint_cursor.c:paint_draw_cursor_overlay"}
!127 = !{!72, !36, i64 1976}
!128 = !{!"paint_cursor.c:load_tex"}
!129 = !{i32 0, i32 2}
!130 = distinct !{!130, !101}
!131 = !{!35, !36, i64 12}
!132 = !{!44, !44, i64 0}
!133 = !{!134, !44, i64 336}
!134 = !{!"Tex", !48, i64 0, !44, i64 120, !39, i64 128, !39, i64 132, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !49, i64 216, !49, i64 218, !49, i64 220, !49, i64 222, !49, i64 224, !49, i64 226, !49, i64 228, !49, i64 230, !49, i64 232, !49, i64 234, !39, i64 236, !39, i64 240, !39, i64 244, !39, i64 248, !36, i64 252, !36, i64 256, !49, i64 260, !49, i64 262, !49, i64 264, !49, i64 266, !36, i64 268, !36, i64 272, !36, i64 276, !36, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !135, i64 296, !44, i64 336, !44, i64 344, !44, i64 352, !44, i64 360, !44, i64 368, !44, i64 376, !44, i64 384, !44, i64 392, !44, i64 400, !37, i64 408, !37, i64 409}
!135 = !{!"ImageUser", !44, i64 0, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !49, i64 28, !49, i64 30, !49, i64 32, !49, i64 34, !36, i64 36}
!136 = !{!134, !49, i64 232}
!137 = !{!134, !44, i64 352}
!138 = !{!139, !44, i64 48}
!139 = !{!"ImBuf", !44, i64 0, !44, i64 8, !36, i64 16, !36, i64 20, !37, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !44, i64 40, !44, i64 48, !37, i64 56, !36, i64 72, !36, i64 76, !36, i64 80, !36, i64 84, !44, i64 88, !44, i64 96, !44, i64 104, !39, i64 112, !37, i64 120, !36, i64 280, !36, i64 284, !36, i64 288, !36, i64 292, !44, i64 296, !44, i64 304, !36, i64 312, !37, i64 316, !37, i64 1340, !44, i64 2368, !36, i64 2376, !44, i64 2384, !36, i64 2392, !36, i64 2396, !44, i64 2400, !44, i64 2408, !44, i64 2416, !44, i64 2424, !36, i64 2432, !58, i64 2436, !140, i64 2456}
!140 = !{!"DDSData", !36, i64 0, !36, i64 4, !44, i64 8, !36, i64 16}
!141 = !{!139, !44, i64 2400}
!142 = !{!49, !49, i64 0}
!143 = !{!37, !37, i64 0}
!144 = !{!72, !39, i64 1964}
!145 = distinct !{!145, !101}
!146 = distinct !{!146, !101}
!147 = !{!148, !44, i64 360}
!148 = !{!"bNodeTree", !48, i64 0, !44, i64 120, !44, i64 128, !37, i64 136, !44, i64 200, !44, i64 208, !37, i64 216, !50, i64 224, !50, i64 240, !36, i64 256, !36, i64 260, !36, i64 264, !36, i64 268, !36, i64 272, !49, i64 276, !49, i64 278, !36, i64 280, !36, i64 284, !49, i64 288, !49, i64 290, !36, i64 292, !57, i64 296, !50, i64 312, !50, i64 328, !44, i64 344, !149, i64 352, !36, i64 356, !44, i64 360, !44, i64 368, !44, i64 376, !44, i64 384, !44, i64 392, !44, i64 400, !44, i64 408, !44, i64 416, !44, i64 424}
!149 = !{!"bNodeInstanceKey", !36, i64 0}
!150 = !{!35, !37, i64 20}
!151 = !{!"paint_cursor.c:BLI_rcti_size_x"}
!152 = !{!58, !36, i64 4}
!153 = !{!58, !36, i64 0}
!154 = !{!"paint_cursor.c:BLI_rcti_size_y"}
!155 = !{!58, !36, i64 12}
!156 = !{!58, !36, i64 8}
!157 = !{!"paint_cursor.c:same_tex_snap"}
!158 = !{!159, !49, i64 208}
!159 = !{!"ARegion", !44, i64 0, !44, i64 8, !160, i64 16, !58, i64 176, !58, i64 192, !49, i64 208, !49, i64 210, !49, i64 212, !49, i64 214, !49, i64 216, !49, i64 218, !39, i64 220, !49, i64 224, !49, i64 226, !49, i64 228, !49, i64 230, !49, i64 232, !49, i64 234, !49, i64 236, !49, i64 238, !44, i64 240, !50, i64 248, !50, i64 264, !50, i64 280, !50, i64 296, !50, i64 312, !50, i64 328, !50, i64 344, !44, i64 360, !44, i64 368, !44, i64 376}
!160 = !{!"View2D", !57, i64 0, !57, i64 16, !58, i64 32, !58, i64 48, !58, i64 64, !37, i64 80, !37, i64 88, !39, i64 96, !39, i64 100, !49, i64 104, !49, i64 106, !49, i64 108, !49, i64 110, !49, i64 112, !49, i64 114, !49, i64 116, !49, i64 118, !49, i64 120, !49, i64 122, !49, i64 124, !49, i64 126, !44, i64 128, !36, i64 136, !36, i64 140, !44, i64 144, !44, i64 152}
!161 = !{!35, !36, i64 4}
!162 = !{!159, !49, i64 210}
!163 = !{!35, !36, i64 8}
!164 = !{!35, !39, i64 16}
!165 = !{!"paint_cursor.c:make_tex_snap"}
!166 = !{!"paint_cursor.c:load_tex_cursor"}
!167 = !{!41, !36, i64 8}
!168 = distinct !{!168, !101}
!169 = !{!41, !36, i64 4}
!170 = !{!72, !44, i64 144}
!171 = distinct !{!171, !101}
!172 = distinct !{!172, !101}
!173 = !{!"paint_cursor.c:copy_v2_v2"}
!174 = !{!"paint_cursor.c:project_brush_radius"}
!175 = !{!78, !44, i64 40}
!176 = !{!"paint_cursor.c:cross_v3_v3v3"}
!177 = !{!"paint_cursor.c:normalize_v3"}
!178 = !{!"paint_cursor.c:mul_v3_fl"}
!179 = !{!"paint_cursor.c:add_v3_v3v3"}
!180 = !{!"paint_cursor.c:len_v2v2"}
!181 = !{!"paint_cursor.c:normalize_v3_v3"}
!182 = !{!"paint_cursor.c:dot_v3v3"}
!183 = !{!"paint_cursor.c:mul_v3_v3fl"}
!184 = !{!"paint_cursor.c:zero_v3"}
