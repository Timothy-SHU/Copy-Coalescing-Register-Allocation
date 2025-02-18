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
%struct.PaintCurve = type { %struct.ID, ptr, i32, i32 }
%struct.PaintCurvePoint = type { %struct.BezTriple, float }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
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

; Function Attrs: nounwind uwtable
define dso_local void @paint_cursor_delete_textures() local_unnamed_addr #0 {
  %1 = load i32, ptr @primary_snap, align 4, !tbaa !34
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @glDeleteTextures(i32 noundef 1, ptr noundef nonnull @primary_snap) #8
  br label %4

4:                                                ; preds = %3, %0
  %5 = load i32, ptr @secondary_snap, align 4, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @glDeleteTextures(i32 noundef 1, ptr noundef nonnull @secondary_snap) #8
  br label %8

8:                                                ; preds = %7, %4
  %9 = load i32, ptr @cursor_snap, align 4, !tbaa !40
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @glDeleteTextures(i32 noundef 1, ptr noundef nonnull @cursor_snap) #8
  br label %12

12:                                               ; preds = %11, %8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) @primary_snap, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) @secondary_snap, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) @cursor_snap, i8 0, i64 12, i1 false)
  tail call void @BKE_paint_invalidate_overlay_all() #8
  ret void
}

declare void @glDeleteTextures(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare void @BKE_paint_invalidate_overlay_all() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @paint_cursor_start(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Paint, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = tail call ptr @CTX_wm_manager(ptr noundef %0) #8
  %11 = tail call ptr @WM_paint_cursor_activate(ptr noundef %10, ptr noundef %1, ptr noundef nonnull @paint_draw_cursor, ptr noundef null) #8
  store ptr %11, ptr %6, align 8, !tbaa !42
  br label %12

12:                                               ; preds = %9, %5, %2
  tail call void @BKE_paint_invalidate_overlay_all() #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare ptr @BKE_paint_get_active_from_context(ptr noundef) local_unnamed_addr #1

declare ptr @WM_paint_cursor_activate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @paint_draw_cursor(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture readnone %3) #0 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x float], align 4
  %10 = alloca [82 x float], align 16
  %11 = alloca %struct.ViewContext, align 8
  %12 = alloca [2 x float], align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca [3 x float], align 4
  %16 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %17 = getelementptr inbounds %struct.Scene, ptr %16, i64 0, i32 20
  %18 = load ptr, ptr %17, align 8, !tbaa !45
  %19 = getelementptr inbounds %struct.ToolSettings, ptr %18, i64 0, i32 73
  %20 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #8
  %21 = tail call ptr @BKE_paint_brush(ptr noundef %20) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #8
  %22 = getelementptr inbounds %struct.Paint, ptr %20, i64 0, i32 4
  %23 = load i32, ptr %22, align 4, !tbaa !68
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %382, label %26

26:                                               ; preds = %4
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %11) #8
  %27 = call i32 @get_imapaint_zoom(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %14) #8
  %28 = load float, ptr %13, align 4, !tbaa !69
  %29 = load float, ptr %14, align 4, !tbaa !69
  %30 = fcmp ogt float %28, %29
  %31 = select i1 %30, float %28, float %29
  store float %31, ptr %13, align 4, !tbaa !69
  %32 = call i32 @BKE_paintmode_get_active_from_context(ptr noundef %0) #8
  %33 = getelementptr inbounds %struct.Brush, ptr %21, i64 0, i32 16
  %34 = load i32, ptr %33, align 8, !tbaa !70
  %35 = icmp sgt i32 %34, -1
  br i1 %35, label %116, label %36

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.Brush, ptr %21, i64 0, i32 9
  %38 = load ptr, ptr %37, align 8, !tbaa !74
  %39 = icmp eq ptr %38, null
  br i1 %39, label %382, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.PaintCurve, ptr %38, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !75
  %43 = icmp eq ptr %42, null
  br i1 %43, label %382, label %44

44:                                               ; preds = %40
  call void @glEnable(i32 noundef 2848) #8
  call void @glEnable(i32 noundef 3042) #8
  call void @glEnableClientState(i32 noundef 32884) #8
  %45 = getelementptr inbounds %struct.PaintCurve, ptr %38, i64 0, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !77
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %92

48:                                               ; preds = %44, %87
  %49 = phi i32 [ %88, %87 ], [ 0, %44 ]
  %50 = phi ptr [ %51, %87 ], [ %42, %44 ]
  %51 = getelementptr inbounds %struct.PaintCurvePoint, ptr %50, i64 1
  call void @llvm.lifetime.start.p0(i64 328, ptr nonnull %10) #8
  call fastcc void @draw_bezier_handle_lines(ptr noundef nonnull %50)
  %52 = getelementptr inbounds [3 x [3 x float]], ptr %50, i64 0, i64 1
  %53 = getelementptr inbounds %struct.BezTriple, ptr %50, i64 0, i32 8
  %54 = load i8, ptr %53, align 4, !tbaa !78
  call fastcc void @draw_tri_point(ptr noundef nonnull %52, i8 noundef zeroext %54)
  %55 = getelementptr inbounds %struct.BezTriple, ptr %50, i64 0, i32 7
  %56 = load i8, ptr %55, align 1, !tbaa !81
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %48
  %59 = load i8, ptr %53, align 4, !tbaa !78
  %60 = icmp ne i8 %59, 0
  br label %61

61:                                               ; preds = %58, %48
  %62 = phi i1 [ true, %48 ], [ %60, %58 ]
  %63 = zext i1 %62 to i8
  call fastcc void @draw_rect_point(ptr noundef nonnull %50, i8 noundef zeroext %63)
  %64 = getelementptr inbounds [3 x [3 x float]], ptr %50, i64 0, i64 2
  %65 = getelementptr inbounds %struct.BezTriple, ptr %50, i64 0, i32 9
  %66 = load i8, ptr %65, align 1, !tbaa !82
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load i8, ptr %53, align 4, !tbaa !78
  %70 = icmp ne i8 %69, 0
  br label %71

71:                                               ; preds = %68, %61
  %72 = phi i1 [ true, %61 ], [ %70, %68 ]
  %73 = zext i1 %72 to i8
  call fastcc void @draw_rect_point(ptr noundef nonnull %64, i8 noundef zeroext %73)
  br label %74

74:                                               ; preds = %71, %74
  %75 = phi i64 [ 0, %71 ], [ %85, %74 ]
  %76 = getelementptr inbounds [3 x [3 x float]], ptr %50, i64 0, i64 1, i64 %75
  %77 = load float, ptr %76, align 4, !tbaa !69
  %78 = getelementptr inbounds [3 x [3 x float]], ptr %50, i64 0, i64 2, i64 %75
  %79 = load float, ptr %78, align 4, !tbaa !69
  %80 = getelementptr inbounds [3 x float], ptr %51, i64 0, i64 %75
  %81 = load float, ptr %80, align 4, !tbaa !69
  %82 = getelementptr inbounds %struct.PaintCurvePoint, ptr %50, i64 1, i32 0, i32 0, i64 1, i64 %75
  %83 = load float, ptr %82, align 4, !tbaa !69
  %84 = getelementptr inbounds float, ptr %10, i64 %75
  call void @BKE_curve_forward_diff_bezier(float noundef %77, float noundef %79, float noundef %81, float noundef %83, ptr noundef nonnull %84, i32 noundef 40, i32 noundef 8) #8
  %85 = add nuw nsw i64 %75, 1
  %86 = icmp eq i64 %75, 0
  br i1 %86, label %74, label %87, !llvm.loop !83

87:                                               ; preds = %74
  call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef nonnull %10) #8
  call void @glLineWidth(float noundef 3.000000e+00) #8
  call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 5.000000e-01) #8
  call void @glDrawArrays(i32 noundef 3, i32 noundef 0, i32 noundef 41) #8
  call void @glLineWidth(float noundef 1.000000e+00) #8
  call void @glColor4f(float noundef 0x3FECCCCCC0000000, float noundef 0x3FECCCCCC0000000, float noundef 1.000000e+00, float noundef 5.000000e-01) #8
  call void @glDrawArrays(i32 noundef 3, i32 noundef 0, i32 noundef 41) #8
  call void @llvm.lifetime.end.p0(i64 328, ptr nonnull %10) #8
  %88 = add nuw nsw i32 %49, 1
  %89 = load i32, ptr %45, align 8, !tbaa !77
  %90 = add nsw i32 %89, -1
  %91 = icmp slt i32 %88, %90
  br i1 %91, label %48, label %92, !llvm.loop !86

92:                                               ; preds = %87, %44
  %93 = phi ptr [ %42, %44 ], [ %51, %87 ]
  call fastcc void @draw_bezier_handle_lines(ptr noundef nonnull %93)
  %94 = getelementptr inbounds [3 x [3 x float]], ptr %93, i64 0, i64 1
  %95 = getelementptr inbounds %struct.BezTriple, ptr %93, i64 0, i32 8
  %96 = load i8, ptr %95, align 4, !tbaa !78
  call fastcc void @draw_tri_point(ptr noundef nonnull %94, i8 noundef zeroext %96)
  %97 = getelementptr inbounds %struct.BezTriple, ptr %93, i64 0, i32 7
  %98 = load i8, ptr %97, align 1, !tbaa !81
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %92
  %101 = load i8, ptr %95, align 4, !tbaa !78
  %102 = icmp ne i8 %101, 0
  %103 = zext i1 %102 to i8
  br label %104

104:                                              ; preds = %100, %92
  %105 = phi i8 [ 1, %92 ], [ %103, %100 ]
  call fastcc void @draw_rect_point(ptr noundef nonnull %93, i8 noundef zeroext %105)
  %106 = getelementptr inbounds [3 x [3 x float]], ptr %93, i64 0, i64 2
  %107 = getelementptr inbounds %struct.BezTriple, ptr %93, i64 0, i32 9
  %108 = load i8, ptr %107, align 1, !tbaa !82
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = load i8, ptr %95, align 4, !tbaa !78
  %112 = icmp ne i8 %111, 0
  %113 = zext i1 %112 to i8
  br label %114

114:                                              ; preds = %110, %104
  %115 = phi i8 [ 1, %104 ], [ %113, %110 ]
  call fastcc void @draw_rect_point(ptr noundef nonnull %106, i8 noundef zeroext %115)
  call void @glLineWidth(float noundef 1.000000e+00) #8
  call void @glDisable(i32 noundef 3042) #8
  call void @glDisable(i32 noundef 2848) #8
  call void @glDisableClientState(i32 noundef 32884) #8
  br label %382

116:                                              ; preds = %26
  %117 = sitofp i32 %1 to float
  store float %117, ptr %12, align 4, !tbaa !69
  %118 = sitofp i32 %2 to float
  %119 = getelementptr inbounds [2 x float], ptr %12, i64 0, i64 1
  store float %118, ptr %119, align 4, !tbaa !69
  %120 = getelementptr inbounds %struct.Brush, ptr %21, i64 0, i32 51
  %121 = call i32 @BKE_brush_size_get(ptr noundef %16, ptr noundef %21) #8
  %122 = sitofp i32 %121 to float
  %123 = load float, ptr %13, align 4, !tbaa !69
  %124 = fmul float %123, %122
  %125 = getelementptr inbounds %struct.ToolSettings, ptr %18, i64 0, i32 73, i32 15
  %126 = load i32, ptr %125, align 4, !tbaa !87
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %116
  %129 = load i32, ptr %33, align 8, !tbaa !70
  %130 = and i32 %129, 128
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %128
  call void @paint_calculate_rake_rotation(ptr noundef nonnull %19, ptr noundef nonnull %12) #8
  br label %133

133:                                              ; preds = %128, %132, %116
  %134 = load float, ptr %13, align 4, !tbaa !69
  %135 = call i32 @BKE_paint_get_overlay_flags() #8
  call void @glPushAttrib(i32 noundef 294157) #8
  switch i32 %32, label %147 [
    i32 4, label %136
    i32 3, label %136
    i32 1, label %136
  ]

136:                                              ; preds = %133, %133, %133
  %137 = and i32 %135, 32
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  call fastcc void @paint_draw_tex_overlay(ptr noundef nonnull %19, ptr noundef %21, ptr noundef nonnull %11, i32 noundef %1, i32 noundef %2, float noundef %134, i8 noundef zeroext 1, i8 noundef zeroext 1)
  br label %140

140:                                              ; preds = %139, %136
  %141 = and i32 %135, 64
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  call fastcc void @paint_draw_tex_overlay(ptr noundef nonnull %19, ptr noundef %21, ptr noundef nonnull %11, i32 noundef %1, i32 noundef %2, float noundef %134, i8 noundef zeroext 0, i8 noundef zeroext 0)
  br label %144

144:                                              ; preds = %143, %140
  %145 = and i32 %135, 16
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %154, label %155

147:                                              ; preds = %133
  %148 = and i32 %135, 32
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  call fastcc void @paint_draw_tex_overlay(ptr noundef nonnull %19, ptr noundef %21, ptr noundef nonnull %11, i32 noundef %1, i32 noundef %2, float noundef %134, i8 noundef zeroext 0, i8 noundef zeroext 1)
  br label %151

151:                                              ; preds = %150, %147
  %152 = and i32 %135, 16
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %151, %144
  call fastcc void @paint_draw_cursor_overlay(ptr noundef nonnull %19, ptr noundef %21, ptr noundef nonnull %11, i32 noundef %1, i32 noundef %2, float noundef %134)
  br label %155

155:                                              ; preds = %154, %144, %151
  call void @glPopAttrib() #8
  %156 = icmp eq i32 %32, 0
  br i1 %156, label %157, label %343

157:                                              ; preds = %155
  %158 = getelementptr inbounds %struct.ViewContext, ptr %11, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !89
  %160 = getelementptr inbounds %struct.Object, ptr %159, i64 0, i32 2
  %161 = load ptr, ptr %160, align 8, !tbaa !91
  %162 = icmp eq ptr %161, null
  br i1 %162, label %343, label %163

163:                                              ; preds = %157
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #8
  %164 = call ptr @CTX_data_scene(ptr noundef %0) #8
  %165 = call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  store float %117, ptr %9, align 4, !tbaa !69
  %166 = getelementptr inbounds [2 x float], ptr %9, i64 0, i64 1
  store float %118, ptr %166, align 4, !tbaa !69
  %167 = load ptr, ptr %158, align 8, !tbaa !89
  %168 = getelementptr inbounds %struct.Object, ptr %167, i64 0, i32 2
  %169 = load ptr, ptr %168, align 8, !tbaa !91
  %170 = icmp eq ptr %169, null
  br i1 %170, label %279, label %171

171:                                              ; preds = %163
  %172 = getelementptr inbounds %struct.SculptSession, ptr %169, i64 0, i32 15
  %173 = load ptr, ptr %172, align 8, !tbaa !94
  %174 = icmp eq ptr %173, null
  br i1 %174, label %279, label %175

175:                                              ; preds = %171
  %176 = call zeroext i8 @sculpt_stroke_get_location(ptr noundef %0, ptr noundef nonnull %15, ptr noundef nonnull %9) #8
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %279, label %178

178:                                              ; preds = %175
  %179 = call ptr @BKE_paint_brush(ptr noundef %165) #8
  %180 = call float @BKE_brush_unprojected_radius_get(ptr noundef %164, ptr noundef %179) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  %181 = getelementptr inbounds %struct.ViewContext, ptr %11, i64 0, i32 5
  %182 = load ptr, ptr %181, align 8, !tbaa !96
  call void @ED_view3d_global_to_vector(ptr noundef %182, ptr noundef nonnull %15, ptr noundef nonnull %5) #8
  %183 = load float, ptr %5, align 4, !tbaa !69
  %184 = call float @llvm.fabs.f32(float %183)
  %185 = fcmp olt float %184, 0x3FB99999A0000000
  br i1 %185, label %186, label %192

186:                                              ; preds = %178
  %187 = fadd float %183, 1.000000e+00
  %188 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %189 = load float, ptr %188, align 4, !tbaa !69
  %190 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %191 = load float, ptr %190, align 4, !tbaa !69
  br label %205

192:                                              ; preds = %178
  %193 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %194 = load float, ptr %193, align 4, !tbaa !69
  %195 = call float @llvm.fabs.f32(float %194)
  %196 = fcmp olt float %195, 0x3FB99999A0000000
  br i1 %196, label %197, label %201

197:                                              ; preds = %192
  %198 = fadd float %194, 1.000000e+00
  %199 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %200 = load float, ptr %199, align 4, !tbaa !69
  br label %205

201:                                              ; preds = %192
  %202 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %203 = load float, ptr %202, align 4, !tbaa !69
  %204 = fadd float %203, 1.000000e+00
  br label %205

205:                                              ; preds = %201, %197, %186
  %206 = phi float [ %191, %186 ], [ %200, %197 ], [ %204, %201 ]
  %207 = phi float [ %189, %186 ], [ %198, %197 ], [ %194, %201 ]
  %208 = phi float [ %187, %186 ], [ %183, %197 ], [ %183, %201 ]
  %209 = getelementptr inbounds float, ptr %5, i64 2
  %210 = load float, ptr %209, align 4, !tbaa !69
  %211 = getelementptr inbounds float, ptr %5, i64 1
  %212 = load float, ptr %211, align 4, !tbaa !69
  %213 = fneg float %206
  %214 = fmul float %212, %213
  %215 = call float @llvm.fmuladd.f32(float %207, float %210, float %214)
  %216 = fneg float %208
  %217 = fmul float %210, %216
  %218 = call float @llvm.fmuladd.f32(float %206, float %183, float %217)
  %219 = fneg float %207
  %220 = fmul float %183, %219
  %221 = call float @llvm.fmuladd.f32(float %208, float %212, float %220)
  %222 = fmul float %218, %218
  %223 = call float @llvm.fmuladd.f32(float %215, float %215, float %222)
  %224 = call float @llvm.fmuladd.f32(float %221, float %221, float %223)
  %225 = fcmp ogt float %224, 0x38AA95A5C0000000
  br i1 %225, label %226, label %232

226:                                              ; preds = %205
  %227 = call float @sqrtf(float noundef %224) #8
  %228 = fdiv float 1.000000e+00, %227
  %229 = fmul float %215, %228
  %230 = fmul float %218, %228
  %231 = fmul float %221, %228
  br label %232

232:                                              ; preds = %226, %205
  %233 = phi float [ %230, %226 ], [ 0.000000e+00, %205 ]
  %234 = phi float [ %229, %226 ], [ 0.000000e+00, %205 ]
  %235 = phi float [ %231, %226 ], [ 0.000000e+00, %205 ]
  %236 = fmul float %180, %234
  %237 = fmul float %180, %233
  %238 = fmul float %180, %235
  %239 = load float, ptr %15, align 4, !tbaa !69
  %240 = fadd float %236, %239
  store float %240, ptr %6, align 4, !tbaa !69
  %241 = getelementptr inbounds float, ptr %15, i64 1
  %242 = load float, ptr %241, align 4, !tbaa !69
  %243 = fadd float %237, %242
  %244 = getelementptr inbounds float, ptr %6, i64 1
  store float %243, ptr %244, align 4, !tbaa !69
  %245 = getelementptr inbounds float, ptr %15, i64 2
  %246 = load float, ptr %245, align 4, !tbaa !69
  %247 = fadd float %238, %246
  %248 = getelementptr inbounds float, ptr %6, i64 2
  store float %247, ptr %248, align 4, !tbaa !69
  %249 = getelementptr inbounds %struct.ViewContext, ptr %11, i64 0, i32 3
  %250 = load ptr, ptr %249, align 8, !tbaa !97
  %251 = call i32 @ED_view3d_project_float_global(ptr noundef %250, ptr noundef nonnull %15, ptr noundef nonnull %7, i32 noundef 0) #8
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %270

253:                                              ; preds = %232
  %254 = load ptr, ptr %249, align 8, !tbaa !97
  %255 = call i32 @ED_view3d_project_float_global(ptr noundef %254, ptr noundef nonnull %6, ptr noundef nonnull %8, i32 noundef 0) #8
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %270

257:                                              ; preds = %253
  %258 = load float, ptr %7, align 4, !tbaa !69
  %259 = load float, ptr %8, align 4, !tbaa !69
  %260 = fsub float %258, %259
  %261 = getelementptr inbounds float, ptr %7, i64 1
  %262 = load float, ptr %261, align 4, !tbaa !69
  %263 = getelementptr inbounds float, ptr %8, i64 1
  %264 = load float, ptr %263, align 4, !tbaa !69
  %265 = fsub float %262, %264
  %266 = fmul float %265, %265
  %267 = call float @llvm.fmuladd.f32(float %260, float %260, float %266)
  %268 = call float @sqrtf(float noundef %267) #8
  %269 = fptosi float %268 to i32
  br label %270

270:                                              ; preds = %257, %253, %232
  %271 = phi i32 [ %269, %257 ], [ 0, %253 ], [ 0, %232 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %270
  %274 = call i32 @BKE_brush_size_get(ptr noundef %164, ptr noundef %179) #8
  br label %275

275:                                              ; preds = %273, %270
  %276 = phi i32 [ %274, %273 ], [ %271, %270 ]
  %277 = load ptr, ptr %158, align 8, !tbaa !89
  %278 = getelementptr inbounds %struct.Object, ptr %277, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %278, ptr noundef nonnull %15) #8
  br label %285

279:                                              ; preds = %175, %171, %163
  %280 = call ptr @CTX_data_tool_settings(ptr noundef %0) #8
  %281 = getelementptr inbounds %struct.ToolSettings, ptr %280, i64 0, i32 2
  %282 = load ptr, ptr %281, align 8, !tbaa !98
  %283 = call ptr @BKE_paint_brush(ptr noundef %282) #8
  %284 = call i32 @BKE_brush_size_get(ptr noundef %164, ptr noundef %283) #8
  br label %285

285:                                              ; preds = %275, %279
  %286 = phi i32 [ %284, %279 ], [ %276, %275 ]
  %287 = phi i1 [ true, %279 ], [ false, %275 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  %288 = call i32 @BKE_brush_use_locked_size(ptr noundef %16, ptr noundef %21) #8
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %291, label %290

290:                                              ; preds = %285
  call void @BKE_brush_size_set(ptr noundef %16, ptr noundef %21, i32 noundef %286) #8
  br label %291

291:                                              ; preds = %290, %285
  %292 = getelementptr inbounds %struct.ToolSettings, ptr %18, i64 0, i32 73, i32 11
  %293 = load i8, ptr %292, align 8, !tbaa !103
  %294 = icmp eq i8 %293, 0
  %295 = load i32, ptr %33, align 8, !tbaa !70
  %296 = and i32 %295, 512
  %297 = icmp eq i32 %296, 0
  %298 = xor i1 %294, %297
  br i1 %298, label %299, label %304

299:                                              ; preds = %291
  %300 = getelementptr inbounds %struct.Brush, ptr %21, i64 0, i32 34
  %301 = load i8, ptr %300, align 8, !tbaa !104
  switch i8 %301, label %304 [
    i8 1, label %302
    i8 4, label %302
    i8 8, label %302
    i8 3, label %302
    i8 16, label %302
  ]

302:                                              ; preds = %299, %299, %299, %299, %299
  %303 = getelementptr inbounds %struct.Brush, ptr %21, i64 0, i32 52
  br label %304

304:                                              ; preds = %299, %302, %291
  %305 = phi ptr [ %303, %302 ], [ %120, %291 ], [ %120, %299 ]
  br i1 %287, label %342, label %306

306:                                              ; preds = %304
  %307 = load ptr, ptr %11, align 8, !tbaa !105
  %308 = call i32 @BKE_brush_use_locked_size(ptr noundef %307, ptr noundef %21) #8
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %342

310:                                              ; preds = %306
  %311 = getelementptr inbounds %struct.ToolSettings, ptr %18, i64 0, i32 73, i32 9
  %312 = load i32, ptr %311, align 8, !tbaa !106
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %318, label %314

314:                                              ; preds = %310
  %315 = getelementptr inbounds %struct.ToolSettings, ptr %18, i64 0, i32 73, i32 10
  %316 = load i32, ptr %315, align 4, !tbaa !107
  %317 = sitofp i32 %316 to float
  br label %326

318:                                              ; preds = %310
  %319 = load i32, ptr %33, align 8, !tbaa !70
  %320 = and i32 %319, 256
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %326

322:                                              ; preds = %318
  %323 = load ptr, ptr %11, align 8, !tbaa !105
  %324 = call i32 @BKE_brush_size_get(ptr noundef %323, ptr noundef %21) #8
  %325 = sitofp i32 %324 to float
  br label %326

326:                                              ; preds = %322, %318, %314
  %327 = phi float [ %317, %314 ], [ %325, %322 ], [ 8.000000e+00, %318 ]
  %328 = call float @paint_calc_object_space_radius(ptr noundef nonnull %11, ptr noundef nonnull %15, float noundef %327) #8
  %329 = load i32, ptr %125, align 4, !tbaa !87
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %339, label %331

331:                                              ; preds = %326
  %332 = load ptr, ptr %11, align 8, !tbaa !105
  %333 = call i32 @BKE_brush_use_size_pressure(ptr noundef %332, ptr noundef %21) #8
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %339, label %335

335:                                              ; preds = %331
  %336 = getelementptr inbounds %struct.ToolSettings, ptr %18, i64 0, i32 73, i32 16
  %337 = load float, ptr %336, align 8, !tbaa !108
  %338 = fmul float %328, %337
  br label %339

339:                                              ; preds = %335, %331, %326
  %340 = phi float [ %338, %335 ], [ %328, %331 ], [ %328, %326 ]
  %341 = load ptr, ptr %11, align 8, !tbaa !105
  call void @BKE_brush_unprojected_radius_set(ptr noundef %341, ptr noundef %21, float noundef %340) #8
  br label %342

342:                                              ; preds = %339, %306, %304
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #8
  br label %343

343:                                              ; preds = %342, %157, %155
  %344 = phi ptr [ %305, %342 ], [ %120, %157 ], [ %120, %155 ]
  %345 = getelementptr inbounds %struct.ToolSettings, ptr %18, i64 0, i32 73, i32 9
  %346 = load i32, ptr %345, align 8, !tbaa !106
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %356, label %348

348:                                              ; preds = %343
  %349 = getelementptr inbounds %struct.ToolSettings, ptr %18, i64 0, i32 73, i32 10
  %350 = load i32, ptr %349, align 4, !tbaa !107
  %351 = sitofp i32 %350 to float
  %352 = getelementptr inbounds %struct.ToolSettings, ptr %18, i64 0, i32 73, i32 14
  %353 = load float, ptr %352, align 4, !tbaa !69
  store float %353, ptr %12, align 4, !tbaa !69
  %354 = getelementptr inbounds %struct.ToolSettings, ptr %18, i64 0, i32 73, i32 14, i64 1
  %355 = load float, ptr %354, align 4, !tbaa !69
  store float %355, ptr %119, align 4, !tbaa !69
  br label %356

356:                                              ; preds = %348, %343
  %357 = phi float [ %351, %348 ], [ %124, %343 ]
  call void @glEnable(i32 noundef 3042) #8
  call void @glEnable(i32 noundef 2848) #8
  %358 = load float, ptr %344, align 4, !tbaa !69
  %359 = getelementptr inbounds float, ptr %344, i64 1
  %360 = load float, ptr %359, align 4, !tbaa !69
  %361 = getelementptr inbounds float, ptr %344, i64 2
  %362 = load float, ptr %361, align 4, !tbaa !69
  call void @glColor4f(float noundef %358, float noundef %360, float noundef %362, float noundef 5.000000e-01) #8
  %363 = load float, ptr %12, align 4, !tbaa !69
  %364 = load float, ptr %119, align 4, !tbaa !69
  call void @glTranslatef(float noundef %363, float noundef %364, float noundef 0.000000e+00) #8
  %365 = load i32, ptr %125, align 4, !tbaa !87
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %377, label %367

367:                                              ; preds = %356
  %368 = call i32 @BKE_brush_use_size_pressure(ptr noundef %16, ptr noundef %21) #8
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %377, label %370

370:                                              ; preds = %367
  %371 = getelementptr inbounds %struct.ToolSettings, ptr %18, i64 0, i32 73, i32 16
  %372 = load float, ptr %371, align 8, !tbaa !108
  %373 = fmul float %357, %372
  call void @glutil_draw_lined_arc(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef %373, i32 noundef 40) #8
  %374 = load float, ptr %344, align 4, !tbaa !69
  %375 = load float, ptr %359, align 4, !tbaa !69
  %376 = load float, ptr %361, align 4, !tbaa !69
  call void @glColor4f(float noundef %374, float noundef %375, float noundef %376, float noundef 2.500000e-01) #8
  br label %377

377:                                              ; preds = %370, %367, %356
  call void @glutil_draw_lined_arc(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef %357, i32 noundef 40) #8
  %378 = load float, ptr %12, align 4, !tbaa !69
  %379 = fneg float %378
  %380 = load float, ptr %119, align 4, !tbaa !69
  %381 = fneg float %380
  call void @glTranslatef(float noundef %379, float noundef %381, float noundef 0.000000e+00) #8
  call void @glDisable(i32 noundef 3042) #8
  call void @glDisable(i32 noundef 2848) #8
  br label %382

382:                                              ; preds = %114, %40, %36, %4, %377
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local void @paint_cursor_start_explicit(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.Paint, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call ptr @WM_paint_cursor_activate(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @paint_draw_cursor, ptr noundef null) #8
  store ptr %10, ptr %6, align 8, !tbaa !42
  br label %11

11:                                               ; preds = %9, %5, %3
  ret void
}

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_paint_brush(ptr noundef) local_unnamed_addr #1

declare void @view3d_set_viewcontext(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @get_imapaint_zoom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BKE_paintmode_get_active_from_context(ptr noundef) local_unnamed_addr #1

declare i32 @BKE_brush_size_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @paint_calculate_rake_rotation(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BKE_brush_use_locked_size(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_brush_size_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @glEnable(i32 noundef) local_unnamed_addr #1

declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #1

declare i32 @BKE_brush_use_size_pressure(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @glutil_draw_lined_arc(float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #1

declare void @glDisable(i32 noundef) local_unnamed_addr #1

declare void @glEnableClientState(i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @draw_bezier_handle_lines(ptr noundef %0) unnamed_addr #4 {
  %2 = alloca [2 x i16], align 4
  %3 = alloca [2 x i16], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 65536, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 131073, ptr %3, align 4
  tail call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 12, ptr noundef %0) #8
  tail call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 5.000000e-01) #8
  tail call void @glLineWidth(float noundef 3.000000e+00) #8
  tail call void @glDrawArrays(i32 noundef 3, i32 noundef 0, i32 noundef 3) #8
  tail call void @glLineWidth(float noundef 1.000000e+00) #8
  %4 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 7
  %5 = load i8, ptr %4, align 1, !tbaa !109
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 8
  %9 = load i8, ptr %8, align 4, !tbaa !110
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7, %1
  tail call void @UI_ThemeColor4(i32 noundef 34) #8
  br label %13

12:                                               ; preds = %7
  tail call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 5.000000e-01) #8
  br label %13

13:                                               ; preds = %12, %11
  call void @glDrawElements(i32 noundef 1, i32 noundef 2, i32 noundef 5123, ptr noundef nonnull %2) #8
  %14 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 9
  %15 = load i8, ptr %14, align 1, !tbaa !111
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 8
  %19 = load i8, ptr %18, align 4, !tbaa !110
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17, %13
  call void @UI_ThemeColor4(i32 noundef 34) #8
  br label %23

22:                                               ; preds = %17
  call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 5.000000e-01) #8
  br label %23

23:                                               ; preds = %22, %21
  call void @glDrawElements(i32 noundef 1, i32 noundef 2, i32 noundef 5123, ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @draw_tri_point(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #4 {
  %3 = icmp eq i8 %1, 0
  %4 = select i1 %3, i32 157, i32 34
  tail call void @UI_ThemeColor4(i32 noundef %4) #8
  tail call void @glLineWidth(float noundef 3.000000e+00) #8
  tail call void @glBegin(i32 noundef 2) #8
  %5 = load float, ptr %0, align 4, !tbaa !69
  %6 = getelementptr inbounds float, ptr %0, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !69
  %8 = fadd float %7, 5.000000e+00
  tail call void @glVertex2f(float noundef %5, float noundef %8) #8
  %9 = load float, ptr %0, align 4, !tbaa !69
  %10 = fadd float %9, -5.000000e+00
  %11 = load float, ptr %6, align 4, !tbaa !69
  %12 = fadd float %11, -5.000000e+00
  tail call void @glVertex2f(float noundef %10, float noundef %12) #8
  %13 = load float, ptr %0, align 4, !tbaa !69
  %14 = fadd float %13, 5.000000e+00
  %15 = load float, ptr %6, align 4, !tbaa !69
  %16 = fadd float %15, -5.000000e+00
  tail call void @glVertex2f(float noundef %14, float noundef %16) #8
  tail call void @glEnd() #8
  tail call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 5.000000e-01) #8
  tail call void @glLineWidth(float noundef 1.000000e+00) #8
  tail call void @glBegin(i32 noundef 2) #8
  %17 = load float, ptr %0, align 4, !tbaa !69
  %18 = load float, ptr %6, align 4, !tbaa !69
  %19 = fadd float %18, 5.000000e+00
  tail call void @glVertex2f(float noundef %17, float noundef %19) #8
  %20 = load float, ptr %0, align 4, !tbaa !69
  %21 = fadd float %20, -5.000000e+00
  %22 = load float, ptr %6, align 4, !tbaa !69
  %23 = fadd float %22, -5.000000e+00
  tail call void @glVertex2f(float noundef %21, float noundef %23) #8
  %24 = load float, ptr %0, align 4, !tbaa !69
  %25 = fadd float %24, 5.000000e+00
  %26 = load float, ptr %6, align 4, !tbaa !69
  %27 = fadd float %26, -5.000000e+00
  tail call void @glVertex2f(float noundef %25, float noundef %27) #8
  tail call void @glEnd() #8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @draw_rect_point(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #4 {
  %3 = icmp eq i8 %1, 0
  %4 = select i1 %3, i32 156, i32 34
  tail call void @UI_ThemeColor4(i32 noundef %4) #8
  tail call void @glLineWidth(float noundef 3.000000e+00) #8
  tail call void @glBegin(i32 noundef 2) #8
  %5 = load float, ptr %0, align 4, !tbaa !69
  %6 = fadd float %5, 4.000000e+00
  %7 = getelementptr inbounds float, ptr %0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !69
  %9 = fadd float %8, 4.000000e+00
  tail call void @glVertex2f(float noundef %6, float noundef %9) #8
  %10 = load float, ptr %0, align 4, !tbaa !69
  %11 = fadd float %10, -4.000000e+00
  %12 = load float, ptr %7, align 4, !tbaa !69
  %13 = fadd float %12, 4.000000e+00
  tail call void @glVertex2f(float noundef %11, float noundef %13) #8
  %14 = load float, ptr %0, align 4, !tbaa !69
  %15 = fadd float %14, -4.000000e+00
  %16 = load float, ptr %7, align 4, !tbaa !69
  %17 = fadd float %16, -4.000000e+00
  tail call void @glVertex2f(float noundef %15, float noundef %17) #8
  %18 = load float, ptr %0, align 4, !tbaa !69
  %19 = fadd float %18, 4.000000e+00
  %20 = load float, ptr %7, align 4, !tbaa !69
  %21 = fadd float %20, -4.000000e+00
  tail call void @glVertex2f(float noundef %19, float noundef %21) #8
  tail call void @glEnd() #8
  tail call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 5.000000e-01) #8
  tail call void @glLineWidth(float noundef 1.000000e+00) #8
  tail call void @glBegin(i32 noundef 2) #8
  %22 = load float, ptr %0, align 4, !tbaa !69
  %23 = fadd float %22, 4.000000e+00
  %24 = load float, ptr %7, align 4, !tbaa !69
  %25 = fadd float %24, 4.000000e+00
  tail call void @glVertex2f(float noundef %23, float noundef %25) #8
  %26 = load float, ptr %0, align 4, !tbaa !69
  %27 = fadd float %26, -4.000000e+00
  %28 = load float, ptr %7, align 4, !tbaa !69
  %29 = fadd float %28, 4.000000e+00
  tail call void @glVertex2f(float noundef %27, float noundef %29) #8
  %30 = load float, ptr %0, align 4, !tbaa !69
  %31 = fadd float %30, -4.000000e+00
  %32 = load float, ptr %7, align 4, !tbaa !69
  %33 = fadd float %32, -4.000000e+00
  tail call void @glVertex2f(float noundef %31, float noundef %33) #8
  %34 = load float, ptr %0, align 4, !tbaa !69
  %35 = fadd float %34, 4.000000e+00
  %36 = load float, ptr %7, align 4, !tbaa !69
  %37 = fadd float %36, -4.000000e+00
  tail call void @glVertex2f(float noundef %35, float noundef %37) #8
  tail call void @glEnd() #8
  ret void
}

declare void @BKE_curve_forward_diff_bezier(float noundef, float noundef, float noundef, float noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @glVertexPointer(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @glLineWidth(float noundef) local_unnamed_addr #1

declare void @glDrawArrays(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @glDisableClientState(i32 noundef) local_unnamed_addr #1

declare void @UI_ThemeColor4(i32 noundef) local_unnamed_addr #1

declare void @glDrawElements(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @glBegin(i32 noundef) local_unnamed_addr #1

declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #1

declare void @glEnd() local_unnamed_addr #1

declare i32 @BKE_paint_get_overlay_flags() local_unnamed_addr #1

declare void @glPushAttrib(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @paint_draw_tex_overlay(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, float noundef %5, i8 noundef zeroext %6, i8 noundef zeroext %7) unnamed_addr #0 {
  %9 = alloca [4 x float], align 16
  %10 = icmp eq i8 %7, 0
  %11 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 3
  %12 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 4
  %13 = select i1 %10, ptr %12, ptr %11
  %14 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 20
  %15 = load i32, ptr %14, align 8, !tbaa !112
  %16 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 43
  %17 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 44
  %18 = select i1 %10, ptr %17, ptr %16
  %19 = load i32, ptr %18, align 4, !tbaa !113
  %20 = getelementptr inbounds %struct.MTex, ptr %13, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !114
  %22 = icmp eq ptr %21, null
  br i1 %22, label %474, label %23

23:                                               ; preds = %8
  %24 = getelementptr inbounds %struct.MTex, ptr %13, i64 0, i32 20
  %25 = load i8, ptr %24, align 4, !tbaa !115
  %26 = icmp eq i8 %25, 5
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = select i1 %10, i32 4, i32 2
  %29 = and i32 %15, %28
  %30 = icmp ne i32 %29, 0
  %31 = icmp ult i8 %25, 2
  %32 = and i1 %30, %31
  br i1 %32, label %33, label %474

33:                                               ; preds = %27, %23
  %34 = tail call i32 @BKE_paint_get_overlay_flags() #8
  %35 = icmp eq i8 %6, 0
  %36 = select i1 %35, i32 6406, i32 6408
  %37 = select i1 %10, i32 4, i32 1
  %38 = and i32 %34, %37
  %39 = select i1 %10, ptr @secondary_snap, ptr @primary_snap
  %40 = load i32, ptr %39, align 4, !tbaa !34
  %41 = icmp eq i32 %40, 0
  %42 = icmp ne i32 %38, 0
  %43 = select i1 %41, i1 true, i1 %42
  br i1 %43, label %81, label %44

44:                                               ; preds = %33
  %45 = load i8, ptr %24, align 4, !tbaa !115
  %46 = icmp eq i8 %45, 1
  br i1 %46, label %47, label %65

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.ViewContext, ptr %2, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !97
  %50 = getelementptr inbounds %struct.ARegion, ptr %49, i64 0, i32 5
  %51 = load i16, ptr %50, align 8, !tbaa !116
  %52 = sext i16 %51 to i32
  %53 = load i32, ptr getelementptr inbounds (%struct.TexSnapshot, ptr @secondary_snap, i64 0, i32 1), align 4
  %54 = load i32, ptr getelementptr inbounds (%struct.TexSnapshot, ptr @primary_snap, i64 0, i32 1), align 4
  %55 = select i1 %10, i32 %53, i32 %54
  %56 = icmp eq i32 %55, %52
  br i1 %56, label %57, label %78

57:                                               ; preds = %47
  %58 = getelementptr inbounds %struct.ARegion, ptr %49, i64 0, i32 6
  %59 = load i16, ptr %58, align 2, !tbaa !119
  %60 = sext i16 %59 to i32
  %61 = load i32, ptr getelementptr inbounds (%struct.TexSnapshot, ptr @secondary_snap, i64 0, i32 2), align 4
  %62 = load i32, ptr getelementptr inbounds (%struct.TexSnapshot, ptr @primary_snap, i64 0, i32 2), align 4
  %63 = select i1 %10, i32 %61, i32 %62
  %64 = icmp eq i32 %63, %60
  br i1 %64, label %65, label %78

65:                                               ; preds = %57, %44
  %66 = icmp eq i8 %45, 5
  %67 = load float, ptr getelementptr inbounds (%struct.TexSnapshot, ptr @secondary_snap, i64 0, i32 4), align 4
  %68 = load float, ptr getelementptr inbounds (%struct.TexSnapshot, ptr @primary_snap, i64 0, i32 4), align 4
  %69 = select i1 %10, float %67, float %68
  %70 = fcmp oeq float %69, %5
  %71 = select i1 %66, i1 true, i1 %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %65
  %73 = load i8, ptr getelementptr inbounds (%struct.TexSnapshot, ptr @secondary_snap, i64 0, i32 5), align 4
  %74 = load i8, ptr getelementptr inbounds (%struct.TexSnapshot, ptr @primary_snap, i64 0, i32 5), align 4
  %75 = select i1 %10, i8 %73, i8 %74
  %76 = icmp eq i8 %75, %6
  %77 = zext i1 %76 to i32
  br label %78

78:                                               ; preds = %72, %65, %57, %47
  %79 = phi i32 [ 0, %57 ], [ 0, %47 ], [ %77, %72 ], [ 0, %65 ]
  %80 = icmp eq i32 %79, 0
  br label %81

81:                                               ; preds = %78, %33
  %82 = phi i1 [ true, %33 ], [ %80, %78 ]
  %83 = icmp ne i32 %40, 0
  %84 = zext i1 %83 to i8
  br i1 %82, label %85, label %337

85:                                               ; preds = %81
  %86 = load i8, ptr %24, align 4, !tbaa !115
  %87 = icmp eq i8 %86, 5
  br i1 %87, label %92, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.MTex, ptr %13, i64 0, i32 13
  %90 = load float, ptr %89, align 4, !tbaa !120
  %91 = fneg float %90
  br label %92

92:                                               ; preds = %88, %85
  %93 = phi float [ %91, %88 ], [ 0.000000e+00, %85 ]
  %94 = load ptr, ptr %2, align 8, !tbaa !105
  %95 = tail call i32 @BKE_brush_size_get(ptr noundef %94, ptr noundef %1) #8
  %96 = sitofp i32 %95 to float
  %97 = fmul float %96, %5
  %98 = select i1 %10, ptr getelementptr inbounds (%struct.TexSnapshot, ptr @secondary_snap, i64 0, i32 4), ptr getelementptr inbounds (%struct.TexSnapshot, ptr @primary_snap, i64 0, i32 4)
  store float %5, ptr %98, align 4, !tbaa !121
  %99 = getelementptr inbounds %struct.ViewContext, ptr %2, i64 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !97
  %101 = getelementptr inbounds %struct.ARegion, ptr %100, i64 0, i32 5
  %102 = load i16, ptr %101, align 8, !tbaa !116
  %103 = sext i16 %102 to i32
  %104 = select i1 %10, ptr getelementptr inbounds (%struct.TexSnapshot, ptr @secondary_snap, i64 0, i32 1), ptr getelementptr inbounds (%struct.TexSnapshot, ptr @primary_snap, i64 0, i32 1)
  store i32 %103, ptr %104, align 4, !tbaa !122
  %105 = getelementptr inbounds %struct.ARegion, ptr %100, i64 0, i32 6
  %106 = load i16, ptr %105, align 2, !tbaa !119
  %107 = sext i16 %106 to i32
  %108 = select i1 %10, ptr getelementptr inbounds (%struct.TexSnapshot, ptr @secondary_snap, i64 0, i32 2), ptr getelementptr inbounds (%struct.TexSnapshot, ptr @primary_snap, i64 0, i32 2)
  store i32 %107, ptr %108, align 4, !tbaa !123
  %109 = load i8, ptr %24, align 4, !tbaa !115
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %111, label %130

111:                                              ; preds = %92
  %112 = load ptr, ptr %2, align 8, !tbaa !105
  %113 = tail call i32 @BKE_brush_size_get(ptr noundef %112, ptr noundef %1) #8
  %114 = ashr i32 %113, 1
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %111, %116
  %117 = phi i32 [ %119, %116 ], [ 1, %111 ]
  %118 = phi i32 [ %120, %116 ], [ %114, %111 ]
  %119 = add nuw nsw i32 %117, 1
  %120 = lshr i32 %118, 1
  %121 = icmp ult i32 %118, 2
  br i1 %121, label %122, label %116, !llvm.loop !124

122:                                              ; preds = %116, %111
  %123 = phi i32 [ 1, %111 ], [ %119, %116 ]
  %124 = shl nuw i32 1, %123
  %125 = load i32, ptr getelementptr inbounds (%struct.TexSnapshot, ptr @secondary_snap, i64 0, i32 3), align 4
  %126 = load i32, ptr getelementptr inbounds (%struct.TexSnapshot, ptr @primary_snap, i64 0, i32 3), align 4
  %127 = select i1 %10, i32 %125, i32 %126
  %128 = tail call i32 @llvm.smax.i32(i32 %124, i32 %127)
  %129 = tail call i32 @llvm.smax.i32(i32 %128, i32 256)
  br label %130

130:                                              ; preds = %122, %92
  %131 = phi i32 [ %129, %122 ], [ 512, %92 ]
  %132 = select i1 %10, ptr getelementptr inbounds (%struct.TexSnapshot, ptr @secondary_snap, i64 0, i32 3), ptr getelementptr inbounds (%struct.TexSnapshot, ptr @primary_snap, i64 0, i32 3)
  %133 = load i32, ptr %132, align 4, !tbaa !125
  %134 = icmp eq i32 %133, %131
  br i1 %134, label %140, label %135

135:                                              ; preds = %130
  %136 = load i32, ptr %39, align 4, !tbaa !34
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %135
  tail call void @glDeleteTextures(i32 noundef 1, ptr noundef nonnull %39) #8
  store i32 0, ptr %39, align 4, !tbaa !34
  br label %139

139:                                              ; preds = %138, %135
  store i32 %131, ptr %132, align 4, !tbaa !125
  br label %140

140:                                              ; preds = %139, %130
  %141 = phi i8 [ 0, %139 ], [ %84, %130 ]
  %142 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !126
  %143 = zext nneg i32 %131 to i64
  %144 = shl nuw nsw i64 %143, 2
  %145 = select i1 %35, i64 %143, i64 %144
  %146 = mul nuw i64 %145, %143
  %147 = tail call ptr %142(i64 noundef %146, ptr noundef nonnull @.str) #8
  %148 = tail call ptr @BKE_image_pool_new() #8
  %149 = load ptr, ptr %20, align 8, !tbaa !114
  %150 = icmp eq ptr %149, null
  br i1 %150, label %157, label %151

151:                                              ; preds = %140
  %152 = getelementptr inbounds %struct.Tex, ptr %149, i64 0, i32 52
  %153 = load ptr, ptr %152, align 8, !tbaa !127
  %154 = icmp eq ptr %153, null
  br i1 %154, label %157, label %155

155:                                              ; preds = %151
  %156 = tail call ptr @ntreeTexBeginExecTree(ptr noundef nonnull %153) #8
  br label %157

157:                                              ; preds = %155, %151, %140
  %158 = sitofp i32 %131 to float
  %159 = fcmp ule float %93, 0x3F50624DE0000000
  %160 = fcmp uge float %93, 0xBF50624DE0000000
  %161 = and i1 %159, %160
  %162 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 1
  %163 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 2
  %164 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 3
  %165 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 42
  %166 = zext nneg i32 %131 to i64
  %167 = zext nneg i32 %131 to i64
  br label %168

168:                                              ; preds = %157, %317
  %169 = phi i64 [ 0, %157 ], [ %318, %317 ]
  %170 = phi i8 [ 0, %157 ], [ %199, %317 ]
  %171 = phi ptr [ undef, %157 ], [ %198, %317 ]
  %172 = load ptr, ptr %20, align 8, !tbaa !114
  %173 = getelementptr inbounds %struct.Tex, ptr %172, i64 0, i32 32
  %174 = load i16, ptr %173, align 8, !tbaa !130
  %175 = icmp eq i16 %174, 8
  br i1 %175, label %176, label %197

176:                                              ; preds = %168
  %177 = getelementptr inbounds %struct.Tex, ptr %172, i64 0, i32 54
  %178 = load ptr, ptr %177, align 8, !tbaa !131
  %179 = icmp eq ptr %178, null
  br i1 %179, label %197, label %180

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.Tex, ptr %172, i64 0, i32 51
  %182 = call ptr @BKE_image_pool_acquire_ibuf(ptr noundef nonnull %178, ptr noundef nonnull %181, ptr noundef %148) #8
  %183 = icmp eq ptr %182, null
  br i1 %183, label %191, label %184

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.ImBuf, ptr %182, i64 0, i32 9
  %186 = load ptr, ptr %185, align 8, !tbaa !132
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %191

188:                                              ; preds = %184
  %189 = getelementptr inbounds %struct.ImBuf, ptr %182, i64 0, i32 34
  %190 = load ptr, ptr %189, align 8, !tbaa !135
  br label %191

191:                                              ; preds = %188, %184, %180
  %192 = phi ptr [ %190, %188 ], [ %171, %184 ], [ %171, %180 ]
  %193 = phi i8 [ 1, %188 ], [ %170, %184 ], [ %170, %180 ]
  %194 = load ptr, ptr %20, align 8, !tbaa !114
  %195 = getelementptr inbounds %struct.Tex, ptr %194, i64 0, i32 54
  %196 = load ptr, ptr %195, align 8, !tbaa !131
  call void @BKE_image_pool_release_ibuf(ptr noundef %196, ptr noundef %182, ptr noundef %148) #8
  br label %197

197:                                              ; preds = %191, %176, %168
  %198 = phi ptr [ %192, %191 ], [ %171, %176 ], [ %171, %168 ]
  %199 = phi i8 [ %193, %191 ], [ %170, %176 ], [ %170, %168 ]
  %200 = trunc i64 %169 to i32
  %201 = sitofp i32 %200 to float
  %202 = fdiv float %201, %158
  %203 = fadd float %202, -5.000000e-01
  %204 = fmul float %203, 2.000000e+00
  %205 = trunc i64 %169 to i32
  %206 = mul i32 %131, %205
  %207 = zext i32 %206 to i64
  br label %208

208:                                              ; preds = %197, %314
  %209 = phi i64 [ 0, %197 ], [ %315, %314 ]
  %210 = add nuw nsw i64 %209, %207
  %211 = trunc i64 %209 to i32
  %212 = sitofp i32 %211 to float
  %213 = fdiv float %212, %158
  %214 = load i8, ptr %24, align 4, !tbaa !115
  %215 = icmp eq i8 %214, 1
  br i1 %215, label %216, label %228

216:                                              ; preds = %208
  %217 = load ptr, ptr %99, align 8, !tbaa !97
  %218 = getelementptr inbounds %struct.ARegion, ptr %217, i64 0, i32 5
  %219 = load i16, ptr %218, align 8, !tbaa !116
  %220 = sitofp i16 %219 to float
  %221 = fdiv float %220, %97
  %222 = fmul float %213, %221
  %223 = getelementptr inbounds %struct.ARegion, ptr %217, i64 0, i32 6
  %224 = load i16, ptr %223, align 2, !tbaa !119
  %225 = sitofp i16 %224 to float
  %226 = fdiv float %225, %97
  %227 = fmul float %202, %226
  br label %231

228:                                              ; preds = %208
  %229 = fadd float %213, -5.000000e-01
  %230 = fmul float %229, 2.000000e+00
  br label %231

231:                                              ; preds = %228, %216
  %232 = phi float [ %227, %216 ], [ %204, %228 ]
  %233 = phi float [ %222, %216 ], [ %230, %228 ]
  %234 = fmul float %232, %232
  %235 = call float @llvm.fmuladd.f32(float %233, float %233, float %234)
  %236 = call float @sqrtf(float noundef %235) #8
  %237 = load i8, ptr %24, align 4, !tbaa !115
  %238 = icmp eq i8 %237, 1
  br i1 %238, label %243, label %239

239:                                              ; preds = %231
  %240 = icmp eq i8 %237, 5
  %241 = fcmp ole float %236, 1.000000e+00
  %242 = select i1 %240, i1 true, i1 %241
  br i1 %242, label %243, label %297

243:                                              ; preds = %239, %231
  %244 = load ptr, ptr %20, align 8, !tbaa !114
  %245 = icmp eq ptr %244, null
  %246 = select i1 %245, i1 true, i1 %161
  br i1 %246, label %254, label %247

247:                                              ; preds = %243
  %248 = call float @atan2f(float noundef %232, float noundef %233) #8
  %249 = fadd float %93, %248
  %250 = call float @cosf(float noundef %249) #8
  %251 = fmul float %236, %250
  %252 = call float @sinf(float noundef %249) #8
  %253 = fmul float %236, %252
  br label %254

254:                                              ; preds = %243, %247
  %255 = phi float [ %253, %247 ], [ %232, %243 ]
  %256 = phi float [ %251, %247 ], [ %233, %243 ]
  br i1 %35, label %283, label %257

257:                                              ; preds = %254
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8
  call void @paint_get_tex_pixel_col(ptr noundef nonnull %13, float noundef %256, float noundef %255, ptr noundef nonnull %9, ptr noundef %148, i32 noundef 0, i8 noundef zeroext %199, ptr noundef %198) #8
  %258 = load float, ptr %9, align 16, !tbaa !69
  %259 = fmul float %258, 2.550000e+02
  %260 = fptoui float %259 to i8
  %261 = trunc i64 %210 to i32
  %262 = shl nsw i32 %261, 2
  %263 = zext nneg i32 %262 to i64
  %264 = getelementptr inbounds i8, ptr %147, i64 %263
  store i8 %260, ptr %264, align 1, !tbaa !136
  %265 = load float, ptr %162, align 4, !tbaa !69
  %266 = fmul float %265, 2.550000e+02
  %267 = fptoui float %266 to i8
  %268 = or disjoint i32 %262, 1
  %269 = zext nneg i32 %268 to i64
  %270 = getelementptr inbounds i8, ptr %147, i64 %269
  store i8 %267, ptr %270, align 1, !tbaa !136
  %271 = load float, ptr %163, align 8, !tbaa !69
  %272 = fmul float %271, 2.550000e+02
  %273 = fptoui float %272 to i8
  %274 = or disjoint i32 %262, 2
  %275 = zext nneg i32 %274 to i64
  %276 = getelementptr inbounds i8, ptr %147, i64 %275
  store i8 %273, ptr %276, align 1, !tbaa !136
  %277 = load float, ptr %164, align 4, !tbaa !69
  %278 = fmul float %277, 2.550000e+02
  %279 = fptoui float %278 to i8
  %280 = or disjoint i32 %262, 3
  %281 = zext nneg i32 %280 to i64
  %282 = getelementptr inbounds i8, ptr %147, i64 %281
  store i8 %279, ptr %282, align 1, !tbaa !136
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8
  br label %314

283:                                              ; preds = %254
  %284 = call float @paint_get_tex_pixel(ptr noundef nonnull %13, float noundef %256, float noundef %255, ptr noundef %148, i32 noundef 0) #8
  %285 = load float, ptr %165, align 4, !tbaa !137
  %286 = fadd float %284, %285
  %287 = fcmp olt float %286, 0.000000e+00
  br i1 %287, label %291, label %288

288:                                              ; preds = %283
  %289 = fcmp ogt float %286, 1.000000e+00
  br i1 %289, label %290, label %291

290:                                              ; preds = %288
  br label %291

291:                                              ; preds = %290, %288, %283
  %292 = phi float [ 1.000000e+00, %290 ], [ %286, %288 ], [ 0.000000e+00, %283 ]
  %293 = fmul float %292, 2.550000e+02
  %294 = fptoui float %293 to i8
  %295 = xor i8 %294, -1
  %296 = getelementptr inbounds i8, ptr %147, i64 %210
  store i8 %295, ptr %296, align 1, !tbaa !136
  br label %314

297:                                              ; preds = %239
  br i1 %35, label %312, label %298

298:                                              ; preds = %297
  %299 = trunc i64 %210 to i32
  %300 = shl nsw i32 %299, 2
  %301 = zext nneg i32 %300 to i64
  %302 = getelementptr inbounds i8, ptr %147, i64 %301
  store i8 0, ptr %302, align 1, !tbaa !136
  %303 = or disjoint i32 %300, 1
  %304 = zext nneg i32 %303 to i64
  %305 = getelementptr inbounds i8, ptr %147, i64 %304
  store i8 0, ptr %305, align 1, !tbaa !136
  %306 = or disjoint i32 %300, 2
  %307 = zext nneg i32 %306 to i64
  %308 = getelementptr inbounds i8, ptr %147, i64 %307
  store i8 0, ptr %308, align 1, !tbaa !136
  %309 = or disjoint i32 %300, 3
  %310 = zext nneg i32 %309 to i64
  %311 = getelementptr inbounds i8, ptr %147, i64 %310
  store i8 0, ptr %311, align 1, !tbaa !136
  br label %314

312:                                              ; preds = %297
  %313 = getelementptr inbounds i8, ptr %147, i64 %210
  store i8 0, ptr %313, align 1, !tbaa !136
  br label %314

314:                                              ; preds = %312, %298, %291, %257
  %315 = add nuw nsw i64 %209, 1
  %316 = icmp eq i64 %315, %167
  br i1 %316, label %317, label %208, !llvm.loop !138

317:                                              ; preds = %314
  %318 = add nuw nsw i64 %169, 1
  %319 = icmp eq i64 %318, %166
  br i1 %319, label %320, label %168, !llvm.loop !139

320:                                              ; preds = %317
  %321 = load ptr, ptr %20, align 8, !tbaa !114
  %322 = icmp eq ptr %321, null
  br i1 %322, label %330, label %323

323:                                              ; preds = %320
  %324 = getelementptr inbounds %struct.Tex, ptr %321, i64 0, i32 52
  %325 = load ptr, ptr %324, align 8, !tbaa !127
  %326 = icmp eq ptr %325, null
  br i1 %326, label %330, label %327

327:                                              ; preds = %323
  %328 = getelementptr inbounds %struct.bNodeTree, ptr %325, i64 0, i32 27
  %329 = load ptr, ptr %328, align 8, !tbaa !140
  call void @ntreeTexEndExecTree(ptr noundef %329) #8
  br label %330

330:                                              ; preds = %327, %323, %320
  %331 = icmp eq ptr %148, null
  br i1 %331, label %333, label %332

332:                                              ; preds = %330
  call void @BKE_image_pool_free(ptr noundef nonnull %148) #8
  br label %333

333:                                              ; preds = %332, %330
  %334 = load i32, ptr %39, align 4, !tbaa !34
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %341

336:                                              ; preds = %333
  call void @glGenTextures(i32 noundef 1, ptr noundef nonnull %39) #8
  br label %341

337:                                              ; preds = %81
  %338 = load i32, ptr getelementptr inbounds (%struct.TexSnapshot, ptr @secondary_snap, i64 0, i32 3), align 4
  %339 = load i32, ptr getelementptr inbounds (%struct.TexSnapshot, ptr @primary_snap, i64 0, i32 3), align 4
  %340 = select i1 %10, i32 %338, i32 %339
  br label %341

341:                                              ; preds = %337, %336, %333
  %342 = phi i32 [ %340, %337 ], [ %131, %336 ], [ %131, %333 ]
  %343 = phi ptr [ null, %337 ], [ %147, %336 ], [ %147, %333 ]
  %344 = phi i8 [ %84, %337 ], [ %141, %336 ], [ %141, %333 ]
  %345 = load i32, ptr %39, align 4, !tbaa !34
  call void @glBindTexture(i32 noundef 3553, i32 noundef %345) #8
  br i1 %82, label %346, label %361

346:                                              ; preds = %341
  %347 = icmp eq i8 %344, 0
  br i1 %347, label %353, label %348

348:                                              ; preds = %346
  %349 = load i8, ptr getelementptr inbounds (%struct.TexSnapshot, ptr @secondary_snap, i64 0, i32 5), align 4
  %350 = load i8, ptr getelementptr inbounds (%struct.TexSnapshot, ptr @primary_snap, i64 0, i32 5), align 4
  %351 = select i1 %10, i8 %349, i8 %350
  %352 = icmp eq i8 %351, %6
  br i1 %352, label %354, label %353

353:                                              ; preds = %348, %346
  call void @glTexImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef %36, i32 noundef %342, i32 noundef %342, i32 noundef 0, i32 noundef %36, i32 noundef 5121, ptr noundef %343) #8
  br label %355

354:                                              ; preds = %348
  call void @glTexSubImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %342, i32 noundef %342, i32 noundef %36, i32 noundef 5121, ptr noundef %343) #8
  br label %355

355:                                              ; preds = %354, %353
  %356 = icmp eq ptr %343, null
  br i1 %356, label %359, label %357

357:                                              ; preds = %355
  %358 = load ptr, ptr @MEM_freeN, align 8, !tbaa !126
  call void %358(ptr noundef nonnull %343) #8
  br label %359

359:                                              ; preds = %357, %355
  %360 = select i1 %10, ptr getelementptr inbounds (%struct.TexSnapshot, ptr @secondary_snap, i64 0, i32 5), ptr getelementptr inbounds (%struct.TexSnapshot, ptr @primary_snap, i64 0, i32 5)
  store i8 %6, ptr %360, align 4, !tbaa !143
  br label %361

361:                                              ; preds = %359, %341
  call void @glEnable(i32 noundef 3553) #8
  call void @glTexEnvf(i32 noundef 8960, i32 noundef 8704, float noundef 8.448000e+03) #8
  call void @glTexParameteri(i32 noundef 3553, i32 noundef 10241, i32 noundef 9729) #8
  call void @glTexParameteri(i32 noundef 3553, i32 noundef 10240, i32 noundef 9729) #8
  %362 = load i8, ptr %24, align 4, !tbaa !115
  %363 = icmp eq i8 %362, 0
  br i1 %363, label %364, label %365

364:                                              ; preds = %361
  call void @glTexParameteri(i32 noundef 3553, i32 noundef 10242, i32 noundef 33069) #8
  call void @glTexParameteri(i32 noundef 3553, i32 noundef 10243, i32 noundef 33069) #8
  br label %365

365:                                              ; preds = %361, %364
  call void @BKE_paint_reset_overlay_invalid(i32 noundef %38) #8
  call void @glEnable(i32 noundef 3042) #8
  call void @glColorMask(i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  call void @glDepthMask(i8 noundef zeroext 0) #8
  call void @glDepthFunc(i32 noundef 519) #8
  call void @glMatrixMode(i32 noundef 5890) #8
  call void @glPushMatrix() #8
  call void @glLoadIdentity() #8
  %366 = load i8, ptr %24, align 4, !tbaa !115
  switch i8 %366, label %428 [
    i8 0, label %367
    i8 1, label %413
  ]

367:                                              ; preds = %365
  call void @glTranslatef(float noundef 5.000000e-01, float noundef 5.000000e-01, float noundef 0.000000e+00) #8
  %368 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 8
  %369 = load float, ptr %368, align 4, !tbaa !144
  %370 = fmul float %369, 0x404CA5DC20000000
  call void @glRotatef(float noundef %370, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #8
  call void @glTranslatef(float noundef -5.000000e-01, float noundef -5.000000e-01, float noundef 0.000000e+00) #8
  br i1 %10, label %383, label %371

371:                                              ; preds = %367
  %372 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 15
  %373 = load i32, ptr %372, align 4, !tbaa !87
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %383, label %375

375:                                              ; preds = %371
  %376 = load ptr, ptr %2, align 8, !tbaa !105
  %377 = call i32 @BKE_brush_use_size_pressure(ptr noundef %376, ptr noundef %1) #8
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %383, label %379

379:                                              ; preds = %375
  call void @glTranslatef(float noundef 5.000000e-01, float noundef 5.000000e-01, float noundef 0.000000e+00) #8
  %380 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 16
  %381 = load float, ptr %380, align 8, !tbaa !108
  %382 = fdiv float 1.000000e+00, %381
  call void @glScalef(float noundef %382, float noundef %382, float noundef 1.000000e+00) #8
  call void @glTranslatef(float noundef -5.000000e-01, float noundef -5.000000e-01, float noundef 0.000000e+00) #8
  br label %383

383:                                              ; preds = %379, %375, %371, %367
  %384 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 9
  %385 = load i32, ptr %384, align 8, !tbaa !106
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %399, label %387

387:                                              ; preds = %383
  %388 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 14
  %389 = load float, ptr %388, align 4, !tbaa !69
  %390 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 10
  %391 = load i32, ptr %390, align 4, !tbaa !107
  %392 = sitofp i32 %391 to float
  %393 = fsub float %389, %392
  %394 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 14, i64 1
  %395 = load float, ptr %394, align 4, !tbaa !69
  %396 = fsub float %395, %392
  %397 = fadd float %389, %392
  %398 = fadd float %395, %392
  br label %456

399:                                              ; preds = %383
  %400 = load ptr, ptr %2, align 8, !tbaa !105
  %401 = call i32 @BKE_brush_size_get(ptr noundef %400, ptr noundef %1) #8
  %402 = sitofp i32 %401 to float
  %403 = fmul float %402, %5
  %404 = fptosi float %403 to i32
  %405 = sub nsw i32 %3, %404
  %406 = sitofp i32 %405 to float
  %407 = sub nsw i32 %4, %404
  %408 = sitofp i32 %407 to float
  %409 = add nsw i32 %404, %3
  %410 = sitofp i32 %409 to float
  %411 = add nsw i32 %404, %4
  %412 = sitofp i32 %411 to float
  br label %456

413:                                              ; preds = %365
  %414 = getelementptr inbounds %struct.ViewContext, ptr %2, i64 0, i32 3
  %415 = load ptr, ptr %414, align 8, !tbaa !97
  %416 = getelementptr inbounds %struct.ARegion, ptr %415, i64 0, i32 3
  %417 = getelementptr inbounds %struct.ARegion, ptr %415, i64 0, i32 3, i32 1
  %418 = load i32, ptr %417, align 4, !tbaa !145
  %419 = load i32, ptr %416, align 4, !tbaa !146
  %420 = sub nsw i32 %418, %419
  %421 = sitofp i32 %420 to float
  %422 = getelementptr inbounds %struct.ARegion, ptr %415, i64 0, i32 3, i32 3
  %423 = load i32, ptr %422, align 4, !tbaa !147
  %424 = getelementptr inbounds %struct.ARegion, ptr %415, i64 0, i32 3, i32 2
  %425 = load i32, ptr %424, align 4, !tbaa !148
  %426 = sub nsw i32 %423, %425
  %427 = sitofp i32 %426 to float
  br label %456

428:                                              ; preds = %365
  br i1 %10, label %434, label %429

429:                                              ; preds = %428
  %430 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 54
  %431 = load float, ptr %430, align 8, !tbaa !69
  %432 = fneg float %431
  %433 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 54, i64 1
  br label %439

434:                                              ; preds = %428
  %435 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 56
  %436 = load float, ptr %435, align 8, !tbaa !69
  %437 = fneg float %436
  %438 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 56, i64 1
  br label %439

439:                                              ; preds = %434, %429
  %440 = phi ptr [ %438, %434 ], [ %433, %429 ]
  %441 = phi float [ %437, %434 ], [ %432, %429 ]
  %442 = phi float [ %436, %434 ], [ %431, %429 ]
  %443 = load float, ptr %440, align 4, !tbaa !69
  %444 = fneg float %443
  call void @glMatrixMode(i32 noundef 5888) #8
  call void @glPushMatrix() #8
  %445 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 55
  %446 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 55, i64 1
  %447 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 53
  %448 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 53, i64 1
  %449 = select i1 %10, ptr %446, ptr %448
  %450 = select i1 %10, ptr %445, ptr %447
  %451 = load float, ptr %450, align 8, !tbaa !69
  %452 = load float, ptr %449, align 4, !tbaa !69
  call void @glTranslatef(float noundef %451, float noundef %452, float noundef 0.000000e+00) #8
  %453 = getelementptr inbounds %struct.MTex, ptr %13, i64 0, i32 13
  %454 = load float, ptr %453, align 4, !tbaa !120
  %455 = fmul float %454, 0x404CA5DC20000000
  call void @glRotatef(float noundef %455, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #8
  call void @glMatrixMode(i32 noundef 5890) #8
  br label %456

456:                                              ; preds = %413, %439, %387, %399
  %457 = phi float [ %393, %387 ], [ %406, %399 ], [ 0.000000e+00, %413 ], [ %441, %439 ]
  %458 = phi float [ %397, %387 ], [ %410, %399 ], [ %421, %413 ], [ %442, %439 ]
  %459 = phi float [ %396, %387 ], [ %408, %399 ], [ 0.000000e+00, %413 ], [ %444, %439 ]
  %460 = phi float [ %398, %387 ], [ %412, %399 ], [ %427, %413 ], [ %443, %439 ]
  br i1 %35, label %464, label %461

461:                                              ; preds = %456
  %462 = sitofp i32 %19 to float
  %463 = fdiv float %462, 1.000000e+02
  call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef %463) #8
  br label %470

464:                                              ; preds = %456
  %465 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 96), align 8, !tbaa !69
  %466 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 96, i64 1), align 4, !tbaa !69
  %467 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 96, i64 2), align 8, !tbaa !69
  %468 = sitofp i32 %19 to float
  %469 = fdiv float %468, 1.000000e+02
  call void @glColor4f(float noundef %465, float noundef %466, float noundef %467, float noundef %469) #8
  br label %470

470:                                              ; preds = %464, %461
  call void @glBegin(i32 noundef 7) #8
  call void @glTexCoord2f(float noundef 0.000000e+00, float noundef 0.000000e+00) #8
  call void @glVertex2f(float noundef %457, float noundef %459) #8
  call void @glTexCoord2f(float noundef 1.000000e+00, float noundef 0.000000e+00) #8
  call void @glVertex2f(float noundef %458, float noundef %459) #8
  call void @glTexCoord2f(float noundef 1.000000e+00, float noundef 1.000000e+00) #8
  call void @glVertex2f(float noundef %458, float noundef %460) #8
  call void @glTexCoord2f(float noundef 0.000000e+00, float noundef 1.000000e+00) #8
  call void @glVertex2f(float noundef %457, float noundef %460) #8
  call void @glEnd() #8
  call void @glPopMatrix() #8
  %471 = load i8, ptr %24, align 4, !tbaa !115
  %472 = icmp eq i8 %471, 5
  br i1 %472, label %473, label %474

473:                                              ; preds = %470
  call void @glMatrixMode(i32 noundef 5888) #8
  call void @glPopMatrix() #8
  br label %474

474:                                              ; preds = %473, %470, %8, %27
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @paint_draw_cursor_overlay(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, float noundef %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 20
  %8 = load i32, ptr %7, align 8, !tbaa !112
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %175, label %11

11:                                               ; preds = %6
  %12 = tail call i32 @BKE_paint_get_overlay_flags() #8
  %13 = load i32, ptr @cursor_snap, align 4, !tbaa !40
  %14 = icmp ne i32 %13, 0
  %15 = and i32 %12, 8
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load i32, ptr getelementptr inbounds (%struct.CursorSnapshot, ptr @cursor_snap, i64 0, i32 2), align 4, !tbaa !149
  %20 = sitofp i32 %19 to float
  %21 = fcmp une float %20, %5
  br label %22

22:                                               ; preds = %18, %11
  %23 = phi i1 [ true, %11 ], [ %21, %18 ]
  %24 = zext i1 %14 to i8
  br i1 %23, label %25, label %99

25:                                               ; preds = %22
  %26 = fptosi float %5 to i32
  store i32 %26, ptr getelementptr inbounds (%struct.CursorSnapshot, ptr @cursor_snap, i64 0, i32 2), align 4, !tbaa !149
  %27 = load ptr, ptr %2, align 8, !tbaa !105
  %28 = tail call i32 @BKE_brush_size_get(ptr noundef %27, ptr noundef %1) #8
  %29 = ashr i32 %28, 1
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25, %31
  %32 = phi i32 [ %35, %31 ], [ %29, %25 ]
  %33 = phi i32 [ %34, %31 ], [ 1, %25 ]
  %34 = add nuw nsw i32 %33, 1
  %35 = lshr i32 %32, 1
  %36 = icmp ult i32 %32, 2
  br i1 %36, label %37, label %31, !llvm.loop !150

37:                                               ; preds = %31, %25
  %38 = phi i32 [ 1, %25 ], [ %34, %31 ]
  %39 = shl nuw i32 1, %38
  %40 = load i32, ptr getelementptr inbounds (%struct.CursorSnapshot, ptr @cursor_snap, i64 0, i32 1), align 4, !tbaa !151
  %41 = tail call i32 @llvm.smax.i32(i32 %39, i32 %40)
  %42 = tail call i32 @llvm.smax.i32(i32 %41, i32 256)
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %49, label %44

44:                                               ; preds = %37
  %45 = load i32, ptr @cursor_snap, align 4, !tbaa !40
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  tail call void @glDeleteTextures(i32 noundef 1, ptr noundef nonnull @cursor_snap) #8
  store i32 0, ptr @cursor_snap, align 4, !tbaa !40
  br label %48

48:                                               ; preds = %47, %44
  store i32 %42, ptr getelementptr inbounds (%struct.CursorSnapshot, ptr @cursor_snap, i64 0, i32 1), align 4, !tbaa !151
  br label %49

49:                                               ; preds = %48, %37
  %50 = phi i8 [ 0, %48 ], [ %24, %37 ]
  %51 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !126
  %52 = zext nneg i32 %42 to i64
  %53 = mul nuw nsw i64 %52, %52
  %54 = tail call ptr %51(i64 noundef %53, ptr noundef nonnull @.str) #8
  %55 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !152
  tail call void @curvemapping_initialize(ptr noundef %56) #8
  %57 = sitofp i32 %42 to float
  %58 = zext nneg i32 %42 to i64
  %59 = zext nneg i32 %42 to i64
  br label %60

60:                                               ; preds = %49, %92
  %61 = phi i64 [ 0, %49 ], [ %93, %92 ]
  %62 = trunc i64 %61 to i32
  %63 = sitofp i32 %62 to float
  %64 = fdiv float %63, %57
  %65 = fadd float %64, -5.000000e-01
  %66 = fmul float %65, 2.000000e+00
  %67 = fmul float %66, %66
  %68 = trunc i64 %61 to i32
  %69 = mul i32 %42, %68
  %70 = zext i32 %69 to i64
  %71 = getelementptr i8, ptr %54, i64 %70
  br label %72

72:                                               ; preds = %60, %87
  %73 = phi i64 [ 0, %60 ], [ %90, %87 ]
  %74 = trunc i64 %73 to i32
  %75 = sitofp i32 %74 to float
  %76 = fdiv float %75, %57
  %77 = fadd float %76, -5.000000e-01
  %78 = fmul float %77, 2.000000e+00
  %79 = tail call float @llvm.fmuladd.f32(float %78, float %78, float %67)
  %80 = tail call float @sqrtf(float noundef %79) #8
  %81 = fcmp ugt float %80, 1.000000e+00
  br i1 %81, label %87, label %82

82:                                               ; preds = %72
  %83 = tail call float @BKE_brush_curve_strength_clamp(ptr noundef %1, float noundef %80, float noundef 1.000000e+00) #8
  %84 = fmul float %83, 2.550000e+02
  %85 = fptoui float %84 to i8
  %86 = xor i8 %85, -1
  br label %87

87:                                               ; preds = %72, %82
  %88 = phi i8 [ %86, %82 ], [ 0, %72 ]
  %89 = getelementptr i8, ptr %71, i64 %73
  store i8 %88, ptr %89, align 1, !tbaa !136
  %90 = add nuw nsw i64 %73, 1
  %91 = icmp eq i64 %90, %59
  br i1 %91, label %92, label %72, !llvm.loop !153

92:                                               ; preds = %87
  %93 = add nuw nsw i64 %61, 1
  %94 = icmp eq i64 %93, %58
  br i1 %94, label %95, label %60, !llvm.loop !154

95:                                               ; preds = %92
  %96 = load i32, ptr @cursor_snap, align 4, !tbaa !40
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  tail call void @glGenTextures(i32 noundef 1, ptr noundef nonnull @cursor_snap) #8
  br label %101

99:                                               ; preds = %22
  %100 = load i32, ptr getelementptr inbounds (%struct.CursorSnapshot, ptr @cursor_snap, i64 0, i32 1), align 4, !tbaa !151
  br label %101

101:                                              ; preds = %99, %98, %95
  %102 = phi i32 [ %100, %99 ], [ %42, %98 ], [ %42, %95 ]
  %103 = phi ptr [ null, %99 ], [ %54, %98 ], [ %54, %95 ]
  %104 = phi i8 [ %24, %99 ], [ %50, %98 ], [ %50, %95 ]
  %105 = load i32, ptr @cursor_snap, align 4, !tbaa !40
  tail call void @glBindTexture(i32 noundef 3553, i32 noundef %105) #8
  br i1 %23, label %106, label %114

106:                                              ; preds = %101
  %107 = icmp eq i8 %104, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %106
  tail call void @glTexImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef 6406, i32 noundef %102, i32 noundef %102, i32 noundef 0, i32 noundef 6406, i32 noundef 5121, ptr noundef %103) #8
  br label %110

109:                                              ; preds = %106
  tail call void @glTexSubImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %102, i32 noundef %102, i32 noundef 6406, i32 noundef 5121, ptr noundef %103) #8
  br label %110

110:                                              ; preds = %109, %108
  %111 = icmp eq ptr %103, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %110
  %113 = load ptr, ptr @MEM_freeN, align 8, !tbaa !126
  tail call void %113(ptr noundef nonnull %103) #8
  br label %114

114:                                              ; preds = %101, %110, %112
  tail call void @glEnable(i32 noundef 3553) #8
  tail call void @glTexEnvf(i32 noundef 8960, i32 noundef 8704, float noundef 8.448000e+03) #8
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10241, i32 noundef 9729) #8
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10240, i32 noundef 9729) #8
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10242, i32 noundef 33069) #8
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10243, i32 noundef 33069) #8
  tail call void @BKE_paint_reset_overlay_invalid(i32 noundef 8) #8
  tail call void @glEnable(i32 noundef 3042) #8
  tail call void @glColorMask(i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  tail call void @glDepthMask(i8 noundef zeroext 0) #8
  tail call void @glDepthFunc(i32 noundef 519) #8
  %115 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 9
  %116 = load i32, ptr %115, align 8, !tbaa !106
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %130, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 14
  %120 = load float, ptr %119, align 4, !tbaa !69
  %121 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 14, i64 1
  %122 = load float, ptr %121, align 4, !tbaa !69
  %123 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 10
  %124 = load i32, ptr %123, align 4, !tbaa !107
  %125 = sitofp i32 %124 to float
  %126 = fsub float %120, %125
  %127 = fsub float %122, %125
  %128 = fadd float %120, %125
  %129 = fadd float %122, %125
  br label %146

130:                                              ; preds = %114
  %131 = load ptr, ptr %2, align 8, !tbaa !105
  %132 = tail call i32 @BKE_brush_size_get(ptr noundef %131, ptr noundef %1) #8
  %133 = sitofp i32 %132 to float
  %134 = fmul float %133, %5
  %135 = fptosi float %134 to i32
  %136 = sitofp i32 %3 to float
  %137 = sitofp i32 %4 to float
  %138 = sub nsw i32 %3, %135
  %139 = sitofp i32 %138 to float
  %140 = sub nsw i32 %4, %135
  %141 = sitofp i32 %140 to float
  %142 = add nsw i32 %135, %3
  %143 = sitofp i32 %142 to float
  %144 = add nsw i32 %135, %4
  %145 = sitofp i32 %144 to float
  br label %146

146:                                              ; preds = %130, %118
  %147 = phi float [ %137, %130 ], [ %122, %118 ]
  %148 = phi float [ %136, %130 ], [ %120, %118 ]
  %149 = phi float [ %143, %130 ], [ %128, %118 ]
  %150 = phi float [ %139, %130 ], [ %126, %118 ]
  %151 = phi float [ %141, %130 ], [ %127, %118 ]
  %152 = phi float [ %145, %130 ], [ %129, %118 ]
  %153 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 15
  %154 = load i32, ptr %153, align 4, !tbaa !87
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %165, label %156

156:                                              ; preds = %146
  %157 = load ptr, ptr %2, align 8, !tbaa !105
  %158 = tail call i32 @BKE_brush_use_size_pressure(ptr noundef %157, ptr noundef %1) #8
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %165, label %160

160:                                              ; preds = %156
  tail call void @glPushMatrix() #8
  tail call void @glLoadIdentity() #8
  tail call void @glTranslatef(float noundef %148, float noundef %147, float noundef 0.000000e+00) #8
  %161 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %0, i64 0, i32 16
  %162 = load float, ptr %161, align 8, !tbaa !108
  tail call void @glScalef(float noundef %162, float noundef %162, float noundef 1.000000e+00) #8
  %163 = fneg float %148
  %164 = fneg float %147
  tail call void @glTranslatef(float noundef %163, float noundef %164, float noundef 0.000000e+00) #8
  br label %165

165:                                              ; preds = %160, %156, %146
  %166 = phi i1 [ false, %160 ], [ true, %156 ], [ true, %146 ]
  %167 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 96), align 8, !tbaa !69
  %168 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 96, i64 1), align 4, !tbaa !69
  %169 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 96, i64 2), align 8, !tbaa !69
  %170 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 45
  %171 = load i32, ptr %170, align 8, !tbaa !155
  %172 = sitofp i32 %171 to float
  %173 = fdiv float %172, 1.000000e+02
  tail call void @glColor4f(float noundef %167, float noundef %168, float noundef %169, float noundef %173) #8
  tail call void @glBegin(i32 noundef 7) #8
  tail call void @glTexCoord2f(float noundef 0.000000e+00, float noundef 0.000000e+00) #8
  tail call void @glVertex2f(float noundef %150, float noundef %151) #8
  tail call void @glTexCoord2f(float noundef 1.000000e+00, float noundef 0.000000e+00) #8
  tail call void @glVertex2f(float noundef %149, float noundef %151) #8
  tail call void @glTexCoord2f(float noundef 1.000000e+00, float noundef 1.000000e+00) #8
  tail call void @glVertex2f(float noundef %149, float noundef %152) #8
  tail call void @glTexCoord2f(float noundef 0.000000e+00, float noundef 1.000000e+00) #8
  tail call void @glVertex2f(float noundef %150, float noundef %152) #8
  tail call void @glEnd() #8
  br i1 %166, label %175, label %174

174:                                              ; preds = %165
  tail call void @glPopMatrix() #8
  br label %175

175:                                              ; preds = %165, %174, %6
  ret void
}

declare void @glPopAttrib() local_unnamed_addr #1

declare void @glColorMask(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare void @glDepthMask(i8 noundef zeroext) local_unnamed_addr #1

declare void @glDepthFunc(i32 noundef) local_unnamed_addr #1

declare void @glMatrixMode(i32 noundef) local_unnamed_addr #1

declare void @glPushMatrix() local_unnamed_addr #1

declare void @glLoadIdentity() local_unnamed_addr #1

declare void @glRotatef(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @glScalef(float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @glTexCoord2f(float noundef, float noundef) local_unnamed_addr #1

declare void @glPopMatrix() local_unnamed_addr #1

declare ptr @BKE_image_pool_new() local_unnamed_addr #1

declare ptr @ntreeTexBeginExecTree(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_image_pool_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_image_pool_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #5

declare void @paint_get_tex_pixel_col(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare float @paint_get_tex_pixel(ptr noundef, float noundef, float noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @ntreeTexEndExecTree(ptr noundef) local_unnamed_addr #1

declare void @BKE_image_pool_free(ptr noundef) local_unnamed_addr #1

declare void @glGenTextures(i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @glBindTexture(i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @glTexImage2D(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @glTexSubImage2D(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @glTexEnvf(i32 noundef, i32 noundef, float noundef) local_unnamed_addr #1

declare void @glTexParameteri(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @BKE_paint_reset_overlay_invalid(i32 noundef) local_unnamed_addr #1

declare void @curvemapping_initialize(ptr noundef) local_unnamed_addr #1

declare float @BKE_brush_curve_strength_clamp(ptr noundef, float noundef, float noundef) local_unnamed_addr #1

declare zeroext i8 @sculpt_stroke_get_location(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare float @BKE_brush_unprojected_radius_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_tool_settings(ptr noundef) local_unnamed_addr #1

declare void @ED_view3d_global_to_vector(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

declare i32 @ED_view3d_project_float_global(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare float @paint_calc_object_space_radius(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

declare void @BKE_brush_unprojected_radius_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

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
!45 = !{!46, !44, i64 264}
!46 = !{!"Scene", !47, i64 0, !44, i64 120, !44, i64 128, !44, i64 136, !44, i64 144, !49, i64 152, !44, i64 168, !44, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !36, i64 232, !36, i64 236, !36, i64 240, !48, i64 244, !37, i64 246, !37, i64 247, !44, i64 248, !44, i64 256, !44, i64 264, !44, i64 272, !50, i64 280, !59, i64 4264, !49, i64 4296, !49, i64 4312, !44, i64 4328, !44, i64 4336, !44, i64 4344, !44, i64 4352, !44, i64 4360, !44, i64 4368, !48, i64 4376, !48, i64 4378, !36, i64 4380, !49, i64 4384, !60, i64 4400, !61, i64 4416, !64, i64 4600, !44, i64 4608, !65, i64 4616, !44, i64 4640, !66, i64 4648, !66, i64 4656, !52, i64 4664, !53, i64 4824, !67, i64 4888, !44, i64 4952}
!47 = !{!"ID", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !37, i64 32, !48, i64 98, !36, i64 100, !36, i64 104, !36, i64 108, !44, i64 112}
!48 = !{!"short", !37, i64 0}
!49 = !{!"ListBase", !44, i64 0, !44, i64 8}
!50 = !{!"RenderData", !51, i64 0, !44, i64 248, !44, i64 256, !54, i64 264, !55, i64 328, !36, i64 400, !36, i64 404, !36, i64 408, !39, i64 412, !36, i64 416, !36, i64 420, !36, i64 424, !36, i64 428, !48, i64 432, !48, i64 434, !39, i64 436, !39, i64 440, !39, i64 444, !39, i64 448, !39, i64 452, !48, i64 456, !48, i64 458, !48, i64 460, !48, i64 462, !48, i64 464, !48, i64 466, !36, i64 468, !48, i64 472, !48, i64 474, !48, i64 476, !48, i64 478, !48, i64 480, !48, i64 482, !36, i64 484, !36, i64 488, !48, i64 492, !48, i64 494, !36, i64 496, !36, i64 500, !48, i64 504, !48, i64 506, !48, i64 508, !48, i64 510, !48, i64 512, !37, i64 514, !37, i64 515, !36, i64 516, !36, i64 520, !36, i64 524, !48, i64 528, !48, i64 530, !48, i64 532, !48, i64 534, !48, i64 536, !48, i64 538, !48, i64 540, !48, i64 542, !56, i64 544, !56, i64 560, !57, i64 576, !49, i64 592, !48, i64 608, !48, i64 610, !39, i64 612, !39, i64 616, !39, i64 620, !39, i64 624, !36, i64 628, !39, i64 632, !39, i64 636, !39, i64 640, !39, i64 644, !48, i64 648, !48, i64 650, !48, i64 652, !48, i64 654, !48, i64 656, !48, i64 658, !39, i64 660, !39, i64 664, !48, i64 668, !48, i64 670, !39, i64 672, !39, i64 676, !37, i64 680, !36, i64 1704, !48, i64 1708, !48, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !36, i64 2520, !48, i64 2524, !48, i64 2526, !39, i64 2528, !39, i64 2532, !48, i64 2536, !48, i64 2538, !39, i64 2540, !48, i64 2544, !48, i64 2546, !36, i64 2548, !48, i64 2552, !48, i64 2554, !48, i64 2556, !48, i64 2558, !39, i64 2560, !39, i64 2564, !44, i64 2568, !36, i64 2576, !39, i64 2580, !37, i64 2584, !58, i64 2616, !36, i64 3976, !36, i64 3980}
!51 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !48, i64 8, !48, i64 10, !39, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !52, i64 24, !53, i64 184}
!52 = !{!"ColorManagedViewSettings", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 72, !39, i64 136, !39, i64 140, !44, i64 144, !44, i64 152}
!53 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!54 = !{!"QuicktimeCodecSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !48, i64 48, !48, i64 50, !36, i64 52, !36, i64 56, !36, i64 60}
!55 = !{!"FFMpegCodecData", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !39, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !44, i64 64}
!56 = !{!"rctf", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!57 = !{!"rcti", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!58 = !{!"BakeData", !51, i64 0, !37, i64 248, !48, i64 1272, !48, i64 1274, !48, i64 1276, !48, i64 1278, !39, i64 1280, !39, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!59 = !{!"AudioData", !36, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !36, i64 16, !48, i64 20, !48, i64 22, !39, i64 24, !39, i64 28}
!60 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!61 = !{!"GameData", !60, i64 0, !48, i64 16, !48, i64 18, !48, i64 20, !48, i64 22, !48, i64 24, !48, i64 26, !48, i64 28, !48, i64 30, !48, i64 32, !37, i64 34, !62, i64 40, !48, i64 64, !48, i64 66, !39, i64 68, !63, i64 72, !39, i64 128, !39, i64 132, !36, i64 136, !48, i64 140, !48, i64 142, !48, i64 144, !48, i64 146, !48, i64 148, !48, i64 150, !48, i64 152, !48, i64 154, !48, i64 156, !48, i64 158, !48, i64 160, !48, i64 162, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180}
!62 = !{!"GameDome", !48, i64 0, !48, i64 2, !48, i64 4, !48, i64 6, !39, i64 8, !39, i64 12, !44, i64 16}
!63 = !{!"RecastData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !36, i64 40, !39, i64 44, !39, i64 48, !48, i64 52, !48, i64 54}
!64 = !{!"UnitSettings", !39, i64 0, !37, i64 4, !37, i64 5, !48, i64 6}
!65 = !{!"PhysicsSettings", !37, i64 0, !36, i64 12, !36, i64 16, !36, i64 20}
!66 = !{!"long", !37, i64 0}
!67 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!68 = !{!43, !36, i64 28}
!69 = !{!39, !39, i64 0}
!70 = !{!71, !36, i64 1856}
!71 = !{!"Brush", !47, i64 0, !72, i64 120, !44, i64 144, !73, i64 152, !73, i64 464, !44, i64 776, !44, i64 784, !44, i64 792, !44, i64 800, !44, i64 808, !37, i64 816, !39, i64 1840, !48, i64 1844, !48, i64 1846, !39, i64 1848, !36, i64 1852, !36, i64 1856, !36, i64 1860, !39, i64 1864, !36, i64 1868, !36, i64 1872, !36, i64 1876, !36, i64 1880, !39, i64 1884, !39, i64 1888, !37, i64 1892, !39, i64 1904, !37, i64 1908, !36, i64 1920, !39, i64 1924, !39, i64 1928, !36, i64 1932, !36, i64 1936, !36, i64 1940, !37, i64 1944, !37, i64 1945, !37, i64 1946, !37, i64 1947, !39, i64 1948, !39, i64 1952, !39, i64 1956, !39, i64 1960, !39, i64 1964, !36, i64 1968, !36, i64 1972, !36, i64 1976, !39, i64 1980, !39, i64 1984, !36, i64 1988, !36, i64 1992, !39, i64 1996, !37, i64 2000, !37, i64 2012, !37, i64 2024, !37, i64 2032, !37, i64 2040, !37, i64 2048}
!72 = !{!"BrushClone", !44, i64 0, !37, i64 8, !39, i64 16, !39, i64 20}
!73 = !{!"MTex", !48, i64 0, !48, i64 2, !48, i64 4, !48, i64 6, !44, i64 8, !44, i64 16, !37, i64 24, !37, i64 88, !37, i64 89, !37, i64 90, !37, i64 91, !37, i64 92, !37, i64 104, !39, i64 116, !48, i64 120, !48, i64 122, !48, i64 124, !48, i64 126, !48, i64 128, !48, i64 130, !37, i64 132, !37, i64 133, !39, i64 140, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !39, i64 248, !39, i64 252, !39, i64 256, !39, i64 260, !39, i64 264, !39, i64 268, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !39, i64 300, !39, i64 304, !39, i64 308}
!74 = !{!71, !44, i64 808}
!75 = !{!76, !44, i64 120}
!76 = !{!"PaintCurve", !47, i64 0, !44, i64 120, !36, i64 128, !36, i64 132}
!77 = !{!76, !36, i64 128}
!78 = !{!79, !37, i64 52}
!79 = !{!"PaintCurvePoint", !80, i64 0, !39, i64 72}
!80 = !{!"BezTriple", !37, i64 0, !39, i64 36, !39, i64 40, !39, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !39, i64 56, !39, i64 60, !39, i64 64, !37, i64 68}
!81 = !{!79, !37, i64 51}
!82 = !{!79, !37, i64 53}
!83 = distinct !{!83, !84, !85}
!84 = !{!"llvm.loop.mustprogress"}
!85 = !{!"llvm.loop.unroll.disable"}
!86 = distinct !{!86, !84, !85}
!87 = !{!88, !36, i64 84}
!88 = !{!"UnifiedPaintSettings", !36, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !37, i64 16, !37, i64 28, !36, i64 40, !37, i64 44, !39, i64 52, !36, i64 56, !36, i64 60, !37, i64 64, !37, i64 65, !39, i64 72, !37, i64 76, !36, i64 84, !39, i64 88, !37, i64 92, !37, i64 100, !36, i64 108, !44, i64 112, !39, i64 120, !36, i64 124}
!89 = !{!90, !44, i64 8}
!90 = !{!"ViewContext", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !44, i64 40, !44, i64 48, !37, i64 56}
!91 = !{!92, !44, i64 128}
!92 = !{!"Object", !47, i64 0, !44, i64 120, !44, i64 128, !48, i64 136, !48, i64 138, !36, i64 140, !36, i64 144, !36, i64 148, !37, i64 152, !44, i64 216, !44, i64 224, !44, i64 232, !44, i64 240, !44, i64 248, !44, i64 256, !44, i64 264, !44, i64 272, !44, i64 280, !44, i64 288, !44, i64 296, !44, i64 304, !93, i64 312, !44, i64 360, !49, i64 368, !49, i64 384, !49, i64 400, !49, i64 416, !36, i64 432, !36, i64 436, !44, i64 440, !44, i64 448, !36, i64 456, !36, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !39, i64 616, !39, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !36, i64 944, !48, i64 948, !48, i64 950, !48, i64 952, !48, i64 954, !48, i64 956, !48, i64 958, !48, i64 960, !48, i64 962, !48, i64 964, !37, i64 966, !37, i64 967, !36, i64 968, !36, i64 972, !36, i64 976, !36, i64 980, !36, i64 984, !39, i64 988, !39, i64 992, !39, i64 996, !39, i64 1000, !39, i64 1004, !39, i64 1008, !39, i64 1012, !39, i64 1016, !39, i64 1020, !39, i64 1024, !39, i64 1028, !39, i64 1032, !48, i64 1036, !48, i64 1038, !48, i64 1040, !37, i64 1042, !37, i64 1043, !48, i64 1044, !37, i64 1046, !37, i64 1047, !39, i64 1048, !39, i64 1052, !49, i64 1056, !49, i64 1072, !49, i64 1088, !49, i64 1104, !39, i64 1120, !48, i64 1124, !48, i64 1126, !37, i64 1128, !36, i64 1144, !36, i64 1148, !44, i64 1152, !37, i64 1160, !37, i64 1161, !48, i64 1162, !37, i64 1164, !49, i64 1176, !49, i64 1192, !49, i64 1208, !49, i64 1224, !44, i64 1240, !44, i64 1248, !44, i64 1256, !37, i64 1264, !37, i64 1265, !48, i64 1266, !39, i64 1268, !44, i64 1272, !44, i64 1280, !44, i64 1288, !44, i64 1296, !66, i64 1304, !66, i64 1312, !36, i64 1320, !36, i64 1324, !49, i64 1328, !49, i64 1344, !44, i64 1360, !44, i64 1368, !44, i64 1376, !37, i64 1384, !44, i64 1392, !49, i64 1400, !44, i64 1416}
!93 = !{!"bAnimVizSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !48, i64 16, !48, i64 18, !48, i64 20, !48, i64 22, !48, i64 24, !48, i64 26, !48, i64 28, !48, i64 30, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44}
!94 = !{!95, !44, i64 104}
!95 = !{!"SculptSession", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !36, i64 32, !36, i64 36, !44, i64 40, !44, i64 48, !44, i64 56, !44, i64 64, !44, i64 72, !36, i64 80, !36, i64 84, !37, i64 88, !44, i64 96, !44, i64 104, !37, i64 112, !37, i64 113, !44, i64 120, !44, i64 128, !44, i64 136, !37, i64 144, !36, i64 148, !44, i64 152, !36, i64 160, !44, i64 168, !44, i64 176, !44, i64 184, !44, i64 192, !37, i64 200, !37, i64 204, !37, i64 216, !36, i64 228}
!96 = !{!90, !44, i64 40}
!97 = !{!90, !44, i64 24}
!98 = !{!99, !44, i64 16}
!99 = !{!"ToolSettings", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !39, i64 32, !39, i64 36, !39, i64 40, !48, i64 44, !48, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !39, i64 52, !48, i64 56, !37, i64 58, !37, i64 59, !100, i64 64, !101, i64 168, !39, i64 336, !39, i64 340, !48, i64 344, !48, i64 346, !37, i64 348, !37, i64 349, !48, i64 350, !39, i64 352, !39, i64 356, !39, i64 360, !39, i64 364, !39, i64 368, !39, i64 372, !39, i64 376, !39, i64 380, !39, i64 384, !39, i64 388, !48, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !44, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !48, i64 434, !48, i64 436, !48, i64 438, !48, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !36, i64 448, !36, i64 452, !36, i64 456, !36, i64 460, !48, i64 464, !48, i64 466, !36, i64 468, !39, i64 472, !39, i64 476, !88, i64 480, !102, i64 608}
!100 = !{!"ImagePaintSettings", !43, i64 0, !48, i64 40, !48, i64 42, !48, i64 44, !48, i64 46, !37, i64 48, !36, i64 52, !44, i64 56, !44, i64 64, !44, i64 72, !44, i64 80, !37, i64 88, !39, i64 100}
!101 = !{!"ParticleEditSettings", !48, i64 0, !48, i64 2, !48, i64 4, !48, i64 6, !37, i64 8, !44, i64 120, !39, i64 128, !39, i64 132, !36, i64 136, !36, i64 140, !36, i64 144, !36, i64 148, !44, i64 152, !44, i64 160}
!102 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !37, i64 20, !37, i64 21, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36}
!103 = !{!88, !37, i64 64}
!104 = !{!71, !37, i64 1944}
!105 = !{!90, !44, i64 0}
!106 = !{!88, !36, i64 56}
!107 = !{!88, !36, i64 60}
!108 = !{!88, !39, i64 88}
!109 = !{!80, !37, i64 51}
!110 = !{!80, !37, i64 52}
!111 = !{!80, !37, i64 53}
!112 = !{!71, !36, i64 1872}
!113 = !{!36, !36, i64 0}
!114 = !{!73, !44, i64 16}
!115 = !{!73, !37, i64 132}
!116 = !{!117, !48, i64 208}
!117 = !{!"ARegion", !44, i64 0, !44, i64 8, !118, i64 16, !57, i64 176, !57, i64 192, !48, i64 208, !48, i64 210, !48, i64 212, !48, i64 214, !48, i64 216, !48, i64 218, !39, i64 220, !48, i64 224, !48, i64 226, !48, i64 228, !48, i64 230, !48, i64 232, !48, i64 234, !48, i64 236, !48, i64 238, !44, i64 240, !49, i64 248, !49, i64 264, !49, i64 280, !49, i64 296, !49, i64 312, !49, i64 328, !49, i64 344, !44, i64 360, !44, i64 368, !44, i64 376}
!118 = !{!"View2D", !56, i64 0, !56, i64 16, !57, i64 32, !57, i64 48, !57, i64 64, !37, i64 80, !37, i64 88, !39, i64 96, !39, i64 100, !48, i64 104, !48, i64 106, !48, i64 108, !48, i64 110, !48, i64 112, !48, i64 114, !48, i64 116, !48, i64 118, !48, i64 120, !48, i64 122, !48, i64 124, !48, i64 126, !44, i64 128, !36, i64 136, !36, i64 140, !44, i64 144, !44, i64 152}
!119 = !{!117, !48, i64 210}
!120 = !{!73, !39, i64 116}
!121 = !{!35, !39, i64 16}
!122 = !{!35, !36, i64 4}
!123 = !{!35, !36, i64 8}
!124 = distinct !{!124, !84, !85}
!125 = !{!35, !36, i64 12}
!126 = !{!44, !44, i64 0}
!127 = !{!128, !44, i64 336}
!128 = !{!"Tex", !47, i64 0, !44, i64 120, !39, i64 128, !39, i64 132, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !48, i64 216, !48, i64 218, !48, i64 220, !48, i64 222, !48, i64 224, !48, i64 226, !48, i64 228, !48, i64 230, !48, i64 232, !48, i64 234, !39, i64 236, !39, i64 240, !39, i64 244, !39, i64 248, !36, i64 252, !36, i64 256, !48, i64 260, !48, i64 262, !48, i64 264, !48, i64 266, !36, i64 268, !36, i64 272, !36, i64 276, !36, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !129, i64 296, !44, i64 336, !44, i64 344, !44, i64 352, !44, i64 360, !44, i64 368, !44, i64 376, !44, i64 384, !44, i64 392, !44, i64 400, !37, i64 408, !37, i64 409}
!129 = !{!"ImageUser", !44, i64 0, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !48, i64 28, !48, i64 30, !48, i64 32, !48, i64 34, !36, i64 36}
!130 = !{!128, !48, i64 232}
!131 = !{!128, !44, i64 352}
!132 = !{!133, !44, i64 48}
!133 = !{!"ImBuf", !44, i64 0, !44, i64 8, !36, i64 16, !36, i64 20, !37, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !44, i64 40, !44, i64 48, !37, i64 56, !36, i64 72, !36, i64 76, !36, i64 80, !36, i64 84, !44, i64 88, !44, i64 96, !44, i64 104, !39, i64 112, !37, i64 120, !36, i64 280, !36, i64 284, !36, i64 288, !36, i64 292, !44, i64 296, !44, i64 304, !36, i64 312, !37, i64 316, !37, i64 1340, !44, i64 2368, !36, i64 2376, !44, i64 2384, !36, i64 2392, !36, i64 2396, !44, i64 2400, !44, i64 2408, !44, i64 2416, !44, i64 2424, !36, i64 2432, !57, i64 2436, !134, i64 2456}
!134 = !{!"DDSData", !36, i64 0, !36, i64 4, !44, i64 8, !36, i64 16}
!135 = !{!133, !44, i64 2400}
!136 = !{!37, !37, i64 0}
!137 = !{!71, !39, i64 1964}
!138 = distinct !{!138, !84, !85}
!139 = distinct !{!139, !84, !85}
!140 = !{!141, !44, i64 360}
!141 = !{!"bNodeTree", !47, i64 0, !44, i64 120, !44, i64 128, !37, i64 136, !44, i64 200, !44, i64 208, !37, i64 216, !49, i64 224, !49, i64 240, !36, i64 256, !36, i64 260, !36, i64 264, !36, i64 268, !36, i64 272, !48, i64 276, !48, i64 278, !36, i64 280, !36, i64 284, !48, i64 288, !48, i64 290, !36, i64 292, !56, i64 296, !49, i64 312, !49, i64 328, !44, i64 344, !142, i64 352, !36, i64 356, !44, i64 360, !44, i64 368, !44, i64 376, !44, i64 384, !44, i64 392, !44, i64 400, !44, i64 408, !44, i64 416, !44, i64 424}
!142 = !{!"bNodeInstanceKey", !36, i64 0}
!143 = !{!35, !37, i64 20}
!144 = !{!88, !39, i64 52}
!145 = !{!57, !36, i64 4}
!146 = !{!57, !36, i64 0}
!147 = !{!57, !36, i64 12}
!148 = !{!57, !36, i64 8}
!149 = !{!41, !36, i64 8}
!150 = distinct !{!150, !84, !85}
!151 = !{!41, !36, i64 4}
!152 = !{!71, !44, i64 144}
!153 = distinct !{!153, !84, !85}
!154 = distinct !{!154, !84, !85}
!155 = !{!71, !36, i64 1976}
