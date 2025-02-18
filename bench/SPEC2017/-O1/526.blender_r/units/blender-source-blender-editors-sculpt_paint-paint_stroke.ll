; ModuleID = 'blender/source/blender/editors/sculpt_paint/paint_stroke.c'
source_filename = "blender/source/blender/editors/sculpt_paint/paint_stroke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.PaintStroke = type { ptr, ptr, ptr, %struct.ViewContext, %struct.bglMats, ptr, ptr, %struct.ListBase, [64 x %struct.PaintSample], i32, i32, [2 x float], float, i8, i32, i8, i8, [2 x float], float, float, i32, float, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ViewContext = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32] }
%struct.bglMats = type { [16 x double], [16 x double], [4 x i32] }
%struct.ListBase = type { ptr, ptr }
%struct.PaintSample = type { [2 x float], float }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.Brush = type { %struct.ID, %struct.BrushClone, ptr, %struct.MTex, %struct.MTex, ptr, ptr, ptr, ptr, ptr, [1024 x i8], float, i16, i16, float, i32, i32, i32, float, i32, i32, i32, i32, float, float, [3 x float], float, [3 x float], i32, float, float, i32, i32, i32, i8, i8, i8, i8, float, float, float, float, float, i32, i32, i32, float, float, i32, i32, float, [3 x float], [3 x float], [2 x float], [2 x float], [2 x float], [2 x float] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.BrushClone = type { ptr, [2 x float], float, float }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.PaintCurve = type { %struct.ID, ptr, i32, i32 }
%struct.PaintCurvePoint = type { %struct.BezTriple, float }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [12 x i8] c"PaintStroke\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@paint_stroke_modal_keymap.modal_items = internal global [2 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.2, i32 0, ptr @.str.3, ptr @.str.4 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [7 x i8] c"CANCEL\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Cancel\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Cancel and undo a stroke in progress\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Paint Stroke Modal\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"stroke\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"mouse\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"pen_flip\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"pressure\00", align 1
@switch.table.paint_supports_dynamic_tex_coords = private unnamed_addr constant [10 x i8] c"\00\01\01\01\01\01\01\00\00\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @paint_stroke_new(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %12 = tail call ptr %11(i64 noundef 1264, ptr noundef nonnull @.str) #11
  %13 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #11
  %14 = getelementptr inbounds %struct.ToolSettings, ptr %13, i64 0, i32 73
  %15 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #11
  %16 = tail call ptr @BKE_paint_brush(ptr noundef %15) #11
  %17 = getelementptr inbounds %struct.PaintStroke, ptr %12, i64 0, i32 5
  store ptr %16, ptr %17, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  %18 = getelementptr inbounds %struct.PaintStroke, ptr %12, i64 0, i32 3
  tail call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %18) #11
  %19 = getelementptr inbounds %struct.PaintStroke, ptr %12, i64 0, i32 3, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !45
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %8
  %23 = getelementptr inbounds %struct.PaintStroke, ptr %12, i64 0, i32 3, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  %25 = getelementptr inbounds %struct.PaintStroke, ptr %12, i64 0, i32 3, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !47
  %27 = getelementptr inbounds %struct.PaintStroke, ptr %12, i64 0, i32 3, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !48
  %29 = getelementptr inbounds %struct.PaintStroke, ptr %12, i64 0, i32 4
  tail call void @view3d_get_transformation(ptr noundef %24, ptr noundef %26, ptr noundef %28, ptr noundef nonnull %29) #11
  br label %30

30:                                               ; preds = %22, %8
  %31 = getelementptr inbounds %struct.PaintStroke, ptr %12, i64 0, i32 23
  store ptr %2, ptr %31, align 8, !tbaa !49
  %32 = getelementptr inbounds %struct.PaintStroke, ptr %12, i64 0, i32 24
  store ptr %3, ptr %32, align 8, !tbaa !50
  %33 = getelementptr inbounds %struct.PaintStroke, ptr %12, i64 0, i32 25
  store ptr %4, ptr %33, align 8, !tbaa !51
  %34 = getelementptr inbounds %struct.PaintStroke, ptr %12, i64 0, i32 26
  store ptr %5, ptr %34, align 8, !tbaa !52
  %35 = getelementptr inbounds %struct.PaintStroke, ptr %12, i64 0, i32 27
  store ptr %6, ptr %35, align 8, !tbaa !53
  %36 = getelementptr inbounds %struct.PaintStroke, ptr %12, i64 0, i32 14
  store i32 %7, ptr %36, align 8, !tbaa !54
  %37 = getelementptr inbounds %struct.PaintStroke, ptr %12, i64 0, i32 6
  store ptr %14, ptr %37, align 8, !tbaa !55
  %38 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %39 = load ptr, ptr %38, align 8, !tbaa !56
  %40 = tail call i32 @RNA_enum_get(ptr noundef %39, ptr noundef nonnull @.str.1) #11
  %41 = getelementptr inbounds %struct.PaintStroke, ptr %12, i64 0, i32 20
  store i32 %40, ptr %41, align 8, !tbaa !59
  %42 = call i32 @get_imapaint_zoom(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %10) #11
  %43 = load float, ptr %9, align 4, !tbaa !60
  %44 = load float, ptr %10, align 4, !tbaa !60
  %45 = fcmp ogt float %43, %44
  %46 = select i1 %45, float %43, float %44
  %47 = getelementptr inbounds %struct.PaintStroke, ptr %12, i64 0, i32 21
  store float %46, ptr %47, align 4, !tbaa !61
  %48 = getelementptr inbounds %struct.Brush, ptr %16, i64 0, i32 16
  %49 = load i32, ptr %48, align 8, !tbaa !62
  %50 = icmp sgt i32 %49, -1
  br i1 %50, label %57, label %51

51:                                               ; preds = %30
  %52 = load ptr, ptr %38, align 8, !tbaa !56
  %53 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %52, ptr noundef nonnull @.str.1) #11
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr %38, align 8, !tbaa !56
  call void @RNA_enum_set(ptr noundef %56, ptr noundef nonnull @.str.1, i32 noundef 0) #11
  br label %57

57:                                               ; preds = %55, %51, %30
  %58 = getelementptr inbounds %struct.ToolSettings, ptr %13, i64 0, i32 73, i32 13
  store float 1.000000e+00, ptr %58, align 8, !tbaa !67
  %59 = getelementptr inbounds %struct.ToolSettings, ptr %13, i64 0, i32 73, i32 15
  store i32 1, ptr %59, align 4, !tbaa !69
  %60 = getelementptr inbounds %struct.Brush, ptr %16, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !70
  call void @curvemapping_initialize(ptr noundef %61) #11
  %62 = getelementptr inbounds %struct.Brush, ptr %16, i64 0, i32 20
  %63 = load i32, ptr %62, align 8, !tbaa !71
  call void @BKE_paint_set_overlay_override(i32 noundef %63) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  ret ptr %12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @CTX_data_tool_settings(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_paint_brush(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_paint_get_active_from_context(ptr noundef) local_unnamed_addr #2

declare void @view3d_set_viewcontext(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @view3d_get_transformation(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @get_imapaint_zoom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @curvemapping_initialize(ptr noundef) local_unnamed_addr #2

declare void @BKE_paint_set_overlay_override(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @paint_stroke_data_free(ptr nocapture noundef %0) local_unnamed_addr #0 {
  tail call void @BKE_paint_set_overlay_override(i32 noundef 0) #11
  %2 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %6(ptr noundef nonnull %3) #11
  store ptr null, ptr %2, align 8, !tbaa !72
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @paint_space_stroke_enabled(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 16
  %4 = load i32, ptr %3, align 8, !tbaa !62
  %5 = and i32 %4, 1280
  %6 = icmp eq i32 %5, 1024
  br i1 %6, label %7, label %25

7:                                                ; preds = %2
  switch i32 %1, label %20 [
    i32 0, label %8
    i32 4, label %13
    i32 3, label %13
  ]

8:                                                ; preds = %7
  %9 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 34
  %10 = load i8, ptr %9, align 8, !tbaa !73
  %11 = add i8 %10, -5
  %12 = icmp ult i8 %11, 10
  br i1 %12, label %21, label %20

13:                                               ; preds = %7, %7
  %14 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 36
  %15 = load i8, ptr %14, align 2, !tbaa !74
  %16 = icmp ne i8 %15, 4
  %17 = and i32 %4, 2097152
  %18 = icmp eq i32 %17, 0
  %19 = or i1 %18, %16
  br i1 %19, label %20, label %25

20:                                               ; preds = %8, %13, %7
  br label %25

21:                                               ; preds = %8
  %22 = zext nneg i8 %11 to i64
  %23 = getelementptr inbounds [10 x i8], ptr @switch.table.paint_supports_dynamic_tex_coords, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1
  br label %25

25:                                               ; preds = %21, %20, %13, %2
  %26 = phi i8 [ 0, %2 ], [ 1, %20 ], [ 0, %13 ], [ %24, %21 ]
  ret i8 %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @paint_supports_dynamic_size(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 16
  %4 = load i32, ptr %3, align 8, !tbaa !62
  %5 = and i32 %4, 256
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %2
  switch i32 %1, label %20 [
    i32 0, label %8
    i32 4, label %13
    i32 3, label %13
  ]

8:                                                ; preds = %7
  %9 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 34
  %10 = load i8, ptr %9, align 8, !tbaa !73
  %11 = add i8 %10, -5
  %12 = icmp ult i8 %11, 10
  br i1 %12, label %21, label %20

13:                                               ; preds = %7, %7
  %14 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 36
  %15 = load i8, ptr %14, align 2, !tbaa !74
  %16 = icmp ne i8 %15, 4
  %17 = and i32 %4, 2097152
  %18 = icmp eq i32 %17, 0
  %19 = or i1 %18, %16
  br i1 %19, label %20, label %25

20:                                               ; preds = %8, %7, %13
  br label %25

21:                                               ; preds = %8
  %22 = zext nneg i8 %11 to i64
  %23 = getelementptr inbounds [10 x i8], ptr @switch.table.paint_supports_dynamic_tex_coords, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1
  br label %25

25:                                               ; preds = %21, %13, %2, %20
  %26 = phi i8 [ 1, %20 ], [ 0, %2 ], [ 0, %13 ], [ %24, %21 ]
  ret i8 %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @paint_supports_smooth_stroke(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 16
  %4 = load i32, ptr %3, align 8, !tbaa !62
  %5 = and i32 %4, 545261824
  %6 = icmp eq i32 %5, 2048
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 34
  %11 = load i8, ptr %10, align 8, !tbaa !73
  %12 = add i8 %11, -5
  %13 = icmp ult i8 %12, 10
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = zext nneg i8 %12 to i64
  %16 = getelementptr inbounds [10 x i8], ptr @switch.table.paint_supports_dynamic_tex_coords, i64 0, i64 %15
  %17 = load i8, ptr %16, align 1
  br label %18

18:                                               ; preds = %9, %14, %7, %2
  %19 = phi i8 [ 0, %2 ], [ 1, %7 ], [ %17, %14 ], [ 1, %9 ]
  ret i8 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @paint_supports_texture(i32 noundef %0) local_unnamed_addr #4 {
  switch i32 %0, label %2 [
    i32 3, label %5
    i32 1, label %5
    i32 0, label %5
  ]

2:                                                ; preds = %1
  %3 = icmp eq i32 %0, 4
  %4 = zext i1 %3 to i8
  br label %5

5:                                                ; preds = %1, %1, %1, %2
  %6 = phi i8 [ 1, %1 ], [ %4, %2 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @paint_supports_dynamic_tex_coords(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 16
  %4 = load i32, ptr %3, align 8, !tbaa !62
  %5 = and i32 %4, 256
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 34
  %11 = load i8, ptr %10, align 8, !tbaa !73
  %12 = add i8 %11, -5
  %13 = icmp ult i8 %12, 10
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = zext nneg i8 %12 to i64
  %16 = getelementptr inbounds [10 x i8], ptr @switch.table.paint_supports_dynamic_tex_coords, i64 0, i64 %15
  %17 = load i8, ptr %16, align 1
  br label %18

18:                                               ; preds = %9, %14, %7, %2
  %19 = phi i8 [ 0, %2 ], [ 1, %7 ], [ %17, %14 ], [ 1, %9 ]
  ret i8 %19
}

; Function Attrs: nounwind uwtable
define dso_local ptr @paint_stroke_modal_keymap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @WM_modalkeymap_get(ptr noundef %0, ptr noundef nonnull @.str.5) #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = tail call ptr @WM_modalkeymap_add(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @paint_stroke_modal_keymap.modal_items) #11
  %6 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %5, i32 noundef 218, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 1) #11
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi ptr [ %2, %1 ], [ %5, %4 ]
  ret ptr %8
}

declare ptr @WM_modalkeymap_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @WM_modalkeymap_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @WM_modalkeymap_add_item(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @paint_stroke_modal(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca float, align 4
  %5 = alloca [82 x float], align 16
  %6 = alloca %struct.PaintSample, align 4
  %7 = alloca [2 x float], align 4
  %8 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #11
  %9 = tail call i32 @BKE_paintmode_get_active_from_context(ptr noundef %0) #11
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !72
  %12 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  %14 = getelementptr inbounds %struct.Brush, ptr %13, i64 0, i32 16
  %15 = load i32, ptr %14, align 8, !tbaa !62
  %16 = and i32 %15, 545259776
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 22
  %20 = tail call float @WM_event_tablet_data(ptr noundef %2, ptr noundef nonnull %19, ptr noundef null) #11
  br label %21

21:                                               ; preds = %3, %18
  %22 = phi float [ %20, %18 ], [ 1.000000e+00, %3 ]
  %23 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %24 = load i32, ptr %23, align 4, !tbaa !75
  %25 = sitofp i32 %24 to float
  %26 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %27 = load i32, ptr %26, align 4, !tbaa !75
  %28 = sitofp i32 %27 to float
  %29 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 10
  %30 = load i32, ptr %29, align 4, !tbaa !76
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 8, i64 %31
  %33 = getelementptr inbounds %struct.Paint, ptr %8, i64 0, i32 5
  %34 = load i32, ptr %33, align 8, !tbaa !77
  %35 = tail call i32 @llvm.smax.i32(i32 %34, i32 1)
  %36 = tail call i32 @llvm.smin.i32(i32 %35, i32 64)
  store float %25, ptr %32, align 4, !tbaa !60
  %37 = getelementptr inbounds [2 x float], ptr %32, i64 0, i64 1
  store float %28, ptr %37, align 4, !tbaa !60
  %38 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 8, i64 %31, i32 1
  store float %22, ptr %38, align 4, !tbaa !79
  %39 = add nsw i32 %30, 1
  %40 = icmp slt i32 %39, %36
  %41 = select i1 %40, i32 %39, i32 0
  store i32 %41, ptr %29, align 4, !tbaa !76
  %42 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 9
  %43 = load i32, ptr %42, align 8, !tbaa !81
  %44 = icmp slt i32 %43, %36
  br i1 %44, label %45, label %47

45:                                               ; preds = %21
  %46 = add nsw i32 %43, 1
  store i32 %46, ptr %42, align 8, !tbaa !81
  br label %47

47:                                               ; preds = %21, %45
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  %48 = load i32, ptr %42, align 8, !tbaa !81
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %73

50:                                               ; preds = %47
  %51 = load float, ptr %6, align 4, !tbaa !60
  %52 = getelementptr inbounds float, ptr %6, i64 1
  %53 = getelementptr inbounds %struct.PaintSample, ptr %6, i64 0, i32 1
  %54 = load float, ptr %52, align 4, !tbaa !60
  %55 = load float, ptr %53, align 4, !tbaa !79
  %56 = zext nneg i32 %48 to i64
  br label %57

57:                                               ; preds = %50, %57
  %58 = phi i64 [ 0, %50 ], [ %71, %57 ]
  %59 = phi float [ %55, %50 ], [ %70, %57 ]
  %60 = phi float [ %54, %50 ], [ %67, %57 ]
  %61 = phi float [ %51, %50 ], [ %64, %57 ]
  %62 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 8, i64 %58
  %63 = load float, ptr %62, align 4, !tbaa !60
  %64 = fadd float %63, %61
  store float %64, ptr %6, align 4, !tbaa !60
  %65 = getelementptr inbounds float, ptr %62, i64 1
  %66 = load float, ptr %65, align 4, !tbaa !60
  %67 = fadd float %66, %60
  store float %67, ptr %52, align 4, !tbaa !60
  %68 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 8, i64 %58, i32 1
  %69 = load float, ptr %68, align 4, !tbaa !79
  %70 = fadd float %69, %59
  store float %70, ptr %53, align 4, !tbaa !79
  %71 = add nuw nsw i64 %58, 1
  %72 = icmp eq i64 %71, %56
  br i1 %72, label %73, label %57, !llvm.loop !82

73:                                               ; preds = %57, %47
  %74 = sitofp i32 %48 to float
  %75 = fdiv float 1.000000e+00, %74
  %76 = load float, ptr %6, align 4, !tbaa !60
  %77 = fmul float %75, %76
  store float %77, ptr %6, align 4, !tbaa !60
  %78 = getelementptr inbounds float, ptr %6, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !60
  %80 = fmul float %75, %79
  store float %80, ptr %78, align 4, !tbaa !60
  %81 = getelementptr inbounds %struct.PaintSample, ptr %6, i64 0, i32 1
  %82 = load float, ptr %81, align 4, !tbaa !79
  %83 = fdiv float %82, %74
  store float %83, ptr %81, align 4, !tbaa !79
  %84 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %85 = load i16, ptr %84, align 8, !tbaa !85
  %86 = icmp eq i16 %85, 400
  br i1 %86, label %652, label %87

87:                                               ; preds = %73
  %88 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 15
  %89 = load i8, ptr %88, align 4, !tbaa !88
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %242

91:                                               ; preds = %87
  %92 = load ptr, ptr %12, align 8, !tbaa !38
  %93 = getelementptr inbounds %struct.Brush, ptr %92, i64 0, i32 16
  %94 = load i32, ptr %93, align 8, !tbaa !62
  %95 = icmp sgt i32 %94, -1
  br i1 %95, label %228, label %96

96:                                               ; preds = %91
  %97 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %98 = load ptr, ptr %12, align 8, !tbaa !38
  %99 = tail call i32 @BKE_brush_size_get(ptr noundef %97, ptr noundef %98) #11
  %100 = sitofp i32 %99 to float
  %101 = fcmp olt float %100, 1.000000e+00
  %102 = select i1 %101, float 1.000000e+00, float %100
  %103 = load ptr, ptr %12, align 8, !tbaa !38
  %104 = getelementptr inbounds %struct.Brush, ptr %103, i64 0, i32 21
  %105 = load i32, ptr %104, align 4, !tbaa !89
  %106 = sitofp i32 %105 to float
  %107 = getelementptr inbounds %struct.Brush, ptr %103, i64 0, i32 16
  %108 = load i32, ptr %107, align 8, !tbaa !62
  %109 = and i32 %108, 32
  %110 = icmp eq i32 %109, 0
  %111 = select i1 %110, float 1.000000e+00, float 5.000000e-01
  %112 = fmul float %111, %106
  %113 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 21
  %114 = load float, ptr %113, align 4, !tbaa !61
  %115 = fmul float %114, %112
  %116 = fmul float %102, %115
  %117 = fdiv float %116, 5.000000e+01
  %118 = fcmp olt float %117, 1.000000e+00
  %119 = select i1 %118, float 1.000000e+00, float %117
  %120 = getelementptr inbounds %struct.Brush, ptr %92, i64 0, i32 9
  %121 = load ptr, ptr %120, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store float 0.000000e+00, ptr %4, align 4, !tbaa !60
  %122 = icmp eq ptr %121, null
  br i1 %122, label %227, label %123

123:                                              ; preds = %96
  %124 = getelementptr inbounds %struct.PaintCurve, ptr %121, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !91
  %126 = getelementptr inbounds %struct.Brush, ptr %92, i64 0, i32 21
  %127 = load i32, ptr %126, align 4, !tbaa !89
  %128 = load i32, ptr %93, align 8, !tbaa !62
  %129 = and i32 %128, 262144
  %130 = icmp ne i32 %129, 0
  %131 = icmp slt i32 %127, 100
  %132 = select i1 %130, i1 %131, i1 false
  br i1 %132, label %133, label %167

133:                                              ; preds = %123
  %134 = sitofp i32 %127 to float
  %135 = fdiv float 1.000000e+02, %134
  %136 = fptosi float %135 to i32
  %137 = fdiv float %134, 5.000000e+01
  %138 = icmp sgt i32 %136, 0
  br label %139

139:                                              ; preds = %159, %133
  %140 = phi i32 [ 0, %133 ], [ %163, %159 ]
  %141 = phi float [ 0.000000e+00, %133 ], [ %162, %159 ]
  %142 = sitofp i32 %140 to float
  %143 = fmul float %142, 0x3FB99999A0000000
  %144 = fadd float %143, -1.000000e+00
  br i1 %138, label %145, label %159

145:                                              ; preds = %139, %155
  %146 = phi i32 [ %157, %155 ], [ 0, %139 ]
  %147 = phi float [ %156, %155 ], [ 0.000000e+00, %139 ]
  %148 = sitofp i32 %146 to float
  %149 = tail call float @llvm.fmuladd.f32(float %148, float %137, float %144)
  %150 = tail call float @llvm.fabs.f32(float %149)
  %151 = fcmp olt float %150, 1.000000e+00
  br i1 %151, label %152, label %155

152:                                              ; preds = %145
  %153 = tail call float @BKE_brush_curve_strength(ptr noundef %92, float noundef %150, float noundef 1.000000e+00) #11
  %154 = fadd float %147, %153
  br label %155

155:                                              ; preds = %152, %145
  %156 = phi float [ %154, %152 ], [ %147, %145 ]
  %157 = add nuw nsw i32 %146, 1
  %158 = icmp eq i32 %157, %136
  br i1 %158, label %159, label %145, !llvm.loop !93

159:                                              ; preds = %155, %139
  %160 = phi float [ 0.000000e+00, %139 ], [ %156, %155 ]
  %161 = fcmp ogt float %160, %141
  %162 = select i1 %161, float %160, float %141
  %163 = add nuw nsw i32 %140, 1
  %164 = icmp eq i32 %163, 10
  br i1 %164, label %165, label %139, !llvm.loop !94

165:                                              ; preds = %159
  %166 = fdiv float 1.000000e+00, %162
  br label %167

167:                                              ; preds = %123, %165
  %168 = phi float [ %166, %165 ], [ 1.000000e+00, %123 ]
  %169 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 6
  %170 = load ptr, ptr %169, align 8, !tbaa !55
  %171 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %170, i64 0, i32 13
  store float %168, ptr %171, align 8, !tbaa !67
  %172 = getelementptr inbounds %struct.PaintCurve, ptr %121, i64 0, i32 2
  %173 = load i32, ptr %172, align 8, !tbaa !95
  %174 = icmp sgt i32 %173, 1
  br i1 %174, label %175, label %226

175:                                              ; preds = %167
  %176 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 13
  %177 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 19
  %178 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 11
  %179 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 11, i64 1
  %180 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 24
  br label %181

181:                                              ; preds = %175, %221
  %182 = phi i32 [ 0, %175 ], [ %222, %221 ]
  %183 = phi ptr [ %125, %175 ], [ %184, %221 ]
  call void @llvm.lifetime.start.p0(i64 328, ptr nonnull %5) #11
  %184 = getelementptr inbounds %struct.PaintCurvePoint, ptr %183, i64 1
  br label %185

185:                                              ; preds = %181, %185
  %186 = phi i64 [ 0, %181 ], [ %196, %185 ]
  %187 = getelementptr inbounds [3 x [3 x float]], ptr %183, i64 0, i64 1, i64 %186
  %188 = load float, ptr %187, align 4, !tbaa !60
  %189 = getelementptr inbounds [3 x [3 x float]], ptr %183, i64 0, i64 2, i64 %186
  %190 = load float, ptr %189, align 4, !tbaa !60
  %191 = getelementptr inbounds [3 x float], ptr %184, i64 0, i64 %186
  %192 = load float, ptr %191, align 4, !tbaa !60
  %193 = getelementptr inbounds %struct.PaintCurvePoint, ptr %183, i64 1, i32 0, i32 0, i64 1, i64 %186
  %194 = load float, ptr %193, align 4, !tbaa !60
  %195 = getelementptr inbounds float, ptr %5, i64 %186
  call void @BKE_curve_forward_diff_bezier(float noundef %188, float noundef %190, float noundef %192, float noundef %194, ptr noundef nonnull %195, i32 noundef 40, i32 noundef 8) #11
  %196 = add nuw nsw i64 %186, 1
  %197 = icmp eq i64 %186, 0
  br i1 %197, label %185, label %198, !llvm.loop !96

198:                                              ; preds = %185, %218
  %199 = phi i64 [ %219, %218 ], [ 0, %185 ]
  %200 = load i8, ptr %176, align 4, !tbaa !97
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %202, label %212

202:                                              ; preds = %198
  store float 1.000000e+00, ptr %177, align 4, !tbaa !98
  %203 = shl nuw nsw i64 %199, 1
  %204 = getelementptr inbounds float, ptr %5, i64 %203
  %205 = load float, ptr %204, align 8, !tbaa !60
  store float %205, ptr %178, align 4, !tbaa !60
  %206 = getelementptr inbounds float, ptr %204, i64 1
  %207 = load float, ptr %206, align 4, !tbaa !60
  store float %207, ptr %179, align 4, !tbaa !60
  %208 = load ptr, ptr %180, align 8, !tbaa !50
  %209 = call zeroext i8 %208(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %178) #11
  store i8 %209, ptr %176, align 4, !tbaa !97
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %218, label %211

211:                                              ; preds = %202
  call fastcc void @paint_brush_stroke_add_step(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %204, float noundef 1.000000e+00)
  br label %215

212:                                              ; preds = %198
  %213 = shl nuw nsw i64 %199, 1
  %214 = getelementptr inbounds float, ptr %5, i64 %213
  br label %215

215:                                              ; preds = %211, %212
  %216 = phi ptr [ %214, %212 ], [ %204, %211 ]
  %217 = getelementptr float, ptr %216, i64 2
  call fastcc void @paint_line_strokes_spacing(ptr noundef %0, ptr noundef %1, ptr noundef %11, float noundef %119, ptr noundef nonnull %4, ptr noundef nonnull %216, ptr noundef %217)
  br label %218

218:                                              ; preds = %215, %202
  %219 = add nuw nsw i64 %199, 1
  %220 = icmp eq i64 %219, 40
  br i1 %220, label %221, label %198, !llvm.loop !99

221:                                              ; preds = %218
  call void @llvm.lifetime.end.p0(i64 328, ptr nonnull %5) #11
  %222 = add nuw nsw i32 %182, 1
  %223 = load i32, ptr %172, align 8, !tbaa !95
  %224 = add nsw i32 %223, -1
  %225 = icmp slt i32 %222, %224
  br i1 %225, label %181, label %226, !llvm.loop !100

226:                                              ; preds = %221, %167
  call fastcc void @stroke_done(ptr noundef %0, ptr noundef %1)
  br label %227

227:                                              ; preds = %226, %96
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br i1 %95, label %228, label %652

228:                                              ; preds = %91, %227
  %229 = load i32, ptr %14, align 8, !tbaa !62
  %230 = and i32 %229, 545261824
  %231 = icmp eq i32 %230, 2048
  br i1 %231, label %232, label %241

232:                                              ; preds = %228
  %233 = icmp eq i32 %9, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %232
  %235 = getelementptr inbounds %struct.Brush, ptr %13, i64 0, i32 34
  %236 = load i8, ptr %235, align 8, !tbaa !73
  switch i8 %236, label %237 [
    i8 5, label %241
    i8 12, label %241
    i8 14, label %241
    i8 13, label %241
  ]

237:                                              ; preds = %234, %232
  %238 = call ptr @CTX_wm_manager(ptr noundef %0) #11
  %239 = call ptr @WM_paint_cursor_activate(ptr noundef %238, ptr noundef nonnull @paint_poll, ptr noundef nonnull @paint_draw_smooth_cursor, ptr noundef %11) #11
  %240 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 1
  store ptr %239, ptr %240, align 8, !tbaa !101
  br label %241

241:                                              ; preds = %228, %234, %234, %234, %234, %237
  store i8 1, ptr %88, align 4, !tbaa !88
  br label %242

242:                                              ; preds = %241, %87
  %243 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 13
  %244 = load i8, ptr %243, align 4, !tbaa !97
  %245 = icmp eq i8 %244, 0
  br i1 %245, label %246, label %278

246:                                              ; preds = %242
  %247 = load float, ptr %81, align 4, !tbaa !79
  %248 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 19
  store float %247, ptr %248, align 4, !tbaa !98
  %249 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 11
  %250 = load float, ptr %6, align 4, !tbaa !60
  store float %250, ptr %249, align 4, !tbaa !60
  %251 = load float, ptr %78, align 4, !tbaa !60
  %252 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 11, i64 1
  store float %251, ptr %252, align 4, !tbaa !60
  %253 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 24
  %254 = load ptr, ptr %253, align 8, !tbaa !50
  %255 = call zeroext i8 %254(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6) #11
  store i8 %255, ptr %243, align 4, !tbaa !97
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %278, label %257

257:                                              ; preds = %246
  %258 = load i32, ptr %14, align 8, !tbaa !62
  %259 = and i32 %258, 1
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %270, label %261

261:                                              ; preds = %257
  %262 = call ptr @CTX_wm_manager(ptr noundef %0) #11
  %263 = call ptr @CTX_wm_window(ptr noundef %0) #11
  %264 = load ptr, ptr %12, align 8, !tbaa !38
  %265 = getelementptr inbounds %struct.Brush, ptr %264, i64 0, i32 24
  %266 = load float, ptr %265, align 8, !tbaa !102
  %267 = fpext float %266 to double
  %268 = call ptr @WM_event_add_timer(ptr noundef %262, ptr noundef %263, i32 noundef 272, double noundef %267) #11
  %269 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 2
  store ptr %268, ptr %269, align 8, !tbaa !103
  br label %270

270:                                              ; preds = %261, %257
  %271 = load i32, ptr %14, align 8, !tbaa !62
  %272 = and i32 %271, 536870912
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %278, label %274

274:                                              ; preds = %270
  %275 = call ptr @CTX_wm_manager(ptr noundef %0) #11
  %276 = call ptr @WM_paint_cursor_activate(ptr noundef %275, ptr noundef nonnull @paint_poll, ptr noundef nonnull @paint_draw_line_cursor, ptr noundef %11) #11
  %277 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 1
  store ptr %276, ptr %277, align 8, !tbaa !101
  br label %278

278:                                              ; preds = %270, %274, %246, %242
  %279 = phi i1 [ true, %242 ], [ true, %246 ], [ false, %274 ], [ false, %270 ]
  %280 = load i16, ptr %84, align 8, !tbaa !85
  %281 = icmp eq i16 %280, 20514
  br i1 %281, label %282, label %294

282:                                              ; preds = %278
  %283 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %284 = load i16, ptr %283, align 2, !tbaa !104
  %285 = icmp eq i16 %284, 1
  br i1 %285, label %286, label %294

286:                                              ; preds = %282
  %287 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %288 = load ptr, ptr %287, align 8, !tbaa !105
  %289 = getelementptr inbounds %struct.wmOperatorType, ptr %288, i64 0, i32 7
  %290 = load ptr, ptr %289, align 8, !tbaa !106
  %291 = icmp eq ptr %290, null
  br i1 %291, label %293, label %292

292:                                              ; preds = %286
  call void %290(ptr noundef %0, ptr noundef %1) #11
  br label %652

293:                                              ; preds = %286
  call fastcc void @stroke_done(ptr noundef %0, ptr noundef %1)
  br label %652

294:                                              ; preds = %282, %278
  %295 = sext i16 %280 to i32
  %296 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 14
  %297 = load i32, ptr %296, align 8, !tbaa !54
  %298 = icmp ne i32 %297, %295
  %299 = or i1 %90, %298
  br i1 %299, label %362, label %300

300:                                              ; preds = %294
  %301 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %302 = load i16, ptr %301, align 2, !tbaa !104
  %303 = icmp eq i16 %302, 2
  br i1 %303, label %304, label %552

304:                                              ; preds = %300
  %305 = load ptr, ptr %12, align 8, !tbaa !38
  %306 = load i8, ptr %243, align 4, !tbaa !97
  %307 = icmp eq i8 %306, 0
  br i1 %307, label %361, label %308

308:                                              ; preds = %304
  %309 = getelementptr inbounds %struct.Brush, ptr %305, i64 0, i32 16
  %310 = load i32, ptr %309, align 8, !tbaa !62
  %311 = and i32 %310, 536870912
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %361, label %313

313:                                              ; preds = %308
  %314 = getelementptr inbounds %struct.Brush, ptr %305, i64 0, i32 21
  %315 = load i32, ptr %314, align 4, !tbaa !89
  %316 = and i32 %310, 262144
  %317 = icmp ne i32 %316, 0
  %318 = icmp slt i32 %315, 100
  %319 = select i1 %317, i1 %318, i1 false
  br i1 %319, label %320, label %354

320:                                              ; preds = %313
  %321 = sitofp i32 %315 to float
  %322 = fdiv float 1.000000e+02, %321
  %323 = fptosi float %322 to i32
  %324 = fdiv float %321, 5.000000e+01
  %325 = icmp sgt i32 %323, 0
  br label %326

326:                                              ; preds = %346, %320
  %327 = phi i32 [ 0, %320 ], [ %350, %346 ]
  %328 = phi float [ 0.000000e+00, %320 ], [ %349, %346 ]
  %329 = sitofp i32 %327 to float
  %330 = fmul float %329, 0x3FB99999A0000000
  %331 = fadd float %330, -1.000000e+00
  br i1 %325, label %332, label %346

332:                                              ; preds = %326, %342
  %333 = phi i32 [ %344, %342 ], [ 0, %326 ]
  %334 = phi float [ %343, %342 ], [ 0.000000e+00, %326 ]
  %335 = sitofp i32 %333 to float
  %336 = call float @llvm.fmuladd.f32(float %335, float %324, float %331)
  %337 = call float @llvm.fabs.f32(float %336)
  %338 = fcmp olt float %337, 1.000000e+00
  br i1 %338, label %339, label %342

339:                                              ; preds = %332
  %340 = call float @BKE_brush_curve_strength(ptr noundef %305, float noundef %337, float noundef 1.000000e+00) #11
  %341 = fadd float %334, %340
  br label %342

342:                                              ; preds = %339, %332
  %343 = phi float [ %341, %339 ], [ %334, %332 ]
  %344 = add nuw nsw i32 %333, 1
  %345 = icmp eq i32 %344, %323
  br i1 %345, label %346, label %332, !llvm.loop !93

346:                                              ; preds = %342, %326
  %347 = phi float [ 0.000000e+00, %326 ], [ %343, %342 ]
  %348 = fcmp ogt float %347, %328
  %349 = select i1 %348, float %347, float %328
  %350 = add nuw nsw i32 %327, 1
  %351 = icmp eq i32 %350, 10
  br i1 %351, label %352, label %326, !llvm.loop !94

352:                                              ; preds = %346
  %353 = fdiv float 1.000000e+00, %349
  br label %354

354:                                              ; preds = %313, %352
  %355 = phi float [ %353, %352 ], [ 1.000000e+00, %313 ]
  %356 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 6
  %357 = load ptr, ptr %356, align 8, !tbaa !55
  %358 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %357, i64 0, i32 13
  store float %355, ptr %358, align 8, !tbaa !67
  %359 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 11
  call fastcc void @paint_brush_stroke_add_step(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %359, float noundef 1.000000e+00)
  %360 = call fastcc i32 @paint_space_stroke(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, float noundef 1.000000e+00)
  br label %361

361:                                              ; preds = %304, %308, %354
  call fastcc void @stroke_done(ptr noundef %0, ptr noundef %1)
  br label %652

362:                                              ; preds = %294
  %363 = and i16 %280, -2
  %364 = icmp eq i16 %363, 220
  br i1 %364, label %365, label %423

365:                                              ; preds = %362
  %366 = load ptr, ptr %12, align 8, !tbaa !38
  %367 = load i8, ptr %243, align 4, !tbaa !97
  %368 = icmp eq i8 %367, 0
  br i1 %368, label %422, label %369

369:                                              ; preds = %365
  %370 = getelementptr inbounds %struct.Brush, ptr %366, i64 0, i32 16
  %371 = load i32, ptr %370, align 8, !tbaa !62
  %372 = and i32 %371, 536870912
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %422, label %374

374:                                              ; preds = %369
  %375 = getelementptr inbounds %struct.Brush, ptr %366, i64 0, i32 21
  %376 = load i32, ptr %375, align 4, !tbaa !89
  %377 = and i32 %371, 262144
  %378 = icmp ne i32 %377, 0
  %379 = icmp slt i32 %376, 100
  %380 = select i1 %378, i1 %379, i1 false
  br i1 %380, label %381, label %415

381:                                              ; preds = %374
  %382 = sitofp i32 %376 to float
  %383 = fdiv float 1.000000e+02, %382
  %384 = fptosi float %383 to i32
  %385 = fdiv float %382, 5.000000e+01
  %386 = icmp sgt i32 %384, 0
  br label %387

387:                                              ; preds = %407, %381
  %388 = phi i32 [ 0, %381 ], [ %411, %407 ]
  %389 = phi float [ 0.000000e+00, %381 ], [ %410, %407 ]
  %390 = sitofp i32 %388 to float
  %391 = fmul float %390, 0x3FB99999A0000000
  %392 = fadd float %391, -1.000000e+00
  br i1 %386, label %393, label %407

393:                                              ; preds = %387, %403
  %394 = phi i32 [ %405, %403 ], [ 0, %387 ]
  %395 = phi float [ %404, %403 ], [ 0.000000e+00, %387 ]
  %396 = sitofp i32 %394 to float
  %397 = call float @llvm.fmuladd.f32(float %396, float %385, float %392)
  %398 = call float @llvm.fabs.f32(float %397)
  %399 = fcmp olt float %398, 1.000000e+00
  br i1 %399, label %400, label %403

400:                                              ; preds = %393
  %401 = call float @BKE_brush_curve_strength(ptr noundef %366, float noundef %398, float noundef 1.000000e+00) #11
  %402 = fadd float %395, %401
  br label %403

403:                                              ; preds = %400, %393
  %404 = phi float [ %402, %400 ], [ %395, %393 ]
  %405 = add nuw nsw i32 %394, 1
  %406 = icmp eq i32 %405, %384
  br i1 %406, label %407, label %393, !llvm.loop !93

407:                                              ; preds = %403, %387
  %408 = phi float [ 0.000000e+00, %387 ], [ %404, %403 ]
  %409 = fcmp ogt float %408, %389
  %410 = select i1 %409, float %408, float %389
  %411 = add nuw nsw i32 %388, 1
  %412 = icmp eq i32 %411, 10
  br i1 %412, label %413, label %387, !llvm.loop !94

413:                                              ; preds = %407
  %414 = fdiv float 1.000000e+00, %410
  br label %415

415:                                              ; preds = %374, %413
  %416 = phi float [ %414, %413 ], [ 1.000000e+00, %374 ]
  %417 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 6
  %418 = load ptr, ptr %417, align 8, !tbaa !55
  %419 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %418, i64 0, i32 13
  store float %416, ptr %419, align 8, !tbaa !67
  %420 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 11
  call fastcc void @paint_brush_stroke_add_step(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %420, float noundef 1.000000e+00)
  %421 = call fastcc i32 @paint_space_stroke(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, float noundef 1.000000e+00)
  br label %422

422:                                              ; preds = %365, %369, %415
  call fastcc void @stroke_done(ptr noundef %0, ptr noundef %1)
  br label %652

423:                                              ; preds = %362
  %424 = load i32, ptr %14, align 8, !tbaa !62
  %425 = and i32 %424, 536870912
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %444, label %427

427:                                              ; preds = %423
  %428 = load i8, ptr %243, align 4, !tbaa !97
  %429 = icmp eq i8 %428, 0
  br i1 %429, label %444, label %430

430:                                              ; preds = %427
  br i1 %90, label %432, label %431

431:                                              ; preds = %430
  switch i16 %280, label %444 [
    i16 17, label %432
    i16 4, label %432
  ]

432:                                              ; preds = %431, %431, %430
  %433 = and i32 %424, 128
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %552, label %435

435:                                              ; preds = %432
  %436 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 6
  %437 = load ptr, ptr %436, align 8, !tbaa !55
  %438 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %437, i64 0, i32 7
  %439 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 11
  %440 = load float, ptr %439, align 4, !tbaa !60
  store float %440, ptr %438, align 4, !tbaa !60
  %441 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 11, i64 1
  %442 = load float, ptr %441, align 4, !tbaa !60
  %443 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %437, i64 0, i32 7, i64 1
  store float %442, ptr %443, align 4, !tbaa !60
  call void @paint_calculate_rake_rotation(ptr noundef %437, ptr noundef nonnull %6) #11
  br label %552

444:                                              ; preds = %431, %427, %423
  br i1 %90, label %460, label %445

445:                                              ; preds = %444
  %446 = and i32 %424, 1
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %452, label %448

448:                                              ; preds = %445
  switch i16 %280, label %449 [
    i16 4, label %460
    i16 17, label %460
  ]

449:                                              ; preds = %448
  %450 = icmp eq i16 %280, 272
  %451 = and i1 %450, %447
  br i1 %451, label %454, label %552

452:                                              ; preds = %445
  %453 = icmp eq i16 %280, 272
  br i1 %453, label %454, label %552

454:                                              ; preds = %449, %452
  %455 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %456 = load ptr, ptr %455, align 8, !tbaa !109
  %457 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 2
  %458 = load ptr, ptr %457, align 8, !tbaa !103
  %459 = icmp eq ptr %456, %458
  br i1 %459, label %460, label %552

460:                                              ; preds = %448, %448, %454, %444
  %461 = load ptr, ptr %12, align 8, !tbaa !38
  %462 = getelementptr inbounds %struct.Brush, ptr %461, i64 0, i32 16
  %463 = load i32, ptr %462, align 8, !tbaa !62
  %464 = and i32 %463, 545261824
  %465 = icmp eq i32 %464, 2048
  br i1 %465, label %466, label %506

466:                                              ; preds = %460
  %467 = icmp eq i32 %9, 0
  br i1 %467, label %468, label %471

468:                                              ; preds = %466
  %469 = getelementptr inbounds %struct.Brush, ptr %461, i64 0, i32 34
  %470 = load i8, ptr %469, align 8, !tbaa !73
  switch i8 %470, label %471 [
    i8 5, label %506
    i8 12, label %506
    i8 14, label %506
    i8 13, label %506
  ]

471:                                              ; preds = %468, %466
  %472 = getelementptr inbounds %struct.Brush, ptr %461, i64 0, i32 22
  %473 = load i32, ptr %472, align 8, !tbaa !110
  %474 = sitofp i32 %473 to float
  %475 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 21
  %476 = load float, ptr %475, align 4, !tbaa !61
  %477 = fmul float %476, %474
  %478 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 11
  %479 = load float, ptr %478, align 8, !tbaa !60
  %480 = load float, ptr %6, align 4, !tbaa !60
  %481 = fsub float %479, %480
  %482 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 11, i64 1
  %483 = load float, ptr %482, align 4, !tbaa !60
  %484 = load float, ptr %78, align 4, !tbaa !60
  %485 = fsub float %483, %484
  %486 = fmul float %485, %485
  %487 = call float @llvm.fmuladd.f32(float %481, float %481, float %486)
  %488 = fmul float %477, %477
  %489 = fcmp uge float %487, %488
  br i1 %489, label %490, label %504

490:                                              ; preds = %471
  %491 = getelementptr inbounds %struct.Brush, ptr %461, i64 0, i32 23
  %492 = load float, ptr %491, align 4, !tbaa !111
  %493 = fsub float 1.000000e+00, %492
  %494 = fmul float %479, %492
  %495 = call float @llvm.fmuladd.f32(float %480, float %493, float %494)
  store float %495, ptr %7, align 4, !tbaa !60
  %496 = fmul float %483, %492
  %497 = call float @llvm.fmuladd.f32(float %484, float %493, float %496)
  %498 = getelementptr inbounds float, ptr %7, i64 1
  store float %497, ptr %498, align 4, !tbaa !60
  %499 = load float, ptr %81, align 4, !tbaa !79
  %500 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 19
  %501 = load float, ptr %500, align 4, !tbaa !98
  %502 = fmul float %492, %501
  %503 = call float @llvm.fmuladd.f32(float %499, float %493, float %502)
  br label %504

504:                                              ; preds = %490, %471
  %505 = phi float [ %503, %490 ], [ %22, %471 ]
  br i1 %489, label %511, label %512

506:                                              ; preds = %460, %468, %468, %468, %468
  %507 = load float, ptr %6, align 4, !tbaa !60
  store float %507, ptr %7, align 4, !tbaa !60
  %508 = load float, ptr %78, align 4, !tbaa !60
  %509 = getelementptr inbounds float, ptr %7, i64 1
  store float %508, ptr %509, align 4, !tbaa !60
  %510 = load float, ptr %81, align 4, !tbaa !79
  br label %512

511:                                              ; preds = %504
  br label %512

512:                                              ; preds = %506, %504, %511
  %513 = phi float [ %505, %504 ], [ %510, %506 ], [ %505, %511 ]
  %514 = phi i1 [ true, %504 ], [ false, %506 ], [ false, %511 ]
  br i1 %514, label %552, label %515

515:                                              ; preds = %512
  %516 = load i8, ptr %243, align 4, !tbaa !97
  %517 = icmp eq i8 %516, 0
  br i1 %517, label %552, label %518

518:                                              ; preds = %515
  %519 = and i32 %424, 1280
  %520 = icmp eq i32 %519, 1024
  br i1 %520, label %521, label %536

521:                                              ; preds = %518
  switch i32 %9, label %532 [
    i32 0, label %522
    i32 4, label %525
    i32 3, label %525
  ]

522:                                              ; preds = %521
  %523 = getelementptr inbounds %struct.Brush, ptr %13, i64 0, i32 34
  %524 = load i8, ptr %523, align 8, !tbaa !73
  switch i8 %524, label %532 [
    i8 5, label %536
    i8 12, label %536
    i8 14, label %536
    i8 13, label %536
  ]

525:                                              ; preds = %521, %521
  %526 = getelementptr inbounds %struct.Brush, ptr %13, i64 0, i32 36
  %527 = load i8, ptr %526, align 2, !tbaa !74
  %528 = icmp ne i8 %527, 4
  %529 = and i32 %424, 2097152
  %530 = icmp eq i32 %529, 0
  %531 = or i1 %530, %528
  br i1 %531, label %532, label %536

532:                                              ; preds = %525, %522, %521
  %533 = call fastcc i32 @paint_space_stroke(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7, float noundef %513)
  %534 = icmp ne i32 %533, 0
  %535 = zext i1 %534 to i8
  br label %552

536:                                              ; preds = %525, %522, %522, %522, %522, %518
  %537 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 11
  %538 = load float, ptr %7, align 4, !tbaa !60
  %539 = load float, ptr %537, align 4, !tbaa !60
  %540 = fsub float %538, %539
  %541 = getelementptr inbounds float, ptr %7, i64 1
  %542 = load float, ptr %541, align 4, !tbaa !60
  %543 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 11, i64 1
  %544 = load float, ptr %543, align 4, !tbaa !60
  %545 = fsub float %542, %544
  %546 = fmul float %545, %545
  %547 = call float @llvm.fmuladd.f32(float %540, float %540, float %546)
  %548 = call float @sqrtf(float noundef %547) #11
  %549 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 12
  %550 = load float, ptr %549, align 8, !tbaa !112
  %551 = fadd float %548, %550
  store float %551, ptr %549, align 8, !tbaa !112
  call fastcc void @paint_brush_stroke_add_step(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7, float noundef %513)
  br label %552

552:                                              ; preds = %532, %449, %452, %454, %515, %536, %512, %432, %435, %300
  %553 = phi i8 [ 0, %435 ], [ 0, %432 ], [ 1, %536 ], [ 0, %515 ], [ 0, %512 ], [ 0, %454 ], [ 0, %452 ], [ 0, %449 ], [ 0, %300 ], [ %535, %532 ]
  br i1 %279, label %631, label %554

554:                                              ; preds = %552
  %555 = load i32, ptr %14, align 8, !tbaa !62
  %556 = and i32 %555, 1024
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %631, label %558

558:                                              ; preds = %554
  %559 = and i32 %555, 256
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %561, label %579

561:                                              ; preds = %558
  switch i32 %9, label %573 [
    i32 0, label %562
    i32 4, label %566
    i32 3, label %566
  ]

562:                                              ; preds = %561
  %563 = getelementptr inbounds %struct.Brush, ptr %13, i64 0, i32 34
  %564 = load i8, ptr %563, align 8, !tbaa !73
  %565 = icmp ult i8 %564, 15
  br i1 %565, label %574, label %573

566:                                              ; preds = %561, %561
  %567 = getelementptr inbounds %struct.Brush, ptr %13, i64 0, i32 36
  %568 = load i8, ptr %567, align 2, !tbaa !74
  %569 = icmp ne i8 %568, 4
  %570 = and i32 %555, 2097152
  %571 = icmp eq i32 %570, 0
  %572 = or i1 %571, %569
  br i1 %572, label %573, label %579

573:                                              ; preds = %562, %566, %561
  br label %579

574:                                              ; preds = %562
  %575 = zext nneg i8 %564 to i15
  %576 = lshr i15 4063, %575
  %577 = and i15 %576, 1
  %578 = icmp ne i15 %577, 0
  br label %579

579:                                              ; preds = %574, %558, %566, %573
  %580 = phi i1 [ true, %573 ], [ false, %558 ], [ false, %566 ], [ %578, %574 ]
  %581 = and i32 %555, 2048
  %582 = icmp eq i32 %581, 0
  %583 = and i1 %582, %580
  br i1 %583, label %584, label %631

584:                                              ; preds = %579
  %585 = getelementptr inbounds %struct.Brush, ptr %13, i64 0, i32 21
  %586 = load i32, ptr %585, align 4, !tbaa !89
  %587 = and i32 %555, 262144
  %588 = icmp ne i32 %587, 0
  %589 = icmp slt i32 %586, 100
  %590 = select i1 %588, i1 %589, i1 false
  br i1 %590, label %591, label %625

591:                                              ; preds = %584
  %592 = sitofp i32 %586 to float
  %593 = fdiv float 1.000000e+02, %592
  %594 = fptosi float %593 to i32
  %595 = fdiv float %592, 5.000000e+01
  %596 = icmp sgt i32 %594, 0
  br label %597

597:                                              ; preds = %617, %591
  %598 = phi i32 [ 0, %591 ], [ %621, %617 ]
  %599 = phi float [ 0.000000e+00, %591 ], [ %620, %617 ]
  %600 = sitofp i32 %598 to float
  %601 = fmul float %600, 0x3FB99999A0000000
  %602 = fadd float %601, -1.000000e+00
  br i1 %596, label %603, label %617

603:                                              ; preds = %597, %613
  %604 = phi i32 [ %615, %613 ], [ 0, %597 ]
  %605 = phi float [ %614, %613 ], [ 0.000000e+00, %597 ]
  %606 = sitofp i32 %604 to float
  %607 = call float @llvm.fmuladd.f32(float %606, float %595, float %602)
  %608 = call float @llvm.fabs.f32(float %607)
  %609 = fcmp olt float %608, 1.000000e+00
  br i1 %609, label %610, label %613

610:                                              ; preds = %603
  %611 = call float @BKE_brush_curve_strength(ptr noundef %13, float noundef %608, float noundef 1.000000e+00) #11
  %612 = fadd float %605, %611
  br label %613

613:                                              ; preds = %610, %603
  %614 = phi float [ %612, %610 ], [ %605, %603 ]
  %615 = add nuw nsw i32 %604, 1
  %616 = icmp eq i32 %615, %594
  br i1 %616, label %617, label %603, !llvm.loop !93

617:                                              ; preds = %613, %597
  %618 = phi float [ 0.000000e+00, %597 ], [ %614, %613 ]
  %619 = fcmp ogt float %618, %599
  %620 = select i1 %619, float %618, float %599
  %621 = add nuw nsw i32 %598, 1
  %622 = icmp eq i32 %621, 10
  br i1 %622, label %623, label %597, !llvm.loop !94

623:                                              ; preds = %617
  %624 = fdiv float 1.000000e+00, %620
  br label %625

625:                                              ; preds = %584, %623
  %626 = phi float [ %624, %623 ], [ 1.000000e+00, %584 ]
  %627 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 6
  %628 = load ptr, ptr %627, align 8, !tbaa !55
  %629 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %628, i64 0, i32 13
  store float %626, ptr %629, align 8, !tbaa !67
  %630 = load float, ptr %81, align 4, !tbaa !79
  call fastcc void @paint_brush_stroke_add_step(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, float noundef %630)
  br label %631

631:                                              ; preds = %554, %625, %579, %552
  %632 = phi i8 [ 1, %625 ], [ %553, %579 ], [ %553, %552 ], [ %553, %554 ]
  %633 = load i16, ptr %84, align 8, !tbaa !85
  %634 = icmp eq i16 %633, 17
  br i1 %634, label %652, label %635

635:                                              ; preds = %631
  %636 = call ptr @CTX_wm_window(ptr noundef %0) #11
  %637 = call ptr @CTX_wm_region(ptr noundef %0) #11
  %638 = icmp eq ptr %637, null
  br i1 %638, label %645, label %639

639:                                              ; preds = %635
  %640 = getelementptr inbounds %struct.Paint, ptr %8, i64 0, i32 4
  %641 = load i32, ptr %640, align 4, !tbaa !113
  %642 = and i32 %641, 1
  %643 = icmp eq i32 %642, 0
  br i1 %643, label %645, label %644

644:                                              ; preds = %639
  call void @WM_paint_cursor_tag_redraw(ptr noundef %636, ptr noundef nonnull %637) #11
  br label %645

645:                                              ; preds = %644, %639, %635
  %646 = icmp eq i8 %632, 0
  br i1 %646, label %652, label %647

647:                                              ; preds = %645
  %648 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 26
  %649 = load ptr, ptr %648, align 8, !tbaa !52
  %650 = icmp eq ptr %649, null
  br i1 %650, label %652, label %651

651:                                              ; preds = %647
  call void %649(ptr noundef %0, ptr noundef %11, i8 noundef zeroext 0) #11
  br label %652

652:                                              ; preds = %631, %651, %647, %645, %292, %293, %227, %73, %422, %361
  %653 = phi i32 [ 4, %422 ], [ 4, %361 ], [ 8, %73 ], [ 4, %227 ], [ 2, %293 ], [ 2, %292 ], [ 1, %645 ], [ 1, %647 ], [ 1, %651 ], [ 1, %631 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  ret i32 %653
}

declare i32 @BKE_paintmode_get_active_from_context(ptr noundef) local_unnamed_addr #2

declare float @WM_event_tablet_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @WM_paint_cursor_activate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @paint_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #11
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #11
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #11
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %6 = icmp ne ptr %2, null
  %7 = icmp ne ptr %3, null
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %29

9:                                                ; preds = %1
  %10 = tail call ptr @BKE_paint_brush(ptr noundef nonnull %2) #11
  %11 = icmp ne ptr %10, null
  %12 = icmp ne ptr %4, null
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %29

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 8
  %16 = load i8, ptr %15, align 8, !tbaa !114
  %17 = icmp eq i8 %16, 1
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = icmp eq i8 %16, 6
  %20 = icmp ne ptr %5, null
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %24, label %29

22:                                               ; preds = %14
  %23 = icmp eq ptr %5, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %18, %22
  %25 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 8
  %26 = load i16, ptr %25, align 2, !tbaa !117
  %27 = icmp eq i16 %26, 0
  %28 = zext i1 %27 to i32
  br label %29

29:                                               ; preds = %22, %24, %18, %9, %1
  %30 = phi i32 [ 0, %18 ], [ 0, %9 ], [ 0, %1 ], [ 0, %22 ], [ %28, %24 ]
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal void @paint_draw_smooth_cursor(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly %3) #0 {
  %5 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #11
  %6 = tail call ptr @BKE_paint_brush(ptr noundef %5) #11
  %7 = icmp ne ptr %3, null
  %8 = icmp ne ptr %6, null
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %10, label %18

10:                                               ; preds = %4
  tail call void @glEnable(i32 noundef 2848) #11
  tail call void @glEnable(i32 noundef 3042) #11
  %11 = getelementptr inbounds %struct.Paint, ptr %5, i64 0, i32 3
  tail call void @glColor4ubv(ptr noundef nonnull %11) #11
  %12 = getelementptr inbounds %struct.PaintStroke, ptr %3, i64 0, i32 11
  %13 = load float, ptr %12, align 8, !tbaa !60
  %14 = fptosi float %13 to i32
  %15 = getelementptr inbounds %struct.PaintStroke, ptr %3, i64 0, i32 11, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !60
  %17 = fptosi float %16 to i32
  tail call void @sdrawline(i32 noundef %1, i32 noundef %2, i32 noundef %14, i32 noundef %17) #11
  tail call void @glDisable(i32 noundef 3042) #11
  tail call void @glDisable(i32 noundef 2848) #11
  br label %18

18:                                               ; preds = %10, %4
  ret void
}

declare ptr @WM_event_add_timer(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #2

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @paint_draw_line_cursor(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #11
  tail call void @glEnable(i32 noundef 2848) #11
  tail call void @glEnable(i32 noundef 3042) #11
  tail call void @glEnable(i32 noundef 2852) #11
  tail call void @glLineStipple(i32 noundef 3, i16 noundef zeroext -21846) #11
  %6 = getelementptr inbounds %struct.Paint, ptr %5, i64 0, i32 3, i64 3
  %7 = load i8, ptr %6, align 1, !tbaa !121
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %7) #11
  tail call void @glLineWidth(float noundef 3.000000e+00) #11
  %8 = getelementptr inbounds %struct.PaintStroke, ptr %3, i64 0, i32 11
  %9 = load float, ptr %8, align 8, !tbaa !60
  %10 = fptosi float %9 to i32
  %11 = getelementptr inbounds %struct.PaintStroke, ptr %3, i64 0, i32 11, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !60
  %13 = fptosi float %12 to i32
  tail call void @sdrawline(i32 noundef %10, i32 noundef %13, i32 noundef %1, i32 noundef %2) #11
  %14 = load i8, ptr %6, align 1, !tbaa !121
  tail call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext %14) #11
  tail call void @glLineWidth(float noundef 1.000000e+00) #11
  %15 = load float, ptr %8, align 8, !tbaa !60
  %16 = fptosi float %15 to i32
  %17 = load float, ptr %11, align 4, !tbaa !60
  %18 = fptosi float %17 to i32
  tail call void @sdrawline(i32 noundef %16, i32 noundef %18, i32 noundef %1, i32 noundef %2) #11
  tail call void @glDisable(i32 noundef 2852) #11
  tail call void @glDisable(i32 noundef 3042) #11
  tail call void @glDisable(i32 noundef 2848) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @paint_stroke_cancel(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @stroke_done(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @stroke_done(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = getelementptr inbounds %struct.PaintStroke, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %6, i64 0, i32 9
  store i32 0, ptr %7, align 8, !tbaa !122
  %8 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %6, i64 0, i32 15
  store i32 0, ptr %8, align 4, !tbaa !69
  %9 = getelementptr inbounds %struct.PaintStroke, ptr %4, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  %11 = getelementptr inbounds %struct.Brush, ptr %10, i64 0, i32 16
  %12 = load i32, ptr %11, align 8, !tbaa !62
  %13 = and i32 %12, 128
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %6, i64 0, i32 8
  store float 0.000000e+00, ptr %16, align 4, !tbaa !123
  br label %17

17:                                               ; preds = %15, %2
  %18 = getelementptr inbounds %struct.PaintStroke, ptr %4, i64 0, i32 13
  %19 = load i8, ptr %18, align 4, !tbaa !97
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.PaintStroke, ptr %4, i64 0, i32 26
  %23 = load ptr, ptr %22, align 8, !tbaa !52
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void %23(ptr noundef %0, ptr noundef %4, i8 noundef zeroext 1) #11
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %struct.PaintStroke, ptr %4, i64 0, i32 27
  %28 = load ptr, ptr %27, align 8, !tbaa !53
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void %28(ptr noundef %0, ptr noundef %4) #11
  br label %31

31:                                               ; preds = %26, %30, %17
  %32 = getelementptr inbounds %struct.PaintStroke, ptr %4, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !103
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = tail call ptr @CTX_wm_manager(ptr noundef %0) #11
  %37 = tail call ptr @CTX_wm_window(ptr noundef %0) #11
  %38 = load ptr, ptr %32, align 8, !tbaa !103
  tail call void @WM_event_remove_timer(ptr noundef %36, ptr noundef %37, ptr noundef %38) #11
  br label %39

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %struct.PaintStroke, ptr %4, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !101
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = tail call ptr @CTX_wm_manager(ptr noundef %0) #11
  %45 = load ptr, ptr %40, align 8, !tbaa !101
  tail call void @WM_paint_cursor_end(ptr noundef %44, ptr noundef %45) #11
  br label %46

46:                                               ; preds = %43, %39
  %47 = getelementptr inbounds %struct.PaintStroke, ptr %4, i64 0, i32 7
  tail call void @BLI_freelistN(ptr noundef nonnull %47) #11
  tail call void @BKE_paint_set_overlay_override(i32 noundef 0) #11
  %48 = load ptr, ptr %3, align 8, !tbaa !72
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %51(ptr noundef nonnull %48) #11
  store ptr null, ptr %3, align 8, !tbaa !72
  br label %52

52:                                               ; preds = %46, %50
  ret void
}

declare void @paint_calculate_rake_rotation(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @paint_space_stroke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = getelementptr inbounds %struct.PaintStroke, ptr %8, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %11 = getelementptr inbounds %struct.PaintStroke, ptr %8, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  %13 = tail call i32 @BKE_brush_size_get(ptr noundef %6, ptr noundef %12) #11
  %14 = sitofp i32 %13 to float
  %15 = fcmp olt float %14, 1.000000e+00
  %16 = select i1 %15, float 1.000000e+00, float %14
  %17 = load ptr, ptr %11, align 8, !tbaa !38
  %18 = getelementptr inbounds %struct.Brush, ptr %17, i64 0, i32 21
  %19 = load i32, ptr %18, align 4, !tbaa !89
  %20 = sitofp i32 %19 to float
  %21 = getelementptr inbounds %struct.Brush, ptr %17, i64 0, i32 16
  %22 = load i32, ptr %21, align 8, !tbaa !62
  %23 = and i32 %22, 32
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, float 1.000000e+00, float 5.000000e-01
  %26 = fmul float %25, %20
  %27 = getelementptr inbounds %struct.PaintStroke, ptr %8, i64 0, i32 21
  %28 = load float, ptr %27, align 4, !tbaa !61
  %29 = fmul float %28, %26
  %30 = fmul float %16, %29
  %31 = fdiv float %30, 5.000000e+01
  %32 = fcmp olt float %31, 1.000000e+00
  %33 = select i1 %32, float 1.000000e+00, float %31
  %34 = getelementptr inbounds %struct.PaintStroke, ptr %8, i64 0, i32 11
  %35 = load float, ptr %2, align 4, !tbaa !60
  %36 = load float, ptr %34, align 4, !tbaa !60
  %37 = fsub float %35, %36
  %38 = getelementptr inbounds float, ptr %2, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !60
  %40 = getelementptr inbounds %struct.PaintStroke, ptr %8, i64 0, i32 11, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !60
  %42 = fsub float %39, %41
  %43 = getelementptr inbounds %struct.PaintStroke, ptr %8, i64 0, i32 19
  %44 = load float, ptr %43, align 4, !tbaa !98
  %45 = fsub float %3, %44
  %46 = fmul float %42, %42
  %47 = tail call float @llvm.fmuladd.f32(float %37, float %37, float %46)
  %48 = fcmp ogt float %47, 0x38AA95A5C0000000
  br i1 %48, label %49, label %54

49:                                               ; preds = %4
  %50 = tail call float @sqrtf(float noundef %47) #11
  %51 = fdiv float 1.000000e+00, %50
  %52 = fmul float %37, %51
  %53 = fmul float %42, %51
  br label %54

54:                                               ; preds = %4, %49
  %55 = phi float [ %52, %49 ], [ 0.000000e+00, %4 ]
  %56 = phi float [ %53, %49 ], [ 0.000000e+00, %4 ]
  %57 = phi float [ %50, %49 ], [ 0.000000e+00, %4 ]
  %58 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %59 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %10, i64 0, i32 13
  %60 = getelementptr inbounds %struct.PaintStroke, ptr %8, i64 0, i32 12
  br label %61

61:                                               ; preds = %212, %54
  %62 = phi float [ %45, %54 ], [ %213, %212 ]
  %63 = phi float [ %57, %54 ], [ %214, %212 ]
  %64 = phi float [ %44, %54 ], [ %215, %212 ]
  %65 = phi i32 [ 0, %54 ], [ %216, %212 ]
  %66 = fcmp ogt float %63, 0.000000e+00
  br i1 %66, label %67, label %217

67:                                               ; preds = %61
  %68 = load ptr, ptr %11, align 8, !tbaa !38
  %69 = call i32 @BKE_brush_use_size_pressure(ptr noundef %6, ptr noundef %68) #11
  %70 = icmp eq i32 %69, 0
  %71 = load ptr, ptr %11, align 8, !tbaa !38
  %72 = call i32 @BKE_brush_size_get(ptr noundef %6, ptr noundef %71) #11
  %73 = sitofp i32 %72 to float
  %74 = fcmp olt float %73, 1.000000e+00
  %75 = select i1 %74, float 1.000000e+00, float %73
  %76 = load ptr, ptr %11, align 8, !tbaa !38
  %77 = getelementptr inbounds %struct.Brush, ptr %76, i64 0, i32 21
  %78 = load i32, ptr %77, align 4, !tbaa !89
  %79 = sitofp i32 %78 to float
  %80 = getelementptr inbounds %struct.Brush, ptr %76, i64 0, i32 16
  %81 = load i32, ptr %80, align 8, !tbaa !62
  %82 = and i32 %81, 32
  %83 = icmp eq i32 %82, 0
  %84 = fsub float 1.500000e+00, %64
  %85 = select i1 %83, float 1.000000e+00, float %84
  %86 = fmul float %85, %79
  %87 = load float, ptr %27, align 4, !tbaa !61
  %88 = fmul float %87, %86
  %89 = fmul float %75, %88
  %90 = fdiv float %89, 5.000000e+01
  %91 = fcmp olt float %90, 1.000000e+00
  %92 = select i1 %91, float 1.000000e+00, float %90
  br i1 %70, label %146, label %93

93:                                               ; preds = %67
  %94 = fmul float %62, %92
  %95 = fmul float %63, 2.000000e+00
  %96 = fdiv float %94, %95
  %97 = fadd float %96, 1.000000e+00
  %98 = fsub float 1.000000e+00, %96
  %99 = fdiv float %97, %98
  %100 = load float, ptr %43, align 4, !tbaa !98
  %101 = fmul float %100, %99
  %102 = call i32 @BKE_brush_size_get(ptr noundef %6, ptr noundef %76) #11
  %103 = sitofp i32 %102 to float
  %104 = fmul float %100, %103
  %105 = fcmp olt float %104, 1.000000e+00
  %106 = select i1 %105, float 1.000000e+00, float %104
  %107 = load ptr, ptr %11, align 8, !tbaa !38
  %108 = getelementptr inbounds %struct.Brush, ptr %107, i64 0, i32 21
  %109 = load i32, ptr %108, align 4, !tbaa !89
  %110 = sitofp i32 %109 to float
  %111 = getelementptr inbounds %struct.Brush, ptr %107, i64 0, i32 16
  %112 = load i32, ptr %111, align 8, !tbaa !62
  %113 = and i32 %112, 32
  %114 = icmp eq i32 %113, 0
  %115 = select i1 %114, float 1.000000e+00, float %84
  %116 = fmul float %115, %110
  %117 = load float, ptr %27, align 4, !tbaa !61
  %118 = fmul float %117, %116
  %119 = fmul float %106, %118
  %120 = fdiv float %119, 5.000000e+01
  %121 = fcmp olt float %120, 1.000000e+00
  %122 = select i1 %121, float 1.000000e+00, float %120
  %123 = call i32 @BKE_brush_size_get(ptr noundef %6, ptr noundef %107) #11
  %124 = sitofp i32 %123 to float
  %125 = fmul float %101, %124
  %126 = fcmp olt float %125, 1.000000e+00
  %127 = select i1 %126, float 1.000000e+00, float %125
  %128 = load ptr, ptr %11, align 8, !tbaa !38
  %129 = getelementptr inbounds %struct.Brush, ptr %128, i64 0, i32 21
  %130 = load i32, ptr %129, align 4, !tbaa !89
  %131 = sitofp i32 %130 to float
  %132 = getelementptr inbounds %struct.Brush, ptr %128, i64 0, i32 16
  %133 = load i32, ptr %132, align 8, !tbaa !62
  %134 = and i32 %133, 32
  %135 = icmp eq i32 %134, 0
  %136 = select i1 %135, float 1.000000e+00, float %84
  %137 = fmul float %136, %131
  %138 = load float, ptr %27, align 4, !tbaa !61
  %139 = fmul float %138, %137
  %140 = fmul float %139, %127
  %141 = fdiv float %140, 5.000000e+01
  %142 = fcmp olt float %141, 1.000000e+00
  %143 = select i1 %142, float 1.000000e+00, float %141
  %144 = fadd float %122, %143
  %145 = fmul float %144, 5.000000e-01
  br label %146

146:                                              ; preds = %67, %93
  %147 = phi float [ %145, %93 ], [ %92, %67 ]
  %148 = fcmp oge float %63, %147
  br i1 %148, label %149, label %212

149:                                              ; preds = %146
  %150 = load float, ptr %34, align 8, !tbaa !60
  %151 = call float @llvm.fmuladd.f32(float %55, float %147, float %150)
  store float %151, ptr %5, align 4, !tbaa !60
  %152 = load float, ptr %40, align 4, !tbaa !60
  %153 = call float @llvm.fmuladd.f32(float %56, float %147, float %152)
  store float %153, ptr %58, align 4, !tbaa !60
  %154 = load float, ptr %43, align 4, !tbaa !98
  %155 = fdiv float %147, %63
  %156 = call float @llvm.fmuladd.f32(float %155, float %62, float %154)
  %157 = load ptr, ptr %11, align 8, !tbaa !38
  %158 = getelementptr inbounds %struct.Brush, ptr %157, i64 0, i32 21
  %159 = load i32, ptr %158, align 4, !tbaa !89
  %160 = getelementptr inbounds %struct.Brush, ptr %157, i64 0, i32 16
  %161 = load i32, ptr %160, align 8, !tbaa !62
  %162 = and i32 %161, 262144
  %163 = icmp ne i32 %162, 0
  %164 = icmp slt i32 %159, 100
  %165 = select i1 %163, i1 %164, i1 false
  br i1 %165, label %166, label %202

166:                                              ; preds = %149
  %167 = fdiv float %147, %33
  %168 = sitofp i32 %159 to float
  %169 = fmul float %167, %168
  %170 = fdiv float 1.000000e+02, %169
  %171 = fptosi float %170 to i32
  %172 = fdiv float %169, 5.000000e+01
  %173 = icmp sgt i32 %171, 0
  br label %174

174:                                              ; preds = %194, %166
  %175 = phi i32 [ 0, %166 ], [ %198, %194 ]
  %176 = phi float [ 0.000000e+00, %166 ], [ %197, %194 ]
  %177 = sitofp i32 %175 to float
  %178 = fmul float %177, 0x3FB99999A0000000
  %179 = fadd float %178, -1.000000e+00
  br i1 %173, label %180, label %194

180:                                              ; preds = %174, %190
  %181 = phi i32 [ %192, %190 ], [ 0, %174 ]
  %182 = phi float [ %191, %190 ], [ 0.000000e+00, %174 ]
  %183 = sitofp i32 %181 to float
  %184 = call float @llvm.fmuladd.f32(float %183, float %172, float %179)
  %185 = call float @llvm.fabs.f32(float %184)
  %186 = fcmp olt float %185, 1.000000e+00
  br i1 %186, label %187, label %190

187:                                              ; preds = %180
  %188 = call float @BKE_brush_curve_strength(ptr noundef %157, float noundef %185, float noundef 1.000000e+00) #11
  %189 = fadd float %182, %188
  br label %190

190:                                              ; preds = %187, %180
  %191 = phi float [ %189, %187 ], [ %182, %180 ]
  %192 = add nuw nsw i32 %181, 1
  %193 = icmp eq i32 %192, %171
  br i1 %193, label %194, label %180, !llvm.loop !93

194:                                              ; preds = %190, %174
  %195 = phi float [ 0.000000e+00, %174 ], [ %191, %190 ]
  %196 = fcmp ogt float %195, %176
  %197 = select i1 %196, float %195, float %176
  %198 = add nuw nsw i32 %175, 1
  %199 = icmp eq i32 %198, 10
  br i1 %199, label %200, label %174, !llvm.loop !94

200:                                              ; preds = %194
  %201 = fdiv float 1.000000e+00, %197
  br label %202

202:                                              ; preds = %149, %200
  %203 = phi float [ %201, %200 ], [ 1.000000e+00, %149 ]
  store float %203, ptr %59, align 8, !tbaa !67
  %204 = load float, ptr %27, align 4, !tbaa !61
  %205 = fdiv float %147, %204
  %206 = load float, ptr %60, align 8, !tbaa !112
  %207 = fadd float %206, %205
  store float %207, ptr %60, align 8, !tbaa !112
  call fastcc void @paint_brush_stroke_add_step(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, float noundef %156)
  %208 = fsub float %63, %147
  %209 = load float, ptr %43, align 4, !tbaa !98
  %210 = fsub float %3, %209
  %211 = add nsw i32 %65, 1
  br label %212

212:                                              ; preds = %146, %202
  %213 = phi float [ %210, %202 ], [ %62, %146 ]
  %214 = phi float [ %208, %202 ], [ %63, %146 ]
  %215 = phi float [ %209, %202 ], [ %64, %146 ]
  %216 = phi i32 [ %211, %202 ], [ %65, %146 ]
  br i1 %148, label %61, label %217

217:                                              ; preds = %212, %61
  %218 = phi i32 [ %216, %212 ], [ %65, %61 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  ret i32 %218
}

; Function Attrs: nounwind uwtable
define internal fastcc void @paint_brush_stroke_add_step(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, float noundef %3) unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca [3 x float], align 4
  %9 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %10 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #11
  %11 = tail call i32 @BKE_paintmode_get_active_from_context(ptr noundef %0) #11
  %12 = tail call ptr @BKE_paint_brush(ptr noundef %10) #11
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !72
  %15 = getelementptr inbounds %struct.PaintStroke, ptr %14, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #11
  %17 = getelementptr inbounds %struct.PaintStroke, ptr %14, i64 0, i32 11
  %18 = load float, ptr %2, align 4, !tbaa !60
  store float %18, ptr %17, align 4, !tbaa !60
  %19 = getelementptr inbounds float, ptr %2, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !60
  %21 = getelementptr inbounds %struct.PaintStroke, ptr %14, i64 0, i32 11, i64 1
  store float %20, ptr %21, align 4, !tbaa !60
  %22 = getelementptr inbounds %struct.PaintStroke, ptr %14, i64 0, i32 19
  store float %3, ptr %22, align 4, !tbaa !98
  %23 = getelementptr inbounds %struct.PaintStroke, ptr %14, i64 0, i32 20
  %24 = load i32, ptr %23, align 8, !tbaa !59
  %25 = icmp ne i32 %24, 1
  %26 = getelementptr inbounds %struct.Brush, ptr %12, i64 0, i32 16
  %27 = load i32, ptr %26, align 8, !tbaa !62
  %28 = and i32 %27, 1073741824
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %4
  %31 = getelementptr inbounds %struct.Brush, ptr %12, i64 0, i32 19
  %32 = load i32, ptr %31, align 4, !tbaa !124
  %33 = icmp ne i32 %32, 0
  br label %38

34:                                               ; preds = %4
  %35 = getelementptr inbounds %struct.Brush, ptr %12, i64 0, i32 18
  %36 = load float, ptr %35, align 8, !tbaa !125
  %37 = fcmp une float %36, 0.000000e+00
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi i1 [ %33, %30 ], [ %37, %34 ]
  %40 = add i32 %11, -5
  %41 = icmp ult i32 %40, -2
  %42 = or i1 %41, %25
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.Brush, ptr %12, i64 0, i32 36
  %45 = load i8, ptr %44, align 2, !tbaa !74
  %46 = icmp ne i8 %45, 3
  br label %47

47:                                               ; preds = %38, %43
  %48 = phi i1 [ true, %38 ], [ %46, %43 ]
  %49 = and i32 %27, 8388864
  %50 = icmp eq i32 %49, 0
  %51 = and i1 %50, %39
  %52 = select i1 %51, i1 %48, i1 false
  br i1 %52, label %53, label %73

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.PaintStroke, ptr %14, i64 0, i32 21
  %55 = load float, ptr %54, align 4, !tbaa !61
  %56 = and i32 %27, 16
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %57, float 1.000000e+00, float %3
  %59 = fmul float %58, %55
  call void @BKE_brush_jitter_pos(ptr noundef %9, ptr noundef %12, ptr noundef nonnull %2, ptr noundef nonnull %6) #11
  %60 = fcmp une float %59, 1.000000e+00
  br i1 %60, label %61, label %77

61:                                               ; preds = %53
  %62 = load float, ptr %6, align 4, !tbaa !60
  %63 = load float, ptr %2, align 4, !tbaa !60
  %64 = fsub float %62, %63
  %65 = getelementptr inbounds float, ptr %6, i64 1
  %66 = load float, ptr %65, align 4, !tbaa !60
  %67 = load float, ptr %19, align 4, !tbaa !60
  %68 = fsub float %66, %67
  %69 = fmul float %59, %64
  %70 = fmul float %59, %68
  %71 = fadd float %63, %69
  store float %71, ptr %6, align 4, !tbaa !60
  %72 = fadd float %67, %70
  store float %72, ptr %65, align 4, !tbaa !60
  br label %77

73:                                               ; preds = %47
  %74 = load float, ptr %2, align 4, !tbaa !60
  store float %74, ptr %6, align 4, !tbaa !60
  %75 = load float, ptr %19, align 4, !tbaa !60
  %76 = getelementptr inbounds float, ptr %6, i64 1
  store float %75, ptr %76, align 4, !tbaa !60
  br label %77

77:                                               ; preds = %53, %61, %73
  %78 = call ptr @CTX_data_scene(ptr noundef %0) #11
  %79 = load ptr, ptr %15, align 8, !tbaa !55
  %80 = getelementptr inbounds %struct.PaintStroke, ptr %14, i64 0, i32 16
  %81 = load i8, ptr %80, align 1, !tbaa !126
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %125

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.PaintStroke, ptr %14, i64 0, i32 17
  %85 = load float, ptr %6, align 4, !tbaa !60
  store float %85, ptr %84, align 4, !tbaa !60
  %86 = getelementptr inbounds float, ptr %6, i64 1
  %87 = load float, ptr %86, align 4, !tbaa !60
  %88 = getelementptr inbounds %struct.PaintStroke, ptr %14, i64 0, i32 17, i64 1
  store float %87, ptr %88, align 4, !tbaa !60
  %89 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %79, i64 0, i32 7
  store float %85, ptr %89, align 4, !tbaa !60
  %90 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %79, i64 0, i32 7, i64 1
  store float %87, ptr %90, align 4, !tbaa !60
  %91 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %79, i64 0, i32 17
  store float %85, ptr %91, align 4, !tbaa !60
  %92 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %79, i64 0, i32 17, i64 1
  store float %87, ptr %92, align 4, !tbaa !60
  %93 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %79, i64 0, i32 18
  store float %85, ptr %93, align 4, !tbaa !60
  %94 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %79, i64 0, i32 18, i64 1
  store float %87, ptr %94, align 4, !tbaa !60
  %95 = getelementptr inbounds %struct.PaintStroke, ptr %14, i64 0, i32 18
  store float %3, ptr %95, align 8, !tbaa !127
  %96 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %79, i64 0, i32 19
  store i32 0, ptr %96, align 4, !tbaa !128
  %97 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %79, i64 0, i32 20
  store ptr null, ptr %97, align 8, !tbaa !129
  %98 = getelementptr inbounds %struct.Brush, ptr %12, i64 0, i32 3, i32 5
  %99 = load ptr, ptr %98, align 8, !tbaa !130
  %100 = icmp eq ptr %99, null
  br i1 %100, label %124, label %101

101:                                              ; preds = %83
  %102 = getelementptr inbounds %struct.Tex, ptr %99, i64 0, i32 32
  %103 = load i16, ptr %102, align 8, !tbaa !131
  %104 = icmp eq i16 %103, 8
  br i1 %104, label %105, label %124

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.Tex, ptr %99, i64 0, i32 54
  %107 = load ptr, ptr %106, align 8, !tbaa !134
  %108 = icmp eq ptr %107, null
  br i1 %108, label %124, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.Tex, ptr %99, i64 0, i32 51
  %111 = call ptr @BKE_image_pool_acquire_ibuf(ptr noundef nonnull %107, ptr noundef nonnull %110, ptr noundef null) #11
  %112 = icmp eq ptr %111, null
  br i1 %112, label %120, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.ImBuf, ptr %111, i64 0, i32 9
  %115 = load ptr, ptr %114, align 8, !tbaa !135
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  store i32 1, ptr %96, align 4, !tbaa !128
  %118 = getelementptr inbounds %struct.ImBuf, ptr %111, i64 0, i32 34
  %119 = load ptr, ptr %118, align 8, !tbaa !138
  store ptr %119, ptr %97, align 8, !tbaa !129
  br label %120

120:                                              ; preds = %117, %113, %109
  %121 = load ptr, ptr %98, align 8, !tbaa !130
  %122 = getelementptr inbounds %struct.Tex, ptr %121, i64 0, i32 54
  %123 = load ptr, ptr %122, align 8, !tbaa !134
  call void @BKE_image_pool_release_ibuf(ptr noundef %123, ptr noundef %111, ptr noundef null) #11
  br label %124

124:                                              ; preds = %120, %105, %101, %83
  store i8 1, ptr %80, align 1, !tbaa !126
  br label %125

125:                                              ; preds = %124, %77
  %126 = load i32, ptr %26, align 8, !tbaa !62
  %127 = and i32 %126, 256
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %149

129:                                              ; preds = %125
  switch i32 %11, label %140 [
    i32 0, label %130
    i32 4, label %133
    i32 3, label %133
  ]

130:                                              ; preds = %129
  %131 = getelementptr inbounds %struct.Brush, ptr %12, i64 0, i32 34
  %132 = load i8, ptr %131, align 8, !tbaa !73
  switch i8 %132, label %140 [
    i8 5, label %149
    i8 12, label %149
    i8 14, label %149
    i8 13, label %149
  ]

133:                                              ; preds = %129, %129
  %134 = getelementptr inbounds %struct.Brush, ptr %12, i64 0, i32 36
  %135 = load i8, ptr %134, align 2, !tbaa !74
  %136 = icmp ne i8 %135, 4
  %137 = and i32 %126, 2097152
  %138 = icmp eq i32 %137, 0
  %139 = or i1 %138, %136
  br i1 %139, label %140, label %149

140:                                              ; preds = %133, %130, %129
  %141 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %79, i64 0, i32 17
  %142 = load float, ptr %6, align 4, !tbaa !60
  store float %142, ptr %141, align 4, !tbaa !60
  %143 = getelementptr inbounds float, ptr %6, i64 1
  %144 = load float, ptr %143, align 4, !tbaa !60
  %145 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %79, i64 0, i32 17, i64 1
  store float %144, ptr %145, align 4, !tbaa !60
  %146 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %79, i64 0, i32 18
  store float %142, ptr %146, align 4, !tbaa !60
  %147 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %79, i64 0, i32 18, i64 1
  store float %144, ptr %147, align 4, !tbaa !60
  %148 = getelementptr inbounds %struct.PaintStroke, ptr %14, i64 0, i32 18
  store float %3, ptr %148, align 8, !tbaa !127
  br label %149

149:                                              ; preds = %133, %130, %130, %130, %130, %125, %140
  %150 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %79, i64 0, i32 15
  store i32 1, ptr %150, align 4, !tbaa !69
  %151 = getelementptr inbounds %struct.PaintStroke, ptr %14, i64 0, i32 18
  %152 = load float, ptr %151, align 8, !tbaa !127
  %153 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %79, i64 0, i32 16
  store float %152, ptr %153, align 8, !tbaa !139
  %154 = call i32 @BKE_brush_size_get(ptr noundef %78, ptr noundef %12) #11
  %155 = sitofp i32 %154 to float
  %156 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %79, i64 0, i32 21
  store float %155, ptr %156, align 8, !tbaa !140
  %157 = call i32 @BKE_brush_use_size_pressure(ptr noundef %78, ptr noundef %12) #11
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %178, label %159

159:                                              ; preds = %149
  %160 = load i32, ptr %26, align 8, !tbaa !62
  %161 = and i32 %160, 256
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %178

163:                                              ; preds = %159
  switch i32 %11, label %174 [
    i32 0, label %164
    i32 4, label %167
    i32 3, label %167
  ]

164:                                              ; preds = %163
  %165 = getelementptr inbounds %struct.Brush, ptr %12, i64 0, i32 34
  %166 = load i8, ptr %165, align 8, !tbaa !73
  switch i8 %166, label %174 [
    i8 5, label %178
    i8 12, label %178
    i8 14, label %178
    i8 13, label %178
  ]

167:                                              ; preds = %163, %163
  %168 = getelementptr inbounds %struct.Brush, ptr %12, i64 0, i32 36
  %169 = load i8, ptr %168, align 2, !tbaa !74
  %170 = icmp ne i8 %169, 4
  %171 = and i32 %160, 2097152
  %172 = icmp eq i32 %171, 0
  %173 = or i1 %172, %170
  br i1 %173, label %174, label %178

174:                                              ; preds = %167, %164, %163
  %175 = load float, ptr %151, align 8, !tbaa !127
  %176 = load float, ptr %156, align 8, !tbaa !140
  %177 = fmul float %175, %176
  store float %177, ptr %156, align 8, !tbaa !140
  br label %178

178:                                              ; preds = %167, %164, %164, %164, %164, %159, %174, %149
  %179 = load i32, ptr %26, align 8, !tbaa !62
  %180 = and i32 %179, 256
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %227

182:                                              ; preds = %178
  %183 = icmp eq i32 %11, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %182
  %185 = getelementptr inbounds %struct.Brush, ptr %12, i64 0, i32 34
  %186 = load i8, ptr %185, align 8, !tbaa !73
  switch i8 %186, label %187 [
    i8 5, label %227
    i8 12, label %227
    i8 14, label %227
    i8 13, label %227
  ]

187:                                              ; preds = %184, %182
  %188 = getelementptr inbounds %struct.Brush, ptr %12, i64 0, i32 3, i32 20
  %189 = load i8, ptr %188, align 4, !tbaa !141
  switch i8 %189, label %202 [
    i8 0, label %190
    i8 3, label %190
    i8 4, label %190
  ]

190:                                              ; preds = %187, %187, %187
  %191 = and i32 %179, 128
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %202

193:                                              ; preds = %190
  %194 = and i32 %179, 33554432
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %199, label %196

196:                                              ; preds = %193
  %197 = call float @BLI_frand() #11
  %198 = fmul float %197, 0x401921FB60000000
  br label %199

199:                                              ; preds = %193, %196
  %200 = phi float [ %198, %196 ], [ 0.000000e+00, %193 ]
  %201 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %79, i64 0, i32 8
  store float %200, ptr %201, align 4, !tbaa !123
  br label %202

202:                                              ; preds = %199, %190, %187
  %203 = load i8, ptr %188, align 4, !tbaa !141
  %204 = icmp eq i8 %203, 4
  br i1 %204, label %205, label %206

205:                                              ; preds = %202
  call void @BKE_brush_randomize_texture_coordinates(ptr noundef %79, i8 noundef zeroext 0) #11
  br label %212

206:                                              ; preds = %202
  %207 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %79, i64 0, i32 17
  %208 = load float, ptr %6, align 4, !tbaa !60
  store float %208, ptr %207, align 4, !tbaa !60
  %209 = getelementptr inbounds float, ptr %6, i64 1
  %210 = load float, ptr %209, align 4, !tbaa !60
  %211 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %79, i64 0, i32 17, i64 1
  store float %210, ptr %211, align 4, !tbaa !60
  br label %212

212:                                              ; preds = %206, %205
  %213 = getelementptr inbounds %struct.Brush, ptr %12, i64 0, i32 4, i32 5
  %214 = load ptr, ptr %213, align 8, !tbaa !142
  %215 = icmp eq ptr %214, null
  br i1 %215, label %227, label %216

216:                                              ; preds = %212
  %217 = getelementptr inbounds %struct.Brush, ptr %12, i64 0, i32 4, i32 20
  %218 = load i8, ptr %217, align 4, !tbaa !143
  %219 = icmp eq i8 %218, 4
  br i1 %219, label %220, label %221

220:                                              ; preds = %216
  call void @BKE_brush_randomize_texture_coordinates(ptr noundef %79, i8 noundef zeroext 1) #11
  br label %227

221:                                              ; preds = %216
  %222 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %79, i64 0, i32 18
  %223 = load float, ptr %6, align 4, !tbaa !60
  store float %223, ptr %222, align 4, !tbaa !60
  %224 = getelementptr inbounds float, ptr %6, i64 1
  %225 = load float, ptr %224, align 4, !tbaa !60
  %226 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %79, i64 0, i32 18, i64 1
  store float %225, ptr %226, align 4, !tbaa !60
  br label %227

227:                                              ; preds = %178, %184, %184, %184, %184, %221, %220, %212
  %228 = load i32, ptr %26, align 8, !tbaa !62
  %229 = and i32 %228, 256
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %306, label %231

231:                                              ; preds = %227
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %232 = load float, ptr %6, align 4, !tbaa !60
  %233 = getelementptr inbounds %struct.PaintStroke, ptr %14, i64 0, i32 17
  %234 = load float, ptr %233, align 8, !tbaa !60
  %235 = fsub float %232, %234
  %236 = getelementptr inbounds float, ptr %6, i64 1
  %237 = load float, ptr %236, align 4, !tbaa !60
  %238 = getelementptr inbounds %struct.PaintStroke, ptr %14, i64 0, i32 17, i64 1
  %239 = load float, ptr %238, align 4, !tbaa !60
  %240 = fsub float %237, %239
  %241 = fmul float %240, %240
  %242 = call float @llvm.fmuladd.f32(float %235, float %235, float %241)
  %243 = call float @sqrtf(float noundef %242) #11
  store float %243, ptr %156, align 8, !tbaa !140
  %244 = fptosi float %243 to i32
  %245 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %79, i64 0, i32 10
  store i32 %244, ptr %245, align 4, !tbaa !144
  %246 = call float @atan2f(float noundef %235, float noundef %240) #11
  %247 = fpext float %246 to double
  %248 = fadd double %247, 0x400921FB54442D18
  %249 = fptrunc double %248 to float
  %250 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %79, i64 0, i32 8
  store float %249, ptr %250, align 4, !tbaa !123
  %251 = load i32, ptr %26, align 8, !tbaa !62
  %252 = and i32 %251, 4194304
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %272, label %254

254:                                              ; preds = %231
  %255 = load float, ptr %233, align 8, !tbaa !60
  %256 = call float @llvm.fmuladd.f32(float %235, float 5.000000e-01, float %255)
  store float %256, ptr %5, align 4, !tbaa !60
  %257 = load float, ptr %238, align 4, !tbaa !60
  %258 = call float @llvm.fmuladd.f32(float %240, float 5.000000e-01, float %257)
  %259 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  store float %258, ptr %259, align 4, !tbaa !60
  %260 = getelementptr inbounds %struct.PaintStroke, ptr %14, i64 0, i32 23
  %261 = load ptr, ptr %260, align 8, !tbaa !49
  %262 = icmp eq ptr %261, null
  br i1 %262, label %272, label %263

263:                                              ; preds = %254
  %264 = call zeroext i8 %261(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %5) #11
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %266, label %272

266:                                              ; preds = %263
  %267 = icmp eq i32 %11, 0
  br i1 %267, label %268, label %272

268:                                              ; preds = %266
  %269 = getelementptr inbounds %struct.Brush, ptr %12, i64 0, i32 34
  %270 = load i8, ptr %269, align 8, !tbaa !73
  switch i8 %270, label %271 [
    i8 5, label %272
    i8 14, label %272
    i8 13, label %272
    i8 12, label %272
  ]

271:                                              ; preds = %268
  br label %272

272:                                              ; preds = %266, %268, %268, %268, %268, %271, %263, %254, %231
  %273 = phi i1 [ true, %231 ], [ false, %263 ], [ false, %254 ], [ true, %271 ], [ false, %268 ], [ false, %268 ], [ false, %268 ], [ false, %268 ], [ true, %266 ]
  %274 = phi i8 [ 0, %231 ], [ 1, %263 ], [ 0, %254 ], [ 0, %271 ], [ 0, %268 ], [ 0, %268 ], [ 0, %268 ], [ 0, %268 ], [ 0, %266 ]
  %275 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %79, i64 0, i32 14
  br i1 %273, label %291, label %276

276:                                              ; preds = %272
  %277 = load float, ptr %5, align 4, !tbaa !60
  store float %277, ptr %275, align 4, !tbaa !60
  %278 = getelementptr inbounds float, ptr %5, i64 1
  %279 = load float, ptr %278, align 4, !tbaa !60
  %280 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %79, i64 0, i32 14, i64 1
  store float %279, ptr %280, align 4, !tbaa !60
  %281 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %79, i64 0, i32 17
  store float %277, ptr %281, align 4, !tbaa !60
  %282 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %79, i64 0, i32 17, i64 1
  store float %279, ptr %282, align 4, !tbaa !60
  %283 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %79, i64 0, i32 18
  store float %277, ptr %283, align 4, !tbaa !60
  %284 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %79, i64 0, i32 18, i64 1
  store float %279, ptr %284, align 4, !tbaa !60
  store float %277, ptr %6, align 4, !tbaa !60
  store float %279, ptr %236, align 4, !tbaa !60
  %285 = load i32, ptr %245, align 4, !tbaa !144
  %286 = sitofp i32 %285 to float
  %287 = fmul float %286, 5.000000e-01
  %288 = fptosi float %287 to i32
  store i32 %288, ptr %245, align 4, !tbaa !144
  %289 = load float, ptr %156, align 8, !tbaa !140
  %290 = fmul float %289, 5.000000e-01
  store float %290, ptr %156, align 8, !tbaa !140
  br label %298

291:                                              ; preds = %272
  %292 = load float, ptr %233, align 4, !tbaa !60
  store float %292, ptr %275, align 4, !tbaa !60
  %293 = load float, ptr %238, align 4, !tbaa !60
  %294 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %79, i64 0, i32 14, i64 1
  store float %293, ptr %294, align 4, !tbaa !60
  %295 = load float, ptr %233, align 4, !tbaa !60
  store float %295, ptr %6, align 4, !tbaa !60
  %296 = load float, ptr %238, align 4, !tbaa !60
  store float %296, ptr %236, align 4, !tbaa !60
  %297 = load float, ptr %156, align 8, !tbaa !140
  br label %298

298:                                              ; preds = %291, %276
  %299 = phi float [ %297, %291 ], [ %290, %276 ]
  %300 = getelementptr inbounds %struct.PaintStroke, ptr %14, i64 0, i32 12
  store float %299, ptr %300, align 8, !tbaa !112
  %301 = getelementptr inbounds %struct.PaintStroke, ptr %14, i64 0, i32 21
  %302 = load float, ptr %301, align 4, !tbaa !61
  %303 = load float, ptr %156, align 8, !tbaa !140
  %304 = fdiv float %303, %302
  store float %304, ptr %156, align 8, !tbaa !140
  %305 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %79, i64 0, i32 9
  store i32 1, ptr %305, align 8, !tbaa !122
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %318

306:                                              ; preds = %227
  %307 = and i32 %228, 128
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %318, label %309

309:                                              ; preds = %306
  %310 = load i8, ptr %80, align 1, !tbaa !126
  %311 = icmp eq i8 %310, 0
  br i1 %311, label %312, label %317

312:                                              ; preds = %309
  %313 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %79, i64 0, i32 7
  %314 = load float, ptr %2, align 4, !tbaa !60
  store float %314, ptr %313, align 4, !tbaa !60
  %315 = load float, ptr %19, align 4, !tbaa !60
  %316 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %79, i64 0, i32 7, i64 1
  store float %315, ptr %316, align 4, !tbaa !60
  br label %318

317:                                              ; preds = %309
  call void @paint_calculate_rake_rotation(ptr noundef %79, ptr noundef nonnull %2) #11
  br label %318

318:                                              ; preds = %317, %312, %306, %298
  %319 = phi i8 [ %274, %298 ], [ 0, %317 ], [ 0, %312 ], [ 0, %306 ]
  %320 = icmp eq i8 %319, 0
  br i1 %320, label %321, label %344

321:                                              ; preds = %318
  %322 = getelementptr inbounds %struct.PaintStroke, ptr %14, i64 0, i32 23
  %323 = load ptr, ptr %322, align 8, !tbaa !49
  %324 = icmp eq ptr %323, null
  br i1 %324, label %335, label %325

325:                                              ; preds = %321
  %326 = call zeroext i8 %323(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %6) #11
  %327 = icmp eq i8 %326, 0
  br i1 %327, label %328, label %344

328:                                              ; preds = %325
  %329 = icmp eq i32 %11, 0
  br i1 %329, label %330, label %344

330:                                              ; preds = %328
  %331 = getelementptr inbounds %struct.Brush, ptr %12, i64 0, i32 34
  %332 = load i8, ptr %331, align 8, !tbaa !73
  %333 = add i8 %332, -5
  %334 = icmp ult i8 %333, 10
  br i1 %334, label %338, label %344

335:                                              ; preds = %321
  store float 0.000000e+00, ptr %8, align 4, !tbaa !60
  %336 = getelementptr inbounds float, ptr %8, i64 1
  store float 0.000000e+00, ptr %336, align 4, !tbaa !60
  %337 = getelementptr inbounds float, ptr %8, i64 2
  store float 0.000000e+00, ptr %337, align 4, !tbaa !60
  br label %344

338:                                              ; preds = %330
  %339 = zext nneg i8 %333 to i16
  %340 = lshr i16 897, %339
  %341 = and i16 %340, 1
  %342 = icmp eq i16 %341, 0
  %343 = select i1 %342, i8 %319, i8 1
  br label %344

344:                                              ; preds = %338, %330, %328, %318, %325, %335
  %345 = phi i8 [ %319, %318 ], [ 1, %335 ], [ 1, %325 ], [ %319, %328 ], [ %319, %330 ], [ %343, %338 ]
  %346 = icmp eq i8 %345, 0
  br i1 %346, label %357, label %347

347:                                              ; preds = %344
  %348 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %349 = load ptr, ptr %348, align 8, !tbaa !56
  call void @RNA_collection_add(ptr noundef %349, ptr noundef nonnull @.str.6, ptr noundef nonnull %7) #11
  %350 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %16, i64 0, i32 21
  %351 = load float, ptr %350, align 8, !tbaa !140
  call void @RNA_float_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.7, float noundef %351) #11
  call void @RNA_float_set_array(ptr noundef nonnull %7, ptr noundef nonnull @.str.8, ptr noundef nonnull %8) #11
  call void @RNA_float_set_array(ptr noundef nonnull %7, ptr noundef nonnull @.str.9, ptr noundef nonnull %6) #11
  %352 = getelementptr inbounds %struct.PaintStroke, ptr %14, i64 0, i32 22
  %353 = load i32, ptr %352, align 8, !tbaa !145
  call void @RNA_boolean_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.10, i32 noundef %353) #11
  call void @RNA_float_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.11, float noundef %3) #11
  %354 = getelementptr inbounds %struct.PaintStroke, ptr %14, i64 0, i32 25
  %355 = load ptr, ptr %354, align 8, !tbaa !51
  call void %355(ptr noundef %0, ptr noundef %14, ptr noundef nonnull %7) #11
  %356 = load ptr, ptr %348, align 8, !tbaa !56
  call void @RNA_collection_clear(ptr noundef %356, ptr noundef nonnull @.str.6) #11
  br label %357

357:                                              ; preds = %344, %347
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  ret void
}

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

declare void @WM_paint_cursor_tag_redraw(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @paint_stroke_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.CollectionPropertyIterator, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  %7 = getelementptr inbounds %struct.PaintStroke, ptr %6, i64 0, i32 13
  %8 = load i8, ptr %7, align 4, !tbaa !97
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.PaintStroke, ptr %6, i64 0, i32 24
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  %13 = tail call zeroext i8 %12(ptr noundef %0, ptr noundef %1, ptr noundef null) #11
  store i8 1, ptr %7, align 4, !tbaa !97
  br label %14

14:                                               ; preds = %10, %2
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %3) #11
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !56
  call void @RNA_collection_begin(ptr noundef %16, ptr noundef nonnull @.str.6, ptr noundef nonnull %3) #11
  %17 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %3, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !146
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %3, i64 0, i32 6
  %22 = getelementptr inbounds %struct.PaintStroke, ptr %6, i64 0, i32 25
  br label %23

23:                                               ; preds = %20, %23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %21, i64 24, i1 false), !tbaa.struct !150
  %24 = load ptr, ptr %22, align 8, !tbaa !51
  call void %24(ptr noundef %0, ptr noundef %6, ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  call void @RNA_property_collection_next(ptr noundef nonnull %3) #11
  %25 = load i32, ptr %17, align 8, !tbaa !146
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %23, !llvm.loop !151

27:                                               ; preds = %23, %14
  call void @RNA_property_collection_end(ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %3) #11
  call fastcc void @stroke_done(ptr noundef %0, ptr noundef %1)
  ret i32 4
}

declare void @RNA_collection_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare void @RNA_property_collection_next(ptr noundef) local_unnamed_addr #2

declare void @RNA_property_collection_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local nonnull ptr @paint_stroke_view_context(ptr noundef readnone %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.PaintStroke, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @paint_stroke_mode_data(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !152
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @paint_stroke_flipped(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.PaintStroke, ptr %0, i64 0, i32 22
  %3 = load i32, ptr %2, align 8, !tbaa !145
  %4 = trunc i32 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @paint_stroke_distance_get(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.PaintStroke, ptr %0, i64 0, i32 12
  %3 = load float, ptr %2, align 8, !tbaa !112
  ret float %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @paint_stroke_set_mode_data(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #6 {
  store ptr %1, ptr %0, align 8, !tbaa !152
  ret void
}

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare void @BKE_curve_forward_diff_bezier(float noundef, float noundef, float noundef, float noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @paint_line_strokes_spacing(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, float noundef %3, ptr nocapture noundef %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6) unnamed_addr #0 {
  %8 = alloca [2 x float], align 4
  %9 = getelementptr inbounds %struct.PaintStroke, ptr %2, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  %11 = load float, ptr %6, align 4, !tbaa !60
  %12 = load float, ptr %5, align 4, !tbaa !60
  %13 = fsub float %11, %12
  %14 = getelementptr inbounds float, ptr %6, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !60
  %16 = getelementptr inbounds float, ptr %5, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !60
  %18 = fsub float %15, %17
  %19 = getelementptr inbounds %struct.PaintStroke, ptr %2, i64 0, i32 11
  store float %12, ptr %19, align 4, !tbaa !60
  %20 = load float, ptr %16, align 4, !tbaa !60
  %21 = getelementptr inbounds %struct.PaintStroke, ptr %2, i64 0, i32 11, i64 1
  store float %20, ptr %21, align 4, !tbaa !60
  %22 = fmul float %18, %18
  %23 = tail call float @llvm.fmuladd.f32(float %13, float %13, float %22)
  %24 = fcmp ogt float %23, 0x38AA95A5C0000000
  br i1 %24, label %25, label %30

25:                                               ; preds = %7
  %26 = tail call float @sqrtf(float noundef %23) #11
  %27 = fdiv float 1.000000e+00, %26
  %28 = fmul float %13, %27
  %29 = fmul float %18, %27
  br label %30

30:                                               ; preds = %7, %25
  %31 = phi float [ %28, %25 ], [ 0.000000e+00, %7 ]
  %32 = phi float [ %29, %25 ], [ 0.000000e+00, %7 ]
  %33 = phi float [ %26, %25 ], [ 0.000000e+00, %7 ]
  %34 = fcmp oeq float %33, 0.000000e+00
  br i1 %34, label %108, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds [2 x float], ptr %8, i64 0, i64 1
  %37 = getelementptr inbounds %struct.PaintStroke, ptr %2, i64 0, i32 5
  %38 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %10, i64 0, i32 13
  %39 = getelementptr inbounds %struct.PaintStroke, ptr %2, i64 0, i32 21
  %40 = getelementptr inbounds %struct.PaintStroke, ptr %2, i64 0, i32 12
  br label %41

41:                                               ; preds = %35, %104
  %42 = phi float [ %105, %104 ], [ %33, %35 ]
  %43 = fcmp ogt float %42, 0.000000e+00
  br i1 %43, label %44, label %106

44:                                               ; preds = %41
  %45 = load float, ptr %4, align 4, !tbaa !60
  %46 = fadd float %42, %45
  store float 0.000000e+00, ptr %4, align 4, !tbaa !60
  %47 = fcmp oge float %46, %3
  br i1 %47, label %48, label %104

48:                                               ; preds = %44
  %49 = fsub float %3, %45
  %50 = load float, ptr %19, align 8, !tbaa !60
  %51 = call float @llvm.fmuladd.f32(float %31, float %49, float %50)
  store float %51, ptr %8, align 4, !tbaa !60
  %52 = load float, ptr %21, align 4, !tbaa !60
  %53 = call float @llvm.fmuladd.f32(float %32, float %49, float %52)
  store float %53, ptr %36, align 4, !tbaa !60
  %54 = load ptr, ptr %37, align 8, !tbaa !38
  %55 = getelementptr inbounds %struct.Brush, ptr %54, i64 0, i32 21
  %56 = load i32, ptr %55, align 4, !tbaa !89
  %57 = getelementptr inbounds %struct.Brush, ptr %54, i64 0, i32 16
  %58 = load i32, ptr %57, align 8, !tbaa !62
  %59 = and i32 %58, 262144
  %60 = icmp ne i32 %59, 0
  %61 = icmp slt i32 %56, 100
  %62 = select i1 %60, i1 %61, i1 false
  br i1 %62, label %63, label %97

63:                                               ; preds = %48
  %64 = sitofp i32 %56 to float
  %65 = fdiv float 1.000000e+02, %64
  %66 = fptosi float %65 to i32
  %67 = fdiv float %64, 5.000000e+01
  %68 = icmp sgt i32 %66, 0
  br label %69

69:                                               ; preds = %89, %63
  %70 = phi i32 [ 0, %63 ], [ %93, %89 ]
  %71 = phi float [ 0.000000e+00, %63 ], [ %92, %89 ]
  %72 = sitofp i32 %70 to float
  %73 = fmul float %72, 0x3FB99999A0000000
  %74 = fadd float %73, -1.000000e+00
  br i1 %68, label %75, label %89

75:                                               ; preds = %69, %85
  %76 = phi i32 [ %87, %85 ], [ 0, %69 ]
  %77 = phi float [ %86, %85 ], [ 0.000000e+00, %69 ]
  %78 = sitofp i32 %76 to float
  %79 = call float @llvm.fmuladd.f32(float %78, float %67, float %74)
  %80 = call float @llvm.fabs.f32(float %79)
  %81 = fcmp olt float %80, 1.000000e+00
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = call float @BKE_brush_curve_strength(ptr noundef %54, float noundef %80, float noundef 1.000000e+00) #11
  %84 = fadd float %77, %83
  br label %85

85:                                               ; preds = %82, %75
  %86 = phi float [ %84, %82 ], [ %77, %75 ]
  %87 = add nuw nsw i32 %76, 1
  %88 = icmp eq i32 %87, %66
  br i1 %88, label %89, label %75, !llvm.loop !93

89:                                               ; preds = %85, %69
  %90 = phi float [ 0.000000e+00, %69 ], [ %86, %85 ]
  %91 = fcmp ogt float %90, %71
  %92 = select i1 %91, float %90, float %71
  %93 = add nuw nsw i32 %70, 1
  %94 = icmp eq i32 %93, 10
  br i1 %94, label %95, label %69, !llvm.loop !94

95:                                               ; preds = %89
  %96 = fdiv float 1.000000e+00, %92
  br label %97

97:                                               ; preds = %48, %95
  %98 = phi float [ %96, %95 ], [ 1.000000e+00, %48 ]
  store float %98, ptr %38, align 8, !tbaa !67
  %99 = load float, ptr %39, align 4, !tbaa !61
  %100 = fdiv float %3, %99
  %101 = load float, ptr %40, align 8, !tbaa !112
  %102 = fadd float %101, %100
  store float %102, ptr %40, align 8, !tbaa !112
  call fastcc void @paint_brush_stroke_add_step(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8, float noundef 1.000000e+00)
  %103 = fsub float %46, %3
  br label %104

104:                                              ; preds = %44, %97
  %105 = phi float [ %103, %97 ], [ %46, %44 ]
  br i1 %47, label %41, label %106

106:                                              ; preds = %104, %41
  %107 = phi float [ %105, %104 ], [ %42, %41 ]
  store float %107, ptr %4, align 4, !tbaa !60
  br label %108

108:                                              ; preds = %30, %106
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  ret void
}

declare i32 @BKE_brush_size_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

declare void @glEnable(i32 noundef) local_unnamed_addr #2

declare void @glColor4ubv(ptr noundef) local_unnamed_addr #2

declare void @sdrawline(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glDisable(i32 noundef) local_unnamed_addr #2

declare void @glLineStipple(i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @glLineWidth(float noundef) local_unnamed_addr #2

declare void @WM_event_remove_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_paint_cursor_end(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

declare i32 @BKE_brush_use_size_pressure(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_brush_jitter_pos(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_collection_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @RNA_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_collection_clear(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_image_pool_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_image_pool_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @BLI_frand() local_unnamed_addr #2

declare void @BKE_brush_randomize_texture_coordinates(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

declare float @BKE_brush_curve_strength(ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }

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
!38 = !{!39, !35, i64 360}
!39 = !{!"PaintStroke", !35, i64 0, !35, i64 8, !35, i64 16, !40, i64 24, !41, i64 88, !35, i64 360, !35, i64 368, !42, i64 376, !36, i64 392, !43, i64 1160, !43, i64 1164, !36, i64 1168, !44, i64 1176, !36, i64 1180, !43, i64 1184, !36, i64 1188, !36, i64 1189, !36, i64 1192, !44, i64 1200, !44, i64 1204, !43, i64 1208, !44, i64 1212, !43, i64 1216, !35, i64 1224, !35, i64 1232, !35, i64 1240, !35, i64 1248, !35, i64 1256}
!40 = !{!"ViewContext", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !36, i64 56}
!41 = !{!"bglMats", !36, i64 0, !36, i64 128, !36, i64 256}
!42 = !{!"ListBase", !35, i64 0, !35, i64 8}
!43 = !{!"int", !36, i64 0}
!44 = !{!"float", !36, i64 0}
!45 = !{!39, !35, i64 56}
!46 = !{!39, !35, i64 48}
!47 = !{!39, !35, i64 64}
!48 = !{!39, !35, i64 32}
!49 = !{!39, !35, i64 1224}
!50 = !{!39, !35, i64 1232}
!51 = !{!39, !35, i64 1240}
!52 = !{!39, !35, i64 1248}
!53 = !{!39, !35, i64 1256}
!54 = !{!39, !43, i64 1184}
!55 = !{!39, !35, i64 368}
!56 = !{!57, !35, i64 112}
!57 = !{!"wmOperator", !35, i64 0, !35, i64 8, !36, i64 16, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !42, i64 128, !35, i64 144, !35, i64 152, !58, i64 160, !36, i64 162}
!58 = !{!"short", !36, i64 0}
!59 = !{!39, !43, i64 1208}
!60 = !{!44, !44, i64 0}
!61 = !{!39, !44, i64 1212}
!62 = !{!63, !43, i64 1856}
!63 = !{!"Brush", !64, i64 0, !65, i64 120, !35, i64 144, !66, i64 152, !66, i64 464, !35, i64 776, !35, i64 784, !35, i64 792, !35, i64 800, !35, i64 808, !36, i64 816, !44, i64 1840, !58, i64 1844, !58, i64 1846, !44, i64 1848, !43, i64 1852, !43, i64 1856, !43, i64 1860, !44, i64 1864, !43, i64 1868, !43, i64 1872, !43, i64 1876, !43, i64 1880, !44, i64 1884, !44, i64 1888, !36, i64 1892, !44, i64 1904, !36, i64 1908, !43, i64 1920, !44, i64 1924, !44, i64 1928, !43, i64 1932, !43, i64 1936, !43, i64 1940, !36, i64 1944, !36, i64 1945, !36, i64 1946, !36, i64 1947, !44, i64 1948, !44, i64 1952, !44, i64 1956, !44, i64 1960, !44, i64 1964, !43, i64 1968, !43, i64 1972, !43, i64 1976, !44, i64 1980, !44, i64 1984, !43, i64 1988, !43, i64 1992, !44, i64 1996, !36, i64 2000, !36, i64 2012, !36, i64 2024, !36, i64 2032, !36, i64 2040, !36, i64 2048}
!64 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !58, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !35, i64 112}
!65 = !{!"BrushClone", !35, i64 0, !36, i64 8, !44, i64 16, !44, i64 20}
!66 = !{!"MTex", !58, i64 0, !58, i64 2, !58, i64 4, !58, i64 6, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 88, !36, i64 89, !36, i64 90, !36, i64 91, !36, i64 92, !36, i64 104, !44, i64 116, !58, i64 120, !58, i64 122, !58, i64 124, !58, i64 126, !58, i64 128, !58, i64 130, !36, i64 132, !36, i64 133, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !44, i64 192, !44, i64 196, !44, i64 200, !44, i64 204, !44, i64 208, !44, i64 212, !44, i64 216, !44, i64 220, !44, i64 224, !44, i64 228, !44, i64 232, !44, i64 236, !44, i64 240, !44, i64 244, !44, i64 248, !44, i64 252, !44, i64 256, !44, i64 260, !44, i64 264, !44, i64 268, !44, i64 272, !44, i64 276, !44, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !44, i64 308}
!67 = !{!68, !44, i64 72}
!68 = !{!"UnifiedPaintSettings", !43, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !36, i64 16, !36, i64 28, !43, i64 40, !36, i64 44, !44, i64 52, !43, i64 56, !43, i64 60, !36, i64 64, !36, i64 65, !44, i64 72, !36, i64 76, !43, i64 84, !44, i64 88, !36, i64 92, !36, i64 100, !43, i64 108, !35, i64 112, !44, i64 120, !43, i64 124}
!69 = !{!68, !43, i64 84}
!70 = !{!63, !35, i64 144}
!71 = !{!63, !43, i64 1872}
!72 = !{!57, !35, i64 96}
!73 = !{!63, !36, i64 1944}
!74 = !{!63, !36, i64 1946}
!75 = !{!43, !43, i64 0}
!76 = !{!39, !43, i64 1164}
!77 = !{!78, !43, i64 32}
!78 = !{!"Paint", !35, i64 0, !35, i64 8, !35, i64 16, !36, i64 24, !43, i64 28, !43, i64 32, !43, i64 36}
!79 = !{!80, !44, i64 8}
!80 = !{!"PaintSample", !36, i64 0, !44, i64 8}
!81 = !{!39, !43, i64 1160}
!82 = distinct !{!82, !83, !84}
!83 = !{!"llvm.loop.mustprogress"}
!84 = !{!"llvm.loop.unroll.disable"}
!85 = !{!86, !58, i64 16}
!86 = !{!"wmEvent", !35, i64 0, !35, i64 8, !58, i64 16, !58, i64 18, !43, i64 20, !43, i64 24, !36, i64 28, !36, i64 36, !36, i64 42, !36, i64 43, !58, i64 44, !58, i64 46, !43, i64 48, !43, i64 52, !87, i64 56, !43, i64 64, !43, i64 68, !58, i64 72, !58, i64 74, !58, i64 76, !58, i64 78, !58, i64 80, !58, i64 82, !35, i64 88, !35, i64 96, !58, i64 104, !58, i64 106, !43, i64 108, !35, i64 112}
!87 = !{!"double", !36, i64 0}
!88 = !{!39, !36, i64 1188}
!89 = !{!63, !43, i64 1876}
!90 = !{!63, !35, i64 808}
!91 = !{!92, !35, i64 120}
!92 = !{!"PaintCurve", !64, i64 0, !35, i64 120, !43, i64 128, !43, i64 132}
!93 = distinct !{!93, !83, !84}
!94 = distinct !{!94, !83, !84}
!95 = !{!92, !43, i64 128}
!96 = distinct !{!96, !83, !84}
!97 = !{!39, !36, i64 1180}
!98 = !{!39, !44, i64 1204}
!99 = distinct !{!99, !83, !84}
!100 = distinct !{!100, !83, !84}
!101 = !{!39, !35, i64 8}
!102 = !{!63, !44, i64 1888}
!103 = !{!39, !35, i64 16}
!104 = !{!86, !58, i64 18}
!105 = !{!57, !35, i64 88}
!106 = !{!107, !35, i64 56}
!107 = !{!"wmOperatorType", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !42, i64 112, !35, i64 128, !35, i64 136, !35, i64 144, !108, i64 152, !58, i64 184}
!108 = !{!"ExtensionRNA", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!109 = !{!86, !35, i64 112}
!110 = !{!63, !43, i64 1880}
!111 = !{!63, !44, i64 1884}
!112 = !{!39, !44, i64 1176}
!113 = !{!78, !43, i64 28}
!114 = !{!115, !36, i64 72}
!115 = !{!"ScrArea", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !116, i64 56, !36, i64 72, !36, i64 73, !58, i64 74, !58, i64 76, !58, i64 78, !58, i64 80, !58, i64 82, !58, i64 84, !36, i64 86, !36, i64 87, !35, i64 88, !42, i64 96, !42, i64 112, !42, i64 128, !42, i64 144}
!116 = !{!"rcti", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!117 = !{!118, !58, i64 214}
!118 = !{!"ARegion", !35, i64 0, !35, i64 8, !119, i64 16, !116, i64 176, !116, i64 192, !58, i64 208, !58, i64 210, !58, i64 212, !58, i64 214, !58, i64 216, !58, i64 218, !44, i64 220, !58, i64 224, !58, i64 226, !58, i64 228, !58, i64 230, !58, i64 232, !58, i64 234, !58, i64 236, !58, i64 238, !35, i64 240, !42, i64 248, !42, i64 264, !42, i64 280, !42, i64 296, !42, i64 312, !42, i64 328, !42, i64 344, !35, i64 360, !35, i64 368, !35, i64 376}
!119 = !{!"View2D", !120, i64 0, !120, i64 16, !116, i64 32, !116, i64 48, !116, i64 64, !36, i64 80, !36, i64 88, !44, i64 96, !44, i64 100, !58, i64 104, !58, i64 106, !58, i64 108, !58, i64 110, !58, i64 112, !58, i64 114, !58, i64 116, !58, i64 118, !58, i64 120, !58, i64 122, !58, i64 124, !58, i64 126, !35, i64 128, !43, i64 136, !43, i64 140, !35, i64 144, !35, i64 152}
!120 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!121 = !{!36, !36, i64 0}
!122 = !{!68, !43, i64 56}
!123 = !{!68, !44, i64 52}
!124 = !{!63, !43, i64 1868}
!125 = !{!63, !44, i64 1864}
!126 = !{!39, !36, i64 1189}
!127 = !{!39, !44, i64 1200}
!128 = !{!68, !43, i64 108}
!129 = !{!68, !35, i64 112}
!130 = !{!63, !35, i64 168}
!131 = !{!132, !58, i64 232}
!132 = !{!"Tex", !64, i64 0, !35, i64 120, !44, i64 128, !44, i64 132, !44, i64 136, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !44, i64 192, !44, i64 196, !44, i64 200, !44, i64 204, !44, i64 208, !44, i64 212, !58, i64 216, !58, i64 218, !58, i64 220, !58, i64 222, !58, i64 224, !58, i64 226, !58, i64 228, !58, i64 230, !58, i64 232, !58, i64 234, !44, i64 236, !44, i64 240, !44, i64 244, !44, i64 248, !43, i64 252, !43, i64 256, !58, i64 260, !58, i64 262, !58, i64 264, !58, i64 266, !43, i64 268, !43, i64 272, !43, i64 276, !43, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !133, i64 296, !35, i64 336, !35, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !36, i64 408, !36, i64 409}
!133 = !{!"ImageUser", !35, i64 0, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !58, i64 28, !58, i64 30, !58, i64 32, !58, i64 34, !43, i64 36}
!134 = !{!132, !35, i64 352}
!135 = !{!136, !35, i64 48}
!136 = !{!"ImBuf", !35, i64 0, !35, i64 8, !43, i64 16, !43, i64 20, !36, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !35, i64 40, !35, i64 48, !36, i64 56, !43, i64 72, !43, i64 76, !43, i64 80, !43, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !44, i64 112, !36, i64 120, !43, i64 280, !43, i64 284, !43, i64 288, !43, i64 292, !35, i64 296, !35, i64 304, !43, i64 312, !36, i64 316, !36, i64 1340, !35, i64 2368, !43, i64 2376, !35, i64 2384, !43, i64 2392, !43, i64 2396, !35, i64 2400, !35, i64 2408, !35, i64 2416, !35, i64 2424, !43, i64 2432, !116, i64 2436, !137, i64 2456}
!137 = !{!"DDSData", !43, i64 0, !43, i64 4, !35, i64 8, !43, i64 16}
!138 = !{!136, !35, i64 2400}
!139 = !{!68, !44, i64 88}
!140 = !{!68, !44, i64 120}
!141 = !{!63, !36, i64 284}
!142 = !{!63, !35, i64 480}
!143 = !{!63, !36, i64 596}
!144 = !{!68, !43, i64 60}
!145 = !{!39, !43, i64 1216}
!146 = !{!147, !43, i64 128}
!147 = !{!"CollectionPropertyIterator", !148, i64 0, !148, i64 24, !35, i64 48, !36, i64 56, !43, i64 96, !43, i64 100, !148, i64 104, !43, i64 128}
!148 = !{!"PointerRNA", !149, i64 0, !35, i64 8, !35, i64 16}
!149 = !{!"", !35, i64 0}
!150 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 8, !34}
!151 = distinct !{!151, !83, !84}
!152 = !{!39, !35, i64 0}
